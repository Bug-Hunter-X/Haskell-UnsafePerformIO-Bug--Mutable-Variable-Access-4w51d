The solution avoids `unsafePerformIO` entirely.  Instead, it uses pure functional techniques to achieve the same result.  This approach removes the potential for side effects and guarantees predictable behavior.

```haskell
import Control.Monad (forM_)
import Data.IORef

--Pure functional solution
main :: IO ()
main = do
  let numbers = [1, 2, 3, 4, 5]
  let doubledNumbers = map (*2) numbers
  forM_ doubledNumbers (
    x -> putStrLn ("Doubled number:" ++ show x))
```
This revised code avoids `unsafePerformIO`, making it safer, more maintainable, and easier to reason about.