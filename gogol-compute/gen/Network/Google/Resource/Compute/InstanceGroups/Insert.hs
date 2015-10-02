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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an instance group in the specified project using the parameters
-- that are included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsInsert@.
module Network.Google.Resource.Compute.InstanceGroups.Insert
    (
    -- * REST Resource
      InstanceGroupsInsertResource

    -- * Creating a Request
    , instanceGroupsInsert'
    , InstanceGroupsInsert'

    -- * Request Lenses
    , igiQuotaUser
    , igiPrettyPrint
    , igiProject
    , igiUserIP
    , igiZone
    , igiKey
    , igiOAuthToken
    , igiInstanceGroup
    , igiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsInsert@ which the
-- 'InstanceGroupsInsert'' request conforms to.
type InstanceGroupsInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InstanceGroup :>
                             Post '[JSON] Operation

-- | Creates an instance group in the specified project using the parameters
-- that are included in the request.
--
-- /See:/ 'instanceGroupsInsert'' smart constructor.
data InstanceGroupsInsert' = InstanceGroupsInsert'
    { _igiQuotaUser     :: !(Maybe Text)
    , _igiPrettyPrint   :: !Bool
    , _igiProject       :: !Text
    , _igiUserIP        :: !(Maybe Text)
    , _igiZone          :: !Text
    , _igiKey           :: !(Maybe Key)
    , _igiOAuthToken    :: !(Maybe OAuthToken)
    , _igiInstanceGroup :: !InstanceGroup
    , _igiFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igiQuotaUser'
--
-- * 'igiPrettyPrint'
--
-- * 'igiProject'
--
-- * 'igiUserIP'
--
-- * 'igiZone'
--
-- * 'igiKey'
--
-- * 'igiOAuthToken'
--
-- * 'igiInstanceGroup'
--
-- * 'igiFields'
instanceGroupsInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroup -- ^ 'InstanceGroup'
    -> InstanceGroupsInsert'
instanceGroupsInsert' pIgiProject_ pIgiZone_ pIgiInstanceGroup_ =
    InstanceGroupsInsert'
    { _igiQuotaUser = Nothing
    , _igiPrettyPrint = True
    , _igiProject = pIgiProject_
    , _igiUserIP = Nothing
    , _igiZone = pIgiZone_
    , _igiKey = Nothing
    , _igiOAuthToken = Nothing
    , _igiInstanceGroup = pIgiInstanceGroup_
    , _igiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igiQuotaUser :: Lens' InstanceGroupsInsert' (Maybe Text)
igiQuotaUser
  = lens _igiQuotaUser (\ s a -> s{_igiQuotaUser = a})

-- | Returns response with indentations and line breaks.
igiPrettyPrint :: Lens' InstanceGroupsInsert' Bool
igiPrettyPrint
  = lens _igiPrettyPrint
      (\ s a -> s{_igiPrettyPrint = a})

-- | The project ID for this request.
igiProject :: Lens' InstanceGroupsInsert' Text
igiProject
  = lens _igiProject (\ s a -> s{_igiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igiUserIP :: Lens' InstanceGroupsInsert' (Maybe Text)
igiUserIP
  = lens _igiUserIP (\ s a -> s{_igiUserIP = a})

-- | The URL of the zone where the instance group is located.
igiZone :: Lens' InstanceGroupsInsert' Text
igiZone = lens _igiZone (\ s a -> s{_igiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igiKey :: Lens' InstanceGroupsInsert' (Maybe Key)
igiKey = lens _igiKey (\ s a -> s{_igiKey = a})

-- | OAuth 2.0 token for the current user.
igiOAuthToken :: Lens' InstanceGroupsInsert' (Maybe OAuthToken)
igiOAuthToken
  = lens _igiOAuthToken
      (\ s a -> s{_igiOAuthToken = a})

-- | Multipart request metadata.
igiInstanceGroup :: Lens' InstanceGroupsInsert' InstanceGroup
igiInstanceGroup
  = lens _igiInstanceGroup
      (\ s a -> s{_igiInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
igiFields :: Lens' InstanceGroupsInsert' (Maybe Text)
igiFields
  = lens _igiFields (\ s a -> s{_igiFields = a})

instance GoogleAuth InstanceGroupsInsert' where
        authKey = igiKey . _Just
        authToken = igiOAuthToken . _Just

instance GoogleRequest InstanceGroupsInsert' where
        type Rs InstanceGroupsInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupsInsert'{..}
          = go _igiQuotaUser (Just _igiPrettyPrint) _igiProject
              _igiUserIP
              _igiZone
              _igiKey
              _igiOAuthToken
              _igiFields
              (Just AltJSON)
              _igiInstanceGroup
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsInsertResource)
                      r
                      u