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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersUpdate@.
module Network.Google.Resource.DFAReporting.Advertisers.Update
    (
    -- * REST Resource
      AdvertisersUpdateResource

    -- * Creating a Request
    , advertisersUpdate'
    , AdvertisersUpdate'

    -- * Request Lenses
    , advQuotaUser
    , advPrettyPrint
    , advUserIP
    , advProfileId
    , advKey
    , advAdvertiser
    , advOAuthToken
    , advFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersUpdate@ which the
-- 'AdvertisersUpdate'' request conforms to.
type AdvertisersUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Advertiser :> Put '[JSON] Advertiser

-- | Updates an existing advertiser.
--
-- /See:/ 'advertisersUpdate'' smart constructor.
data AdvertisersUpdate' = AdvertisersUpdate'
    { _advQuotaUser   :: !(Maybe Text)
    , _advPrettyPrint :: !Bool
    , _advUserIP      :: !(Maybe Text)
    , _advProfileId   :: !Int64
    , _advKey         :: !(Maybe Key)
    , _advAdvertiser  :: !Advertiser
    , _advOAuthToken  :: !(Maybe OAuthToken)
    , _advFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'advQuotaUser'
--
-- * 'advPrettyPrint'
--
-- * 'advUserIP'
--
-- * 'advProfileId'
--
-- * 'advKey'
--
-- * 'advAdvertiser'
--
-- * 'advOAuthToken'
--
-- * 'advFields'
advertisersUpdate'
    :: Int64 -- ^ 'profileId'
    -> Advertiser -- ^ 'Advertiser'
    -> AdvertisersUpdate'
advertisersUpdate' pAdvProfileId_ pAdvAdvertiser_ =
    AdvertisersUpdate'
    { _advQuotaUser = Nothing
    , _advPrettyPrint = True
    , _advUserIP = Nothing
    , _advProfileId = pAdvProfileId_
    , _advKey = Nothing
    , _advAdvertiser = pAdvAdvertiser_
    , _advOAuthToken = Nothing
    , _advFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
advQuotaUser :: Lens' AdvertisersUpdate' (Maybe Text)
advQuotaUser
  = lens _advQuotaUser (\ s a -> s{_advQuotaUser = a})

-- | Returns response with indentations and line breaks.
advPrettyPrint :: Lens' AdvertisersUpdate' Bool
advPrettyPrint
  = lens _advPrettyPrint
      (\ s a -> s{_advPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
advUserIP :: Lens' AdvertisersUpdate' (Maybe Text)
advUserIP
  = lens _advUserIP (\ s a -> s{_advUserIP = a})

-- | User profile ID associated with this request.
advProfileId :: Lens' AdvertisersUpdate' Int64
advProfileId
  = lens _advProfileId (\ s a -> s{_advProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
advKey :: Lens' AdvertisersUpdate' (Maybe Key)
advKey = lens _advKey (\ s a -> s{_advKey = a})

-- | Multipart request metadata.
advAdvertiser :: Lens' AdvertisersUpdate' Advertiser
advAdvertiser
  = lens _advAdvertiser
      (\ s a -> s{_advAdvertiser = a})

-- | OAuth 2.0 token for the current user.
advOAuthToken :: Lens' AdvertisersUpdate' (Maybe OAuthToken)
advOAuthToken
  = lens _advOAuthToken
      (\ s a -> s{_advOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
advFields :: Lens' AdvertisersUpdate' (Maybe Text)
advFields
  = lens _advFields (\ s a -> s{_advFields = a})

instance GoogleAuth AdvertisersUpdate' where
        authKey = advKey . _Just
        authToken = advOAuthToken . _Just

instance GoogleRequest AdvertisersUpdate' where
        type Rs AdvertisersUpdate' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersUpdate'{..}
          = go _advQuotaUser (Just _advPrettyPrint) _advUserIP
              _advProfileId
              _advKey
              _advOAuthToken
              _advFields
              (Just AltJSON)
              _advAdvertiser
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersUpdateResource)
                      r
                      u