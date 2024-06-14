module Interpreter where

import Lexer
import Debug.Trace

type Env = [(String, Expr)]

subst :: String -> Expr -> Expr -> Expr 
subst x n b@(Var v) = if v == x then 
                        n 
                      else 
                        b 
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Let v f b) = Let v (subst x n f) (subst x n b)
subst x n (LetRec v f b) = LetRec v (subst x n f) (subst x n b)
subst x n (Times e1 e2) = Times (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (If e e1 e2) = If (subst x n e) (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Eq e1 e2) = Eq (subst x n e1) (subst x n e2)
subst x n (Gt e1 e2) = Gt (subst x n e1) (subst x n e2)
subst x n (Mod e1 e2) = Mod (subst x n e1) (subst x n e2)
subst x n e = e 

isvalue :: Expr -> Bool 
isvalue BTrue = True
isvalue BFalse = True
isvalue (Num _) = True
isvalue (Lam _ _ _) = True 
isvalue _ = False 

step :: (Env, Expr) -> Maybe (Env, Expr) 
step (env, (Add (Num n1) (Num n2))) = Just (env, (Num (n1 + n2)))
step (env, (Add (Num n1) e2)) = case step (env, e2) of 
                           Just (env, e2') -> Just (env, (Add (Num n1) e2'))
                           _        -> Nothing
step (env, (Add e1 e2)) = case step (env, e1) of 
                     Just (env, e1') -> Just (env, (Add e1' e2))
                     _        -> Nothing
step (env, (Times (Num n1) (Num n2))) = Just (env, (Num (n1 * n2)))
step (env, (Times (Num n1) e2)) = case step (env, e2) of 
                           Just (env, e2') -> Just (env, (Times (Num n1) e2'))
                           _        -> Nothing
step (env, (Times e1 e2)) = case step (env, e1) of 
                     Just (env, e1') -> Just (env, (Times e1' e2))
                     _        -> Nothing
step (env, (And BTrue e2)) = Just (env, e2) 
step (env, (And BFalse _)) = Just (env, BFalse) 
step (env, (And e1 e2)) = case step (env, e1) of 
                     Just (env, e1') -> Just (env, (And e1' e2))
                     _        -> Nothing
step (env, (If BTrue e1 _)) = Just (env, e1) 
step (env, (If BFalse _ e2)) = Just (env, e2) 
step (env, (If e e1 e2)) = case step (env, e) of 
                      Just (env, e') -> Just (env, (If e' e1 e2))
                      _       -> Nothing
step (env, (App e1@(Lam x t b) e2)) | isvalue e2 = Just (env, (subst x e2 b))
                                    | otherwise = case step (env, e2) of 
                                             Just (env, e2') -> Just (env, (App e1 e2'))
                                             _        -> Nothing 
step (env, (App e1 e2)) = case step (env, e1) of 
                     Just (env, e1') -> Just (env, (App e1' e2))
                     _        -> Nothing
step (env, (Let v f b)) = step (env, (subst v f b))
step (env, (LetRec v f b)) = step ((v, f):env, (subst v f b))
step (env, (Paren e)) = Just (env, e)
step (env, (Eq e1 e2)) | isvalue e1 && isvalue e2 = if (e1 == e2) then
                                                      Just (env, BTrue) 
                                                    else 
                                                      Just (env, BFalse) 
                | isvalue e1 = case step (env, e2) of 
                                 Just (env, e2') -> Just (env, (Eq e1 e2'))
                                 _        -> Nothing
                | otherwise = case step (env, e1) of 
                                Just (env, e1') -> Just (env, (Eq e1' e2))
                                _        -> Nothing 
step (env, (Gt e1 e2)) | isvalue e1 && isvalue e2 = let (Num n1) = e1
                                                        (Num n2) = e2
                                                    in if (n1 > n2) then
                                                      Just (env, BTrue) 
                                                    else 
                                                      Just (env, BFalse)
                | isvalue e1 = case step (env, e2) of 
                                 Just (env, e2') -> Just (env, (Gt e1 e2'))
                                 _        -> Nothing
                | otherwise = case step (env, e1) of 
                                Just (env, e1') -> Just (env, (Gt e1' e2))
                                _        -> Nothing 
step (env, (Mod e1 e2)) | isvalue e1 && isvalue e2 = let (Num n1) = e1
                                                         (Num n2) = e2
                                                    in Just (env, Num (n1 `mod` n2))
                | isvalue e1 = case step (env, e2) of 
                                 Just (env, e2') -> Just (env, (Mod e1 e2'))
                                 _        -> Nothing
                | otherwise = case step (env, e1) of 
                                Just (env, e1') -> Just (env, (Mod e1' e2))
                                _        -> Nothing 
step (env, e@(Var v)) = case lookup v env of
                          Just f -> Just (env, subst v f e)
                          _ -> Nothing
step (env, e) = Just (env, e)

eval :: Env -> Expr -> Expr 
eval env e | isvalue e = e 
       | otherwise = case step (env, e) of 
                       Just (env, e') -> eval env e'
                       _       -> error "Interpreter error!"
