import System.Environment
import MyFunctions

main :: IO ()
main = getArgs >>= print . haqify . head
