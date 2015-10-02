{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Datastore.Datasets.Commit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Commit a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsCommit@.
module Network.Google.Resource.Datastore.Datasets.Commit
    (
    -- * REST Resource
      DatasetsCommitResource

    -- * Creating a Request
    , datasetsCommit'
    , DatasetsCommit'

    -- * Request Lenses
    , dcQuotaUser
    , dcPrettyPrint
    , dcUserIP
    , dcKey
    , dcDatasetId
    , dcCommitRequest
    , dcOAuthToken
    , dcFields
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsCommit@ which the
-- 'DatasetsCommit'' request conforms to.
type DatasetsCommitResource =
     Capture "datasetId" Text :>
       "commit" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltPROTO :>
                       ReqBody '[JSON] CommitRequest :>
                         Post '[JSON] CommitResponse

-- | Commit a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ 'datasetsCommit'' smart constructor.
data DatasetsCommit' = DatasetsCommit'
    { _dcQuotaUser     :: !(Maybe Text)
    , _dcPrettyPrint   :: !Bool
    , _dcUserIP        :: !(Maybe Text)
    , _dcKey           :: !(Maybe Key)
    , _dcDatasetId     :: !Text
    , _dcCommitRequest :: !CommitRequest
    , _dcOAuthToken    :: !(Maybe OAuthToken)
    , _dcFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsCommit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcQuotaUser'
--
-- * 'dcPrettyPrint'
--
-- * 'dcUserIP'
--
-- * 'dcKey'
--
-- * 'dcDatasetId'
--
-- * 'dcCommitRequest'
--
-- * 'dcOAuthToken'
--
-- * 'dcFields'
datasetsCommit'
    :: Text -- ^ 'datasetId'
    -> CommitRequest -- ^ 'CommitRequest'
    -> DatasetsCommit'
datasetsCommit' pDcDatasetId_ pDcCommitRequest_ =
    DatasetsCommit'
    { _dcQuotaUser = Nothing
    , _dcPrettyPrint = True
    , _dcUserIP = Nothing
    , _dcKey = Nothing
    , _dcDatasetId = pDcDatasetId_
    , _dcCommitRequest = pDcCommitRequest_
    , _dcOAuthToken = Nothing
    , _dcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dcQuotaUser :: Lens' DatasetsCommit' (Maybe Text)
dcQuotaUser
  = lens _dcQuotaUser (\ s a -> s{_dcQuotaUser = a})

-- | Returns response with indentations and line breaks.
dcPrettyPrint :: Lens' DatasetsCommit' Bool
dcPrettyPrint
  = lens _dcPrettyPrint
      (\ s a -> s{_dcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dcUserIP :: Lens' DatasetsCommit' (Maybe Text)
dcUserIP = lens _dcUserIP (\ s a -> s{_dcUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dcKey :: Lens' DatasetsCommit' (Maybe Key)
dcKey = lens _dcKey (\ s a -> s{_dcKey = a})

-- | Identifies the dataset.
dcDatasetId :: Lens' DatasetsCommit' Text
dcDatasetId
  = lens _dcDatasetId (\ s a -> s{_dcDatasetId = a})

-- | Multipart request metadata.
dcCommitRequest :: Lens' DatasetsCommit' CommitRequest
dcCommitRequest
  = lens _dcCommitRequest
      (\ s a -> s{_dcCommitRequest = a})

-- | OAuth 2.0 token for the current user.
dcOAuthToken :: Lens' DatasetsCommit' (Maybe OAuthToken)
dcOAuthToken
  = lens _dcOAuthToken (\ s a -> s{_dcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dcFields :: Lens' DatasetsCommit' (Maybe Text)
dcFields = lens _dcFields (\ s a -> s{_dcFields = a})

instance GoogleAuth DatasetsCommit' where
        authKey = dcKey . _Just
        authToken = dcOAuthToken . _Just

instance GoogleRequest DatasetsCommit' where
        type Rs DatasetsCommit' = CommitResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsCommit'{..}
          = go _dcQuotaUser (Just _dcPrettyPrint) _dcUserIP
              _dcKey
              _dcDatasetId
              _dcOAuthToken
              _dcFields
              (Just AltPROTO)
              _dcCommitRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsCommitResource)
                      r
                      u