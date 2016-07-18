defmodule RandomUserApi.TestAPI do

  @random_me_url Application.get_env :random_user_api, :random_me_url
  def get(url) do
    case url do
      @random_me_url -> _valid
       _ -> _invalid
    end
  end

  defp _valid do
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

  defp _invalid do
    "Nothing interesting here"
  end
end