--There are three files in morse code for you to run
text = ".... . .-.. .-.. ---"
--answer is -> hello
text1 = ".... . .-.. .-.. --- / -- -.-- / -. .- -- . / .. ... / -... --- -... -... -.--"
--answer is -> Hello my name is bobby
text2 = "-.-. ... ...-- .---- -.... ----- / -- .- -.- . ... / -.-- --- ..- .-. ... . .-.. ..-. / .-.. . .- .-. -. / .- / - --- -. / --- ..-. / -. . .-- / .-.. .- -. ..- --. ..- .- --. . ... -.-.--"
--answer -> cs3160 makes yourself learn a ton of new lanuguages!

--define the dictionary morse to string
dict :: [(String, Char)]
--dictionary created below
dict =
   [(".-"   ,'a'),
    ("-..." ,'b'),
    ("-.-." ,'c'),
    ("-.."  ,'d'),
    ("."    ,'e'),
    ("..-." ,'f'),
    ("--."  ,'g'),
    ("...." ,'h'),
    (".."   ,'i'),
    (".---" ,'j'),
    ("-.-"  ,'k'),
    (".-.." ,'l'),
    ("--"   ,'m'),
    ("-."   ,'n'),
    ("---"  ,'o'),
    (".--." ,'p'),
    ("--.-" ,'q'),
    (".-."  ,'r'),
    ("..."  ,'s'),
    ("-"    ,'t'),
    ("..-"  ,'u'),
    ("...-" ,'v'),
    (".--"  ,'w'),
    ("-..-" ,'x'),
    ("-.--" ,'y'),
    ("--.." ,'z'),
    ("-----",'0'),
    (".----",'1'),
    ("..---",'2'),
    ("...--",'3'),
    ("....-",'4'),
    (".....",'5'),
    ("-....",'6'),
    ("--...",'7'),
    ("---..",'8'),
    ("----.",'9'),
    ("@"    ,' '),
    ("-.-.--", '!')] 
 
decodeLetter :: String -> Char
decodeLetter code = maybe ' ' id $ lookup code dict
decode = map decodeLetter . words


main = do
    print $ decode text
    print $ decode text1
    print $ decode text2
    

    

