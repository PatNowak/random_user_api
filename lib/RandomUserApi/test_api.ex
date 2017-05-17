defmodule RandomUserApi.TestAPI do

  @random_me_url "https://api.randomuser.me/"

  @doc """
  Test module instead of using API in test env
  """
  def get(url, options) do
    case options do
      %{results: 2, gender: :male} -> two_male_users
      %{results: 3, gender: :female, nat: "BR"} -> three_females_from_br
      %{} -> simple_call
    end
  end

  defp simple_call do
    {:ok,
     %HTTPoison.Response{body: "{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"miss\",\"first\":\"jasmina\",\"last\":\"hübner\"},\"location\":{\"street\":\"6147 wiesenstraße\",\"city\":\"mühldorf a. inn\",\"state\":\"bayern\",\"postcode\":87463},\"email\":\"jasmina.hübner@example.com\",\"login\":{\"username\":\"ticklishfish633\",\"password\":\"triple\",\"salt\":\"RgpNZK3j\",\"md5\":\"247dc676ceab05495cb7d50dd33929df\",\"sha1\":\"3e2bf9381a60d8745b9bbeb4f24caf8b4afe3821\",\"sha256\":\"c0b522367dfab874da21bbab4bbaf4c76e25912aab15409acae3fefa0b30d716\"},\"dob\":\"1982-01-06 17:51:08\",\"registered\":\"2008-09-02 03:09:32\",\"phone\":\"0073-3506835\",\"cell\":\"0170-1935915\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/women/16.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/women/16.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/women/16.jpg\"},\"nat\":\"DE\"}],\"info\":{\"seed\":\"f609c37ebd49764e\",\"results\":1,\"page\":1,\"version\":\"1.1\"}}",
      headers: [{"Date", "Wed, 17 May 2017 10:48:02 GMT"},
       {"Content-Type", "application/json; charset=utf-8"},
       {"Content-Length", "902"}, {"Connection", "keep-alive"},
       {"Set-Cookie",
        "__cfduid=dfacfa6922925e4bf7554bedf8b7d257f1495018081; expires=Thu, 17-May-18 10:48:01 GMT; path=/; domain=.randomuser.me; HttpOnly"},
       {"X-Powered-By", "Express"}, {"Access-Control-Allow-Origin", "*"},
       {"Cache-Control", "no-cache"}, {"ETag", "W/\"386-Vo9boHwE/NHhd96TFLFc5Q\""},
       {"Vary", "Accept-Encoding"}, {"Server", "cloudflare-nginx"},
       {"CF-RAY", "3606008429274457-BRU"}], status_code: 200}}
  end

  defp two_male_users do
    {:ok,
     %HTTPoison.Response{body: "{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"mr\",\"first\":\"troy\",\"last\":\"mills\"},\"location\":{\"street\":\"7796 ormond quay\",\"city\":\"new ross\",\"state\":\"limerick\",\"postcode\":36329},\"email\":\"troy.mills@example.com\",\"login\":{\"username\":\"beautifultiger517\",\"password\":\"albion\",\"salt\":\"Fouhpp5M\",\"md5\":\"046916d29b43b761262ec41bf4824662\",\"sha1\":\"e21efe0f1ac91832c6be6f807c47d32e24fab3fe\",\"sha256\":\"37829736be5901c7275875e074b6d7718312f8596f9d8029226b7ce04c61808c\"},\"dob\":\"1986-02-21 15:18:01\",\"registered\":\"2005-04-13 00:17:27\",\"phone\":\"061-217-4634\",\"cell\":\"081-325-6377\",\"id\":{\"name\":\"PPS\",\"value\":\"0705991T\"},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/men/47.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/men/47.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/men/47.jpg\"},\"nat\":\"IE\"},{\"gender\":\"male\",\"name\":{\"title\":\"mr\",\"first\":\"سینا\",\"last\":\"حسینی\"},\"location\":{\"street\":\"8974 17 شهریور\",\"city\":\"رشت\",\"state\":\"خوزستان\",\"postcode\":20563},\"email\":\"سینا.حسینی@example.com\",\"login\":{\"username\":\"silverlion371\",\"password\":\"rough\",\"salt\":\"v1K0hVle\",\"md5\":\"efb242d23172d2a16cd9767d853ae18f\",\"sha1\":\"26cd8d587693d0d2bfc14bbbf91271e6d3ff6ebf\",\"sha256\":\"47b50781f9b0bbca06ff8742b069fea37eadab58f808da4ba23c9d31dc6bedf3\"},\"dob\":\"1974-08-30 12:08:30\",\"registered\":\"2008-12-05 20:47:15\",\"phone\":\"042-02931862\",\"cell\":\"0942-179-8626\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/men/89.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/men/89.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/men/89.jpg\"},\"nat\":\"IR\"}],\"info\":{\"seed\":\"2a9e6889f46d8375\",\"results\":2,\"page\":1,\"version\":\"1.1\"}}",
      headers: [{"Date", "Wed, 17 May 2017 10:46:59 GMT"},
       {"Content-Type", "application/json; charset=utf-8"},
       {"Transfer-Encoding", "chunked"}, {"Connection", "keep-alive"},
       {"Set-Cookie",
        "__cfduid=d052aca5c57817ddc9730342c5b0e12e31495018019; expires=Thu, 17-May-18 10:46:59 GMT; path=/; domain=.randomuser.me; HttpOnly"},
       {"X-Powered-By", "Express"}, {"Access-Control-Allow-Origin", "*"},
       {"Cache-Control", "no-cache"}, {"ETag", "W/\"6a2-MU19F6E2gwuSIeENpMAJqQ\""},
       {"Vary", "Accept-Encoding"}, {"Server", "cloudflare-nginx"},
       {"CF-RAY", "3605fefdf9144457-BRU"}], status_code: 200}}
  end

  def three_females_from_br do
    {:ok,
     %HTTPoison.Response{body: "{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"miss\",\"first\":\"lourdes\",\"last\":\"das neves\"},\"location\":{\"street\":\"3512 rua santo antônio \",\"city\":\"vitória da conquista\",\"state\":\"amapá\",\"postcode\":93709},\"email\":\"lourdes.dasneves@example.com\",\"login\":{\"username\":\"beautifulcat489\",\"password\":\"maggot\",\"salt\":\"faXFmRKz\",\"md5\":\"309b533e9cbff5094c47ab409a2c8e97\",\"sha1\":\"397e380d0bd9bd7e142188fdf7d1f370d66d28a1\",\"sha256\":\"2c556c7ddb2015bf709fa94e5ca1bb170b67210a350b236cddee58bd5a4276b6\"},\"dob\":\"1952-07-07 05:43:09\",\"registered\":\"2007-05-26 02:44:01\",\"phone\":\"(82) 5297-3859\",\"cell\":\"(01) 1955-9655\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/women/73.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/women/73.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/women/73.jpg\"},\"nat\":\"BR\"},{\"gender\":\"female\",\"name\":{\"title\":\"ms\",\"first\":\"frida\",\"last\":\"alves\"},\"location\":{\"street\":\"5757 rua primeiro de maio \",\"city\":\"parintins\",\"state\":\"são paulo\",\"postcode\":88005},\"email\":\"frida.alves@example.com\",\"login\":{\"username\":\"yellowbird761\",\"password\":\"samantha\",\"salt\":\"ui4flG3n\",\"md5\":\"0c2acfb30998b0769f95f16c6c692be3\",\"sha1\":\"6d0b50ec3a380bb0a0508fd949c6ea446e18977c\",\"sha256\":\"49cf56f35042c31df0f3b66fc50f8eafa4536ad007a5aa2bc71c18a4e3c7efa2\"},\"dob\":\"1985-01-06 07:11:43\",\"registered\":\"2007-12-31 05:16:11\",\"phone\":\"(02) 1264-7265\",\"cell\":\"(04) 0099-4366\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/women/94.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/women/94.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/women/94.jpg\"},\"nat\":\"BR\"},{\"gender\":\"female\",\"name\":{\"title\":\"mrs\",\"first\":\"marissol\",\"last\":\"da paz\"},\"location\":{\"street\":\"3863 rua santa catarina \",\"city\":\"teixeira de freitas\",\"state\":\"são paulo\",\"postcode\":86833},\"email\":\"marissol.dapaz@example.com\",\"login\":{\"username\":\"crazymeercat348\",\"password\":\"biit\",\"salt\":\"rP7hlV3U\",\"md5\":\"5fbf24e9fd3420e44f748d2a7e7b70a2\",\"sha1\":\"530e4f8276b2e5cd046cd8d7fd4f35505d5428f2\",\"sha256\":\"3933837242daf903af9e69df4711218405be0bbea48ebb8c5cdf6bc1eaf24ee9\"},\"dob\":\"1963-09-06 20:40:42\",\"registered\":\"2011-09-08 09:11:52\",\"phone\":\"(03) 5452-0397\",\"cell\":\"(24) 8225-0910\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/women/6.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/women/6.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/women/6.jpg\"},\"nat\":\"BR\"}],\"info\":{\"seed\":\"1d164c6b2ce48dda\",\"results\":3,\"page\":1,\"version\":\"1.1\"}}",
      headers: [{"Date", "Wed, 17 May 2017 10:47:21 GMT"},
       {"Content-Type", "application/json; charset=utf-8"},
       {"Transfer-Encoding", "chunked"}, {"Connection", "keep-alive"},
       {"Set-Cookie",
        "__cfduid=d7256842881e135b3f9e018bbaf36e3d91495018041; expires=Thu, 17-May-18 10:47:21 GMT; path=/; domain=.randomuser.me; HttpOnly"},
       {"X-Powered-By", "Express"}, {"Access-Control-Allow-Origin", "*"},
       {"Cache-Control", "no-cache"}, {"ETag", "W/\"a03-c/xvksmkW/8NuaoVD1eD+A\""},
       {"Vary", "Accept-Encoding"}, {"Server", "cloudflare-nginx"},
       {"CF-RAY", "3605ff891f144457-BRU"}], status_code: 200}}
  end
end
