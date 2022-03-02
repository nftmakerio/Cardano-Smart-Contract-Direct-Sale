import Cardano.Api                         hiding (TxId)

import Canonical.DirectSale
import System.Environment
import Prelude

main :: IO ()
main = do
  [filePath] <- getArgs

  writeFileTextEnvelope filePath Nothing buy >>= \case
    Left err -> print $ displayError err
    Right () -> putStrLn $ "wrote NFT validator to file " ++ filePath
