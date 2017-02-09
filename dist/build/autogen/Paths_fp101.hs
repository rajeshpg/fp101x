module Paths_fp101 (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/rajesh/.cabal/bin"
libdir     = "/Users/rajesh/.cabal/lib/x86_64-osx-ghc-7.10.2/fp101-0.1.0.0-FlRzXb7FZKNFWkngvAWYYa"
datadir    = "/Users/rajesh/.cabal/share/x86_64-osx-ghc-7.10.2/fp101-0.1.0.0"
libexecdir = "/Users/rajesh/.cabal/libexec"
sysconfdir = "/Users/rajesh/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "fp101_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "fp101_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "fp101_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "fp101_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "fp101_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
