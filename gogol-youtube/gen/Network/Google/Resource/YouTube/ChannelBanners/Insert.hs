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
-- Module      : Network.Google.Resource.YouTube.ChannelBanners.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a channel banner image to YouTube. This method represents the
-- first two steps in a three-step process to update the banner image for a
-- channel: - Call the channelBanners.insert method to upload the binary
-- image data to YouTube. The image must have a 16:9 aspect ratio and be at
-- least 2120x1192 pixels. - Extract the url property\'s value from the
-- response that the API returns for step 1. - Call the channels.update
-- method to update the channel\'s branding settings. Set the
-- brandingSettings.image.bannerExternalUrl property\'s value to the URL
-- obtained in step 2.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeChannelBannersInsert@.
module Network.Google.Resource.YouTube.ChannelBanners.Insert
    (
    -- * REST Resource
      ChannelBannersInsertResource

    -- * Creating a Request
    , channelBannersInsert'
    , ChannelBannersInsert'

    -- * Request Lenses
    , cbiQuotaUser
    , cbiPrettyPrint
    , cbiUserIP
    , cbiMedia
    , cbiOnBehalfOfContentOwner
    , cbiKey
    , cbiChannelBannerResource
    , cbiOAuthToken
    , cbiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelBannersInsert@ which the
-- 'ChannelBannersInsert'' request conforms to.
type ChannelBannersInsertResource =
     "channelBanners" :>
       "insert" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         MultipartRelated '[JSON] ChannelBannerResource Body
                           :> Post '[JSON] ChannelBannerResource

-- | Uploads a channel banner image to YouTube. This method represents the
-- first two steps in a three-step process to update the banner image for a
-- channel: - Call the channelBanners.insert method to upload the binary
-- image data to YouTube. The image must have a 16:9 aspect ratio and be at
-- least 2120x1192 pixels. - Extract the url property\'s value from the
-- response that the API returns for step 1. - Call the channels.update
-- method to update the channel\'s branding settings. Set the
-- brandingSettings.image.bannerExternalUrl property\'s value to the URL
-- obtained in step 2.
--
-- /See:/ 'channelBannersInsert'' smart constructor.
data ChannelBannersInsert' = ChannelBannersInsert'
    { _cbiQuotaUser              :: !(Maybe Text)
    , _cbiPrettyPrint            :: !Bool
    , _cbiUserIP                 :: !(Maybe Text)
    , _cbiMedia                  :: !Body
    , _cbiOnBehalfOfContentOwner :: !(Maybe Text)
    , _cbiKey                    :: !(Maybe Key)
    , _cbiChannelBannerResource  :: !ChannelBannerResource
    , _cbiOAuthToken             :: !(Maybe OAuthToken)
    , _cbiFields                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelBannersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbiQuotaUser'
--
-- * 'cbiPrettyPrint'
--
-- * 'cbiUserIP'
--
-- * 'cbiMedia'
--
-- * 'cbiOnBehalfOfContentOwner'
--
-- * 'cbiKey'
--
-- * 'cbiChannelBannerResource'
--
-- * 'cbiOAuthToken'
--
-- * 'cbiFields'
channelBannersInsert'
    :: Body -- ^ 'media'
    -> ChannelBannerResource -- ^ 'ChannelBannerResource'
    -> ChannelBannersInsert'
channelBannersInsert' pCbiMedia_ pCbiChannelBannerResource_ =
    ChannelBannersInsert'
    { _cbiQuotaUser = Nothing
    , _cbiPrettyPrint = True
    , _cbiUserIP = Nothing
    , _cbiMedia = pCbiMedia_
    , _cbiOnBehalfOfContentOwner = Nothing
    , _cbiKey = Nothing
    , _cbiChannelBannerResource = pCbiChannelBannerResource_
    , _cbiOAuthToken = Nothing
    , _cbiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cbiQuotaUser :: Lens' ChannelBannersInsert' (Maybe Text)
cbiQuotaUser
  = lens _cbiQuotaUser (\ s a -> s{_cbiQuotaUser = a})

-- | Returns response with indentations and line breaks.
cbiPrettyPrint :: Lens' ChannelBannersInsert' Bool
cbiPrettyPrint
  = lens _cbiPrettyPrint
      (\ s a -> s{_cbiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cbiUserIP :: Lens' ChannelBannersInsert' (Maybe Text)
cbiUserIP
  = lens _cbiUserIP (\ s a -> s{_cbiUserIP = a})

cbiMedia :: Lens' ChannelBannersInsert' Body
cbiMedia = lens _cbiMedia (\ s a -> s{_cbiMedia = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
cbiOnBehalfOfContentOwner :: Lens' ChannelBannersInsert' (Maybe Text)
cbiOnBehalfOfContentOwner
  = lens _cbiOnBehalfOfContentOwner
      (\ s a -> s{_cbiOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cbiKey :: Lens' ChannelBannersInsert' (Maybe Key)
cbiKey = lens _cbiKey (\ s a -> s{_cbiKey = a})

-- | Multipart request metadata.
cbiChannelBannerResource :: Lens' ChannelBannersInsert' ChannelBannerResource
cbiChannelBannerResource
  = lens _cbiChannelBannerResource
      (\ s a -> s{_cbiChannelBannerResource = a})

-- | OAuth 2.0 token for the current user.
cbiOAuthToken :: Lens' ChannelBannersInsert' (Maybe OAuthToken)
cbiOAuthToken
  = lens _cbiOAuthToken
      (\ s a -> s{_cbiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cbiFields :: Lens' ChannelBannersInsert' (Maybe Text)
cbiFields
  = lens _cbiFields (\ s a -> s{_cbiFields = a})

instance GoogleAuth ChannelBannersInsert' where
        authKey = cbiKey . _Just
        authToken = cbiOAuthToken . _Just

instance GoogleRequest ChannelBannersInsert' where
        type Rs ChannelBannersInsert' = ChannelBannerResource
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ChannelBannersInsert'{..}
          = go _cbiQuotaUser (Just _cbiPrettyPrint) _cbiUserIP
              _cbiMedia
              _cbiOnBehalfOfContentOwner
              _cbiKey
              _cbiOAuthToken
              _cbiFields
              (Just AltJSON)
              _cbiChannelBannerResource
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChannelBannersInsertResource)
                      r
                      u