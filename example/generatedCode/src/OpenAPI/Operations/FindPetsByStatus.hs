-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation findPetsByStatus
module OpenAPI.Operations.FindPetsByStatus where

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
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
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

-- | > GET /pet/findByStatus
-- 
-- Multiple status values can be provided with comma separated strings
findPetsByStatus :: forall m . OpenAPI.Common.MonadHTTP m => [FindPetsByStatusParametersStatus] -- ^ status: Status values that need to be considered for filter
  -> OpenAPI.Common.ClientT m (Network.HTTP.Client.Types.Response FindPetsByStatusResponse) -- ^ Monadic computation which returns the result of the operation
findPetsByStatus status = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either FindPetsByStatusResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> FindPetsByStatusResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                     [Pet])
                                                                                                                                                                     | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right FindPetsByStatusResponse400
                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (OpenAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/pet/findByStatus" [OpenAPI.Common.QueryParameter (Data.Text.Internal.pack "status") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON status) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | Defines the enum schema located at @paths.\/pet\/findByStatus.GET.parameters.[0].schema.items@ in the specification.
-- 
-- 
data FindPetsByStatusParametersStatus =
   FindPetsByStatusParametersStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | FindPetsByStatusParametersStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | FindPetsByStatusParametersStatusEnumAvailable -- ^ Represents the JSON value @"available"@
  | FindPetsByStatusParametersStatusEnumPending -- ^ Represents the JSON value @"pending"@
  | FindPetsByStatusParametersStatusEnumSold -- ^ Represents the JSON value @"sold"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FindPetsByStatusParametersStatus
    where {toJSON (FindPetsByStatusParametersStatusOther val) = val;
           toJSON (FindPetsByStatusParametersStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (FindPetsByStatusParametersStatusEnumAvailable) = "available";
           toJSON (FindPetsByStatusParametersStatusEnumPending) = "pending";
           toJSON (FindPetsByStatusParametersStatusEnumSold) = "sold"}
instance Data.Aeson.Types.FromJSON.FromJSON FindPetsByStatusParametersStatus
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "available" -> FindPetsByStatusParametersStatusEnumAvailable
                                             | val GHC.Classes.== "pending" -> FindPetsByStatusParametersStatusEnumPending
                                             | val GHC.Classes.== "sold" -> FindPetsByStatusParametersStatusEnumSold
                                             | GHC.Base.otherwise -> FindPetsByStatusParametersStatusOther val)}
-- | Represents a response of the operation 'findPetsByStatus'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'FindPetsByStatusResponseError' is used.
data FindPetsByStatusResponse =
   FindPetsByStatusResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | FindPetsByStatusResponse200 [Pet] -- ^ successful operation
  | FindPetsByStatusResponse400 -- ^ Invalid status value
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /pet/findByStatus
-- 
-- The same as 'findPetsByStatus' but accepts an explicit configuration.
findPetsByStatusWithConfiguration :: forall m . OpenAPI.Common.MonadHTTP m => OpenAPI.Common.Configuration -- ^ The configuration to use in the request
  -> [FindPetsByStatusParametersStatus] -- ^ status: Status values that need to be considered for filter
  -> m (Network.HTTP.Client.Types.Response FindPetsByStatusResponse) -- ^ Monadic computation which returns the result of the operation
findPetsByStatusWithConfiguration config
                                  status = GHC.Base.fmap (\response_3 -> GHC.Base.fmap (Data.Either.either FindPetsByStatusResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> FindPetsByStatusResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                      [Pet])
                                                                                                                                                                                      | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right FindPetsByStatusResponse400
                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_3) response_3) (OpenAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/pet/findByStatus" [OpenAPI.Common.QueryParameter (Data.Text.Internal.pack "status") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON status) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | > GET /pet/findByStatus
-- 
-- The same as 'findPetsByStatus' but returns the raw 'Data.ByteString.ByteString'.
findPetsByStatusRaw :: forall m . OpenAPI.Common.MonadHTTP m => [FindPetsByStatusParametersStatus] -- ^ status: Status values that need to be considered for filter
  -> OpenAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString) -- ^ Monadic computation which returns the result of the operation
findPetsByStatusRaw status = GHC.Base.id (OpenAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/pet/findByStatus" [OpenAPI.Common.QueryParameter (Data.Text.Internal.pack "status") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON status) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | > GET /pet/findByStatus
-- 
-- The same as 'findPetsByStatus' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
findPetsByStatusWithConfigurationRaw :: forall m . OpenAPI.Common.MonadHTTP m => OpenAPI.Common.Configuration -- ^ The configuration to use in the request
  -> [FindPetsByStatusParametersStatus] -- ^ status: Status values that need to be considered for filter
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString) -- ^ Monadic computation which returns the result of the operation
findPetsByStatusWithConfigurationRaw config
                                     status = GHC.Base.id (OpenAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/pet/findByStatus" [OpenAPI.Common.QueryParameter (Data.Text.Internal.pack "status") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON status) (Data.Text.Internal.pack "form") GHC.Types.True])
