{
module Parser where 

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parseError }

%token
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    "&&"        { TokenAnd }
    "=="        { TokenEq }
    '>'         { TokenGt }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    ':'         { TokenColon }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    Bool        { TokenBoolean }
    Number      { TokenNumber }
    letrec      { TokenLetRec }
    let         { TokenLet }
    '='         { TokenAssign }
    in          { TokenIn }

%nonassoc if then else
%left '+' '-'
%left '*'
%left "&&"
%left "=="

%% 

-- Exp     : num                             { Num $1 }
--         | var                             { Var $1 }
--         | mintira                           { BFalse }
--         | verdadi                            { BTrue }
--         | Exp '+' Exp                     { Add $1 $3 }
--         | Exp "&&" Exp                    { And $1 $3 }
--         | ese Exp entao Exp senao Exp        { If $2 $4 $6 }
--         | '\\' var ':' Type "->" Exp      { Lam $2 $4 $6 }
--         | Exp Exp                         { App $1 $2 }
--         | '(' Exp ')'                     { Paren $2 }
--         | Exp "==" Exp                    { Eq $1 $3 }
--         | declara var '=' Exp em Exp          { Let $2 $4 $6 }

Exp     : num                             { Num $1 }
        | var                             { Var $1 }
        | false                           { BFalse }
        | true                            { BTrue }
        | Exp '+' Exp                     { Add $1 $3 }
        | Exp "&&" Exp                    { And $1 $3 }
        | if Exp then Exp else Exp        { If $2 $4 $6 }
        | '\\' var ':' Type "->" Exp      { Lam $2 $4 $6 }
        | Exp Exp                         { App $1 $2 }
        | '(' Exp ')'                     { Paren $2 }
        | Exp "==" Exp                    { Eq $1 $3 }
        | Exp '>' Exp                     { Gt $1 $3 }
        | let var '=' Exp in Exp          { Let $2 $4 $6 }
        | letrec var '=' Exp in Exp       { LetRec $2 $4 $6 }

Type    : Bool                            { TBool }
        | Number                          { TNum }
        | '(' Type "->" Type ')'          { TFun $2 $4 }


{ 

parseError :: [Token] -> a 
parseError _ = error "Syntax error!"

}
