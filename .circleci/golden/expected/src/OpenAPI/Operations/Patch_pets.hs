-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation patch_pets
module OpenAPI.Operations.Patch_pets where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified OpenAPI.Common
import OpenAPI.Types

-- | > PATCH /pets
-- 
-- 
patch_pets :: forall m . OpenAPI.Common.MonadHTTP m => GHC.Maybe.Maybe Patch_petsRequestBodyVariants -- ^ The request body to send
  -> OpenAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Patch_petsResponse) -- ^ Monadic computation which returns the result of the operation
patch_pets body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Patch_petsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Patch_petsResponse200
                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (OpenAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PATCH") (Data.Text.pack "/pets") [] body OpenAPI.Common.RequestBodyEncodingJSON)
-- | Defines the oneOf schema located at @paths.\/pets.PATCH.requestBody.content.application\/json.schema.oneOf@ in the specification.
-- 
-- 
data Patch_petsRequestBodyVariants
    = Patch_petsRequestBodyCat Cat | Patch_petsRequestBodyDog Dog
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Patch_petsRequestBodyVariants
    where toJSON (Patch_petsRequestBodyCat a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (Patch_petsRequestBodyDog a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON Patch_petsRequestBodyVariants
    where parseJSON val = case (Patch_petsRequestBodyCat Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((Patch_petsRequestBodyDog Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'patch_pets'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Patch_petsResponseError' is used.
data Patch_petsResponse =
   Patch_petsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Patch_petsResponse200 -- ^ Updated
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > PATCH /pets
-- 
-- The same as 'patch_pets' but accepts an explicit configuration.
patch_petsWithConfiguration :: forall m . OpenAPI.Common.MonadHTTP m => OpenAPI.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe Patch_petsRequestBodyVariants -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Patch_petsResponse) -- ^ Monadic computation which returns the result of the operation
patch_petsWithConfiguration config
                            body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Patch_petsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Patch_petsResponse200
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (OpenAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PATCH") (Data.Text.pack "/pets") [] body OpenAPI.Common.RequestBodyEncodingJSON)
-- | > PATCH /pets
-- 
-- The same as 'patch_pets' but returns the raw 'Data.ByteString.Char8.ByteString'.
patch_petsRaw :: forall m . OpenAPI.Common.MonadHTTP m => GHC.Maybe.Maybe Patch_petsRequestBodyVariants -- ^ The request body to send
  -> OpenAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
patch_petsRaw body = GHC.Base.id (OpenAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PATCH") (Data.Text.pack "/pets") [] body OpenAPI.Common.RequestBodyEncodingJSON)
-- | > PATCH /pets
-- 
-- The same as 'patch_pets' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
patch_petsWithConfigurationRaw :: forall m . OpenAPI.Common.MonadHTTP m => OpenAPI.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe Patch_petsRequestBodyVariants -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
patch_petsWithConfigurationRaw config
                               body = GHC.Base.id (OpenAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PATCH") (Data.Text.pack "/pets") [] body OpenAPI.Common.RequestBodyEncodingJSON)
