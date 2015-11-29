myGetLine :: IO String
myGetLine = do x <- getChar
               if x == '\n' then
                 do return [ ]
               else
                 do xs <- myGetLine
                    return (x : xs)


myPutStr :: String -> IO ()
myPutStr [ ] = return ()
myPutStr (x : xs) = do putChar x
                       myPutStr xs

putStrLn :: String -> IO ()
putStrLn xs = do putStr xs
                 putChar '\n'
