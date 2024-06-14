{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,254) ([39968,393,2,0,0,65024,6297,0,0,0,8192,35228,1,0,32768,0,39362,24,128,0,8,0,512,0,57376,39327,1,32,49120,393,0,8192,35228,49665,6297,39968,393,39362,24,0,0,0,256,0,24,8192,35228,1,1664,0,0,39362,8216,35228,65025,22681,40928,1417,16384,0,26624,0,0,0,0,40446,8216,35228,1,64,39968,393,39362,8216,35228,1,0,0,0,0,0,26624,7168,0,0,16,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","\"&&\"","\"==\"","'>'","true","false","if","then","else","var","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","letrec","let","'='","in","%eof"]
        bit_start = st Prelude.* 28
        bit_end = (st Prelude.+ 1) Prelude.* 28
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..27]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_2
action_0 (11) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (13) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (20) = happyShift action_9
action_0 (24) = happyShift action_10
action_0 (25) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_18
action_3 (8) = happyShift action_19
action_3 (9) = happyShift action_20
action_3 (10) = happyShift action_21
action_3 (11) = happyShift action_4
action_3 (12) = happyShift action_5
action_3 (13) = happyShift action_6
action_3 (16) = happyShift action_7
action_3 (17) = happyShift action_8
action_3 (20) = happyShift action_9
action_3 (24) = happyShift action_10
action_3 (25) = happyShift action_11
action_3 (28) = happyAccept
action_3 (4) = happyGoto action_17
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (11) = happyShift action_4
action_6 (12) = happyShift action_5
action_6 (13) = happyShift action_6
action_6 (16) = happyShift action_7
action_6 (17) = happyShift action_8
action_6 (20) = happyShift action_9
action_6 (24) = happyShift action_10
action_6 (25) = happyShift action_11
action_6 (4) = happyGoto action_16
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_2

action_8 (16) = happyShift action_15
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (11) = happyShift action_4
action_9 (12) = happyShift action_5
action_9 (13) = happyShift action_6
action_9 (16) = happyShift action_7
action_9 (17) = happyShift action_8
action_9 (20) = happyShift action_9
action_9 (24) = happyShift action_10
action_9 (25) = happyShift action_11
action_9 (4) = happyGoto action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (16) = happyShift action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (16) = happyShift action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (26) = happyShift action_30
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (26) = happyShift action_29
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_18
action_14 (8) = happyShift action_19
action_14 (9) = happyShift action_20
action_14 (10) = happyShift action_21
action_14 (11) = happyShift action_4
action_14 (12) = happyShift action_5
action_14 (13) = happyShift action_6
action_14 (16) = happyShift action_7
action_14 (17) = happyShift action_8
action_14 (20) = happyShift action_9
action_14 (21) = happyShift action_28
action_14 (24) = happyShift action_10
action_14 (25) = happyShift action_11
action_14 (4) = happyGoto action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (18) = happyShift action_27
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_18
action_16 (8) = happyShift action_19
action_16 (9) = happyShift action_20
action_16 (10) = happyShift action_21
action_16 (11) = happyShift action_4
action_16 (12) = happyShift action_5
action_16 (13) = happyShift action_6
action_16 (14) = happyShift action_26
action_16 (16) = happyShift action_7
action_16 (17) = happyShift action_8
action_16 (20) = happyShift action_9
action_16 (24) = happyShift action_10
action_16 (25) = happyShift action_11
action_16 (4) = happyGoto action_17
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_18
action_17 (8) = happyShift action_19
action_17 (9) = happyShift action_20
action_17 (10) = happyShift action_21
action_17 (11) = happyShift action_4
action_17 (12) = happyShift action_5
action_17 (13) = happyShift action_6
action_17 (16) = happyShift action_7
action_17 (17) = happyShift action_8
action_17 (20) = happyShift action_9
action_17 (24) = happyShift action_10
action_17 (25) = happyShift action_11
action_17 (4) = happyGoto action_17
action_17 _ = happyReduce_9

action_18 (6) = happyShift action_2
action_18 (11) = happyShift action_4
action_18 (12) = happyShift action_5
action_18 (13) = happyShift action_6
action_18 (16) = happyShift action_7
action_18 (17) = happyShift action_8
action_18 (20) = happyShift action_9
action_18 (24) = happyShift action_10
action_18 (25) = happyShift action_11
action_18 (4) = happyGoto action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (11) = happyShift action_4
action_19 (12) = happyShift action_5
action_19 (13) = happyShift action_6
action_19 (16) = happyShift action_7
action_19 (17) = happyShift action_8
action_19 (20) = happyShift action_9
action_19 (24) = happyShift action_10
action_19 (25) = happyShift action_11
action_19 (4) = happyGoto action_24
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (11) = happyShift action_4
action_20 (12) = happyShift action_5
action_20 (13) = happyShift action_6
action_20 (16) = happyShift action_7
action_20 (17) = happyShift action_8
action_20 (20) = happyShift action_9
action_20 (24) = happyShift action_10
action_20 (25) = happyShift action_11
action_20 (4) = happyGoto action_23
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (11) = happyShift action_4
action_21 (12) = happyShift action_5
action_21 (13) = happyShift action_6
action_21 (16) = happyShift action_7
action_21 (17) = happyShift action_8
action_21 (20) = happyShift action_9
action_21 (24) = happyShift action_10
action_21 (25) = happyShift action_11
action_21 (4) = happyGoto action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_18
action_22 (8) = happyShift action_19
action_22 (9) = happyShift action_20
action_22 (10) = happyShift action_21
action_22 (11) = happyShift action_4
action_22 (12) = happyShift action_5
action_22 (13) = happyShift action_6
action_22 (16) = happyShift action_7
action_22 (17) = happyShift action_8
action_22 (20) = happyShift action_9
action_22 (24) = happyShift action_10
action_22 (25) = happyShift action_11
action_22 (4) = happyGoto action_17
action_22 _ = happyReduce_12

action_23 (6) = happyShift action_2
action_23 (10) = happyShift action_21
action_23 (11) = happyShift action_4
action_23 (12) = happyShift action_5
action_23 (16) = happyShift action_7
action_23 (17) = happyShift action_8
action_23 (20) = happyShift action_9
action_23 (24) = happyShift action_10
action_23 (25) = happyShift action_11
action_23 (4) = happyGoto action_17
action_23 _ = happyReduce_11

action_24 (6) = happyShift action_2
action_24 (9) = happyShift action_20
action_24 (10) = happyShift action_21
action_24 (11) = happyShift action_4
action_24 (12) = happyShift action_5
action_24 (16) = happyShift action_7
action_24 (17) = happyShift action_8
action_24 (20) = happyShift action_9
action_24 (24) = happyShift action_10
action_24 (25) = happyShift action_11
action_24 (4) = happyGoto action_17
action_24 _ = happyReduce_6

action_25 (6) = happyShift action_2
action_25 (8) = happyShift action_19
action_25 (9) = happyShift action_20
action_25 (10) = happyShift action_21
action_25 (11) = happyShift action_4
action_25 (12) = happyShift action_5
action_25 (16) = happyShift action_7
action_25 (17) = happyShift action_8
action_25 (20) = happyShift action_9
action_25 (24) = happyShift action_10
action_25 (25) = happyShift action_11
action_25 (4) = happyGoto action_17
action_25 _ = happyReduce_5

action_26 (6) = happyShift action_2
action_26 (11) = happyShift action_4
action_26 (12) = happyShift action_5
action_26 (13) = happyShift action_6
action_26 (16) = happyShift action_7
action_26 (17) = happyShift action_8
action_26 (20) = happyShift action_9
action_26 (24) = happyShift action_10
action_26 (25) = happyShift action_11
action_26 (4) = happyGoto action_37
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (20) = happyShift action_34
action_27 (22) = happyShift action_35
action_27 (23) = happyShift action_36
action_27 (5) = happyGoto action_33
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_10

action_29 (6) = happyShift action_2
action_29 (11) = happyShift action_4
action_29 (12) = happyShift action_5
action_29 (13) = happyShift action_6
action_29 (16) = happyShift action_7
action_29 (17) = happyShift action_8
action_29 (20) = happyShift action_9
action_29 (24) = happyShift action_10
action_29 (25) = happyShift action_11
action_29 (4) = happyGoto action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (11) = happyShift action_4
action_30 (12) = happyShift action_5
action_30 (13) = happyShift action_6
action_30 (16) = happyShift action_7
action_30 (17) = happyShift action_8
action_30 (20) = happyShift action_9
action_30 (24) = happyShift action_10
action_30 (25) = happyShift action_11
action_30 (4) = happyGoto action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_18
action_31 (8) = happyShift action_19
action_31 (9) = happyShift action_20
action_31 (10) = happyShift action_21
action_31 (11) = happyShift action_4
action_31 (12) = happyShift action_5
action_31 (13) = happyShift action_6
action_31 (16) = happyShift action_7
action_31 (17) = happyShift action_8
action_31 (20) = happyShift action_9
action_31 (24) = happyShift action_10
action_31 (25) = happyShift action_11
action_31 (27) = happyShift action_42
action_31 (4) = happyGoto action_17
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_18
action_32 (8) = happyShift action_19
action_32 (9) = happyShift action_20
action_32 (10) = happyShift action_21
action_32 (11) = happyShift action_4
action_32 (12) = happyShift action_5
action_32 (13) = happyShift action_6
action_32 (16) = happyShift action_7
action_32 (17) = happyShift action_8
action_32 (20) = happyShift action_9
action_32 (24) = happyShift action_10
action_32 (25) = happyShift action_11
action_32 (27) = happyShift action_41
action_32 (4) = happyGoto action_17
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (19) = happyShift action_40
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (20) = happyShift action_34
action_34 (22) = happyShift action_35
action_34 (23) = happyShift action_36
action_34 (5) = happyGoto action_39
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_15

action_36 _ = happyReduce_16

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_18
action_37 (8) = happyShift action_19
action_37 (9) = happyShift action_20
action_37 (10) = happyShift action_21
action_37 (11) = happyShift action_4
action_37 (12) = happyShift action_5
action_37 (13) = happyShift action_6
action_37 (15) = happyShift action_38
action_37 (16) = happyShift action_7
action_37 (17) = happyShift action_8
action_37 (20) = happyShift action_9
action_37 (24) = happyShift action_10
action_37 (25) = happyShift action_11
action_37 (4) = happyGoto action_17
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (6) = happyShift action_2
action_38 (11) = happyShift action_4
action_38 (12) = happyShift action_5
action_38 (13) = happyShift action_6
action_38 (16) = happyShift action_7
action_38 (17) = happyShift action_8
action_38 (20) = happyShift action_9
action_38 (24) = happyShift action_10
action_38 (25) = happyShift action_11
action_38 (4) = happyGoto action_47
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (19) = happyShift action_46
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (6) = happyShift action_2
action_40 (11) = happyShift action_4
action_40 (12) = happyShift action_5
action_40 (13) = happyShift action_6
action_40 (16) = happyShift action_7
action_40 (17) = happyShift action_8
action_40 (20) = happyShift action_9
action_40 (24) = happyShift action_10
action_40 (25) = happyShift action_11
action_40 (4) = happyGoto action_45
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (6) = happyShift action_2
action_41 (11) = happyShift action_4
action_41 (12) = happyShift action_5
action_41 (13) = happyShift action_6
action_41 (16) = happyShift action_7
action_41 (17) = happyShift action_8
action_41 (20) = happyShift action_9
action_41 (24) = happyShift action_10
action_41 (25) = happyShift action_11
action_41 (4) = happyGoto action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (11) = happyShift action_4
action_42 (12) = happyShift action_5
action_42 (13) = happyShift action_6
action_42 (16) = happyShift action_7
action_42 (17) = happyShift action_8
action_42 (20) = happyShift action_9
action_42 (24) = happyShift action_10
action_42 (25) = happyShift action_11
action_42 (4) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_18
action_43 (8) = happyShift action_19
action_43 (9) = happyShift action_20
action_43 (10) = happyShift action_21
action_43 (11) = happyShift action_4
action_43 (12) = happyShift action_5
action_43 (13) = happyShift action_6
action_43 (16) = happyShift action_7
action_43 (17) = happyShift action_8
action_43 (20) = happyShift action_9
action_43 (24) = happyShift action_10
action_43 (25) = happyShift action_11
action_43 (4) = happyGoto action_17
action_43 _ = happyReduce_13

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_18
action_44 (8) = happyShift action_19
action_44 (9) = happyShift action_20
action_44 (10) = happyShift action_21
action_44 (11) = happyShift action_4
action_44 (12) = happyShift action_5
action_44 (13) = happyShift action_6
action_44 (16) = happyShift action_7
action_44 (17) = happyShift action_8
action_44 (20) = happyShift action_9
action_44 (24) = happyShift action_10
action_44 (25) = happyShift action_11
action_44 (4) = happyGoto action_17
action_44 _ = happyReduce_14

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_18
action_45 (8) = happyShift action_19
action_45 (9) = happyShift action_20
action_45 (10) = happyShift action_21
action_45 (11) = happyShift action_4
action_45 (12) = happyShift action_5
action_45 (13) = happyShift action_6
action_45 (16) = happyShift action_7
action_45 (17) = happyShift action_8
action_45 (20) = happyShift action_9
action_45 (24) = happyShift action_10
action_45 (25) = happyShift action_11
action_45 (4) = happyGoto action_17
action_45 _ = happyReduce_8

action_46 (20) = happyShift action_34
action_46 (22) = happyShift action_35
action_46 (23) = happyShift action_36
action_46 (5) = happyGoto action_48
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_18
action_47 (8) = happyShift action_19
action_47 (9) = happyShift action_20
action_47 (10) = happyShift action_21
action_47 (11) = happyShift action_4
action_47 (12) = happyShift action_5
action_47 (13) = happyFail []
action_47 (16) = happyShift action_7
action_47 (17) = happyShift action_8
action_47 (20) = happyShift action_9
action_47 (24) = happyShift action_10
action_47 (25) = happyShift action_11
action_47 (4) = happyGoto action_17
action_47 _ = happyReduce_7

action_48 (21) = happyShift action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_17

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 6 4 happyReduction_7
happyReduction_7 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 6 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (LetRec happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_17 = happyReduce 5 5 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 28 28 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenAnd -> cont 8;
	TokenEq -> cont 9;
	TokenGt -> cont 10;
	TokenTrue -> cont 11;
	TokenFalse -> cont 12;
	TokenIf -> cont 13;
	TokenThen -> cont 14;
	TokenElse -> cont 15;
	TokenVar happy_dollar_dollar -> cont 16;
	TokenLam -> cont 17;
	TokenColon -> cont 18;
	TokenArrow -> cont 19;
	TokenLParen -> cont 20;
	TokenRParen -> cont 21;
	TokenBoolean -> cont 22;
	TokenNumber -> cont 23;
	TokenLetRec -> cont 24;
	TokenLet -> cont 25;
	TokenAssign -> cont 26;
	TokenIn -> cont 27;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 28 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
