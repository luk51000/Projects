import Text.Printf

main = do
	putStrLn "Enter number of digits to round PI to:"
	digits <- getLine

	str <- return ("%."++ (show (min (read digits :: Int) 16)) ++"f ")
	putStrLn (printf str (4.0 * (4.0 * (atan(1.0/5.0) :: Double) - (atan(1.0/239.0) :: Double))))

	--str <- return ("%."++ (show (min (read digits :: Int) 15)) ++"f ")
	--putStrLn (printf str (pi :: Double))
