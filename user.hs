data User = User {
                  name::String,
                  gamerId::Int,
                  score::Int
                 } deriving Show

serverUsername :: Maybe String
serverUsername = Just "Sue"

serverGameId :: Maybe Int
serverGameId = Just 1337

serverScore :: Maybe Int
serverScore = Just 9001

readInt :: IO Int
readInt = read <$> getLine

main :: IO()
main = do 
    putStrLn "Enter a Username,GamerId and score "
    user <- User <$> getLine <*> readInt <*> readInt
    print user