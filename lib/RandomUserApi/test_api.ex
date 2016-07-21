defmodule RandomUserApi.TestAPI do

  @random_me_url Application.get_env :random_user_api, :random_me_url
  def get(url) do
    case url do
      @random_me_url -> _single_user
      @random_me_url <> "?gender=female" -> _female
      @random_me_url <> "?gender=male" -> _male
      @random_me_url <> "?results=2" -> _two_users
      @random_me_url <> "?results=3&gender=male" -> _three_males
       _ -> _invalid
    end
  end

  defp _single_user do
    {:ok,
  %HTTPoison.Response{body: "{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"miss\",\"first\":\"aada\",\"last\":\"halko\"},\"location\":{\"street\":\"2366 otavalankatu\",\"city\":\"järvenpää\",\"state\":\"ostrobothnia\",\"postcode\":42346},\"email\":\"aada.halko@example.com\",\"login\":{\"username\":\"heavyduck848\",\"password\":\"mother1\",\"salt\":\"wteItuO6\",\"md5\":\"0b9ba42c3ce3e6c4d2ae983b68146a03\",\"sha1\":\"0bb31672608fd7e64904abf8d9d7a92e13479e10\",\"sha256\":\"c0356a9cc1d9da678e777ec2f78b60e7fd60d66deaf2ab1c156f2f3f8ded397b\"},\"registered\":1426011307,\"dob\":805677838,\"phone\":\"02-835-772\",\"cell\":\"043-959-84-19\",\"id\":{\"name\":\"HETU\",\"value\":\"33120925-F\"},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/women/38.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/women/38.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/women/38.jpg\"},\"nat\":\"FI\"}],\"info\":{\"seed\":\"7194c9d45824a6c3\",\"results\":1,\"page\":1,\"version\":\"1.0\"}}",
  headers: [{"Server", "nginx"}, {"Date", "Mon, 18 Jul 2016 06:09:12 GMT"},
   {"Content-Type", "application/json; charset=utf-8"},
   {"Content-Length", "879"}, {"Connection", "keep-alive"},
   {"X-Powered-By", "Express"}, {"Access-Control-Allow-Origin", "*"},
   {"Cache-Control", "no-cache"}, {"ETag", "W/\"36f-GxpNF/Lc+qhAbenXKRfh2w\""},
   {"Vary", "Accept-Encoding"},
   {"Strict-Transport-Security", "max-age=31536000;"}], status_code: 200}}
  end

  defp _female do
    {:ok,
 %HTTPoison.Response{body: "{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"miss\",\"first\":\"crystal\",\"last\":\"king\"},\"location\":{\"street\":\"7996 timber wolf trail\",\"city\":\"orange\",\"state\":\"south australia\",\"postcode\":3485},\"email\":\"crystal.king@example.com\",\"login\":{\"username\":\"greenkoala674\",\"password\":\"william1\",\"salt\":\"itTfDqhC\",\"md5\":\"269fbb1802e0008d3aa7aafa224cfea7\",\"sha1\":\"a5175c85d97d6f1b8d69acb8c381fb5eaf4b54d2\",\"sha256\":\"ab99e2482130842dcce87f651353b1bbe607494815a455eb56df5a1384033063\"},\"registered\":1390890982,\"dob\":1362589514,\"phone\":\"03-3162-2043\",\"cell\":\"0498-757-680\",\"id\":{\"name\":\"TFN\",\"value\":\"319237329\"},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/women/81.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/women/81.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/women/81.jpg\"},\"nat\":\"AU\"}],\"info\":{\"seed\":\"006b93b865ca4c9c\",\"results\":1,\"page\":1,\"version\":\"1.0\"}}",
  headers: [{"X-Bst-Request-Id", "sfrTVh:sln:85575"},
   {"X-Bst-Info",
    "t=1469083364,h=02e,p=52659_2107:2_9697,u=278112962,c=2339,v=7.9.52444.196"},
   {"Server", "nginx"}, {"Date", "Thu, 21 Jul 2016 06:42:44 GMT"},
   {"Content-Type", "application/json; charset=utf-8"},
   {"Content-Length", "886"}, {"X-Powered-By", "Express"},
   {"Access-Control-Allow-Origin", "*"}, {"Cache-Control", "no-cache"},
   {"ETag", "W/\"376-5SdjGjq3x5qTufcbrSg7RQ\""}, {"Vary", "Accept-Encoding"},
   {"Connection", "keep-alive"}, {"Via", "1.1 hosted.websense 02e"}],
  status_code: 200}}
  end

  defp _male do
    {:ok,
 %HTTPoison.Response{body: "{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"mr\",\"first\":\"akseli\",\"last\":\"nevala\"},\"location\":{\"street\":\"6669 pirkankatu\",\"city\":\"multia\",\"state\":\"north karelia\",\"postcode\":53326},\"email\":\"akseli.nevala@example.com\",\"login\":{\"username\":\"blacklion395\",\"password\":\"bigbooty\",\"salt\":\"9NYe8Wby\",\"md5\":\"aaa42932c031a12b3edea3dd8877d308\",\"sha1\":\"14ce17bdb172051b4e0145b60e8143a9267d72bc\",\"sha256\":\"c165f9f5919b4b4942861d9693cc7757d87d1599e9745d326b08fa670970b4e1\"},\"registered\":1159726218,\"dob\":736120677,\"phone\":\"04-104-015\",\"cell\":\"045-021-04-08\",\"id\":{\"name\":\"HETU\",\"value\":\"72057430-I\"},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/men/79.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/men/79.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/men/79.jpg\"},\"nat\":\"FI\"}],\"info\":{\"seed\":\"2d3c5ddfc395c5a5\",\"results\":1,\"page\":1,\"version\":\"1.0\"}}",
  headers: [{"X-Bst-Request-Id", "sfrTVh:sln:85829"},
   {"X-Bst-Info",
    "t=1469083417,h=02e,p=52659_2107:2_9697,u=278112962,c=2339,v=7.9.52444.196"},
   {"Server", "nginx"}, {"Date", "Thu, 21 Jul 2016 06:43:37 GMT"},
   {"Content-Type", "application/json; charset=utf-8"},
   {"Content-Length", "869"}, {"X-Powered-By", "Express"},
   {"Access-Control-Allow-Origin", "*"}, {"Cache-Control", "no-cache"},
   {"ETag", "W/\"365-KwJgRnLmQpd46GmSTW6S1w\""}, {"Vary", "Accept-Encoding"},
   {"Connection", "keep-alive"}, {"Via", "1.1 hosted.websense 02e"}],
  status_code: 200}}
  end

  defp _two_users do
    {:ok,
 %HTTPoison.Response{body: "{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"mrs\",\"first\":\"ishara\",\"last\":\"kusters\"},\"location\":{\"street\":\"4053 jutfaseweg\",\"city\":\"hardinxveld-giessendam\",\"state\":\"friesland\",\"postcode\":65452},\"email\":\"ishara.kusters@example.com\",\"login\":{\"username\":\"whiteleopard472\",\"password\":\"paladin\",\"salt\":\"T2RZsqRw\",\"md5\":\"62589627bfa749af71c1727d1a2323d4\",\"sha1\":\"1482978ad48cce23ca56000d6ff2ee65519193cb\",\"sha256\":\"bd30ac655824588e1022efa403c811da0334c3345b28f3bb2b1a7fa8aa36516b\"},\"registered\":1164017514,\"dob\":31304024,\"phone\":\"(935)-804-8781\",\"cell\":\"(263)-710-9427\",\"id\":{\"name\":\"BSN\",\"value\":\"16627840\"},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/women/2.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/women/2.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/women/2.jpg\"},\"nat\":\"NL\"},{\"gender\":\"female\",\"name\":{\"title\":\"miss\",\"first\":\"constance\",\"last\":\"roux\"},\"location\":{\"street\":\"6869 place du 8 février 1962\",\"city\":\"saint-étienne\",\"state\":\"loire-atlantique\",\"postcode\":93633},\"email\":\"constance.roux@example.com\",\"login\":{\"username\":\"tinykoala359\",\"password\":\"newton\",\"salt\":\"Zc8SsliN\",\"md5\":\"8bdac7fc031bd11add2a85ba25872b00\",\"sha1\":\"bce64972142ad59b89842284096f3044cff3d78f\",\"sha256\":\"a34123fa13b330b32652dc10542f6ce1355de60e057275f3bc329ab309e15dc8\"},\"registered\":1170397893,\"dob\":686755146,\"phone\":\"03-80-51-46-09\",\"cell\":\"06-41-55-16-46\",\"id\":{\"name\":\"INSEE\",\"value\":\"291939669217 03\"},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/women/66.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/women/66.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/women/66.jpg\"},\"nat\":\"FR\"}],\"info\":{\"seed\":\"a7878fcc5b0f310c\",\"results\":2,\"page\":1,\"version\":\"1.0\"}}",
  headers: [{"X-Bst-Request-Id", "sfrTVh:sln:85320"},
   {"X-Bst-Info",
    "t=1469083299,h=02e,p=52659_2107:2_9697,u=278112962,c=2339,v=7.9.52444.196"},
   {"Server", "nginx"}, {"Date", "Thu, 21 Jul 2016 06:41:39 GMT"},
   {"Content-Type", "application/json; charset=utf-8"},
   {"Content-Length", "1722"}, {"X-Powered-By", "Express"},
   {"Access-Control-Allow-Origin", "*"}, {"Cache-Control", "no-cache"},
   {"ETag", "W/\"6ba-kiedIXPsOCzNGsSkuT3GQQ\""}, {"Vary", "Accept-Encoding"},
   {"Connection", "keep-alive"}, {"Via", "1.1 hosted.websense 02e"}],
  status_code: 200}}
  end

  defp _three_males do
{:ok,
 %HTTPoison.Response{body: "{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"mr\",\"first\":\"alexandre\",\"last\":\"leroux\"},\"location\":{\"street\":\"8167 quai charles-de-gaulle\",\"city\":\"pau\",\"state\":\"haute-vienne\",\"postcode\":64310},\"email\":\"alexandre.leroux@example.com\",\"login\":{\"username\":\"goldencat213\",\"password\":\"leslie\",\"salt\":\"2Ep2EGpU\",\"md5\":\"6ae95d64563786d8811b0e1c4b9b71ff\",\"sha1\":\"a718d0dd0bfbcd8a12173f7867d552b503224d28\",\"sha256\":\"d53cb0e22403b8e061546f590686d8ec42738fa6852a2a271c7093bf224f6918\"},\"registered\":1084598512,\"dob\":456317223,\"phone\":\"02-74-57-21-45\",\"cell\":\"06-62-22-47-63\",\"id\":{\"name\":\"INSEE\",\"value\":\"184576471206 36\"},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/men/39.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/men/39.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/men/39.jpg\"},\"nat\":\"FR\"},{\"gender\":\"male\",\"name\":{\"title\":\"mr\",\"first\":\"ezra\",\"last\":\"jackson\"},\"location\":{\"street\":\"5066 dickens street\",\"city\":\"blenheim\",\"state\":\"hawke's bay\",\"postcode\":91234},\"email\":\"ezra.jackson@example.com\",\"login\":{\"username\":\"ticklishsnake931\",\"password\":\"evan\",\"salt\":\"Noq2C10q\",\"md5\":\"7904facb79fde37f5450d0f163e399ae\",\"sha1\":\"12b2389b17a7920f8aeef8047ab2a1c06d7e8a4f\",\"sha256\":\"81d0b02c28c98b696fb9a6e54ed3065d58c2effb351611bf26b968a3f8b279da\"},\"registered\":1413661492,\"dob\":1387266257,\"phone\":\"(971)-614-7560\",\"cell\":\"(367)-467-1676\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/men/79.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/men/79.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/men/79.jpg\"},\"nat\":\"NZ\"},{\"gender\":\"male\",\"name\":{\"title\":\"mr\",\"first\":\"isaiah\",\"last\":\"scott\"},\"location\":{\"street\":\"6306 station road\",\"city\":\"tralee\",\"state\":\"limerick\",\"postcode\":62131},\"email\":\"isaiah.scott@example.com\",\"login\":{\"username\":\"smallrabbit121\",\"password\":\"barcelona\",\"salt\":\"5UZjzWwi\",\"md5\":\"6c36ffece2efc2d0b73f9da88dd7d802\",\"sha1\":\"b43c65aefc130f79ebda9d3922ac65f44df19707\",\"sha256\":\"656bc511b8da3aa43c1a31c47230712e026f42e25768a4f3b49aa5ed2fa725a2\"},\"registered\":1061140282,\"dob\":1388244305,\"phone\":\"021-102-7552\",\"cell\":\"081-955-3384\",\"id\":{\"name\":\"PPS\",\"value\":\"3721251TA\"},\"picture\":{\"large\":\"https://randomuser.me/api/portraits/men/52.jpg\",\"medium\":\"https://randomuser.me/api/portraits/med/men/52.jpg\",\"thumbnail\":\"https://randomuser.me/api/portraits/thumb/men/52.jpg\"},\"nat\":\"IE\"}],\"info\":{\"seed\":\"bb99c2e1cf552f8e\",\"results\":3,\"page\":1,\"version\":\"1.0\"}}",
  headers: [{"X-Bst-Request-Id", "dQQTVh:3Dg:55908"},
   {"X-Bst-Info",
    "t=1469084839,h=25e,p=52659_2107:2_9697,u=278112962,c=2339,v=7.9.52444.196"},
   {"Server", "nginx"}, {"Date", "Thu, 21 Jul 2016 07:07:19 GMT"},
   {"Content-Type", "application/json; charset=utf-8"},
   {"Content-Length", "2454"}, {"X-Powered-By", "Express"},
   {"Access-Control-Allow-Origin", "*"}, {"Cache-Control", "no-cache"},
   {"ETag", "W/\"996-2gudN/xfcx0lC4bu+yn3YA\""}, {"Vary", "Accept-Encoding"},
   {"Connection", "keep-alive"}, {"Via", "1.1 hosted.websense 25e"}],
  status_code: 200}}

  end
  defp _invalid do
    "Nothing interesting here"
  end
end