defmodule RandomUserApiEngineTest do
  use ExUnit.Case
  alias RandomUserApi.Engine

  doctest RandomUserApi.Engine

  test "simplest call works" do
    expected_result = [%{"cell" => "0170-1935915", "dob" => "1982-01-06 17:51:08",
   "email" => "jasmina.hübner@example.com", "gender" => "female",
   "id" => [{"name", ""}, {"value", :null}],
   "location" => [{"street", "6147 wiesenstraße"},
    {"city", "mühldorf a. inn"}, {"state", "bayern"}, {"postcode", 87463}],
   "login" => [{"username", "ticklishfish633"}, {"password", "triple"},
    {"salt", "RgpNZK3j"}, {"md5", "247dc676ceab05495cb7d50dd33929df"},
    {"sha1", "3e2bf9381a60d8745b9bbeb4f24caf8b4afe3821"},
    {"sha256",
     "c0b522367dfab874da21bbab4bbaf4c76e25912aab15409acae3fefa0b30d716"}],
   "name" => [{"title", "miss"}, {"first", "jasmina"}, {"last", "hübner"}],
   "nat" => "DE", "phone" => "0073-3506835",
   "picture" => [{"large", "https://randomuser.me/api/portraits/women/16.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/women/16.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/women/16.jpg"}],
   "registered" => "2008-09-02 03:09:32"}]

    assert Engine.get_users() == expected_result
  end

  test "get_two_males_works" do
    expected_result = [%{"cell" => "081-325-6377", "dob" => "1986-02-21 15:18:01",
   "email" => "troy.mills@example.com", "gender" => "male",
   "id" => [{"name", "PPS"}, {"value", "0705991T"}],
   "location" => [{"street", "7796 ormond quay"}, {"city", "new ross"},
    {"state", "limerick"}, {"postcode", 36329}],
   "login" => [{"username", "beautifultiger517"}, {"password", "albion"},
    {"salt", "Fouhpp5M"}, {"md5", "046916d29b43b761262ec41bf4824662"},
    {"sha1", "e21efe0f1ac91832c6be6f807c47d32e24fab3fe"},
    {"sha256",
     "37829736be5901c7275875e074b6d7718312f8596f9d8029226b7ce04c61808c"}],
   "name" => [{"title", "mr"}, {"first", "troy"}, {"last", "mills"}],
   "nat" => "IE", "phone" => "061-217-4634",
   "picture" => [{"large", "https://randomuser.me/api/portraits/men/47.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/men/47.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/men/47.jpg"}],
   "registered" => "2005-04-13 00:17:27"},
 %{"cell" => "0942-179-8626", "dob" => "1974-08-30 12:08:30",
   "email" => "سینا.حسینی@example.com", "gender" => "male",
   "id" => [{"name", ""}, {"value", :null}],
   "location" => [{"street", "8974 17 شهریور"}, {"city", "رشت"},
    {"state", "خوزستان"}, {"postcode", 20563}],
   "login" => [{"username", "silverlion371"}, {"password", "rough"},
    {"salt", "v1K0hVle"}, {"md5", "efb242d23172d2a16cd9767d853ae18f"},
    {"sha1", "26cd8d587693d0d2bfc14bbbf91271e6d3ff6ebf"},
    {"sha256",
     "47b50781f9b0bbca06ff8742b069fea37eadab58f808da4ba23c9d31dc6bedf3"}],
   "name" => [{"title", "mr"}, {"first", "سینا"}, {"last", "حسینی"}],
   "nat" => "IR", "phone" => "042-02931862",
   "picture" => [{"large", "https://randomuser.me/api/portraits/men/89.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/men/89.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/men/89.jpg"}],
   "registered" => "2008-12-05 20:47:15"}]

    assert Engine.get_users([number: 2, gender: :male]) == expected_result
  end

  test "get_three_females_from_br_or_ca_works" do
    expected_result = [%{"cell" => "(01) 1955-9655", "dob" => "1952-07-07 05:43:09",
   "email" => "lourdes.dasneves@example.com", "gender" => "female",
   "id" => [{"name", ""}, {"value", :null}],
   "location" => [{"street", "3512 rua santo antônio "},
    {"city", "vitória da conquista"}, {"state", "amapá"},
    {"postcode", 93709}],
   "login" => [{"username", "beautifulcat489"}, {"password", "maggot"},
    {"salt", "faXFmRKz"}, {"md5", "309b533e9cbff5094c47ab409a2c8e97"},
    {"sha1", "397e380d0bd9bd7e142188fdf7d1f370d66d28a1"},
    {"sha256",
     "2c556c7ddb2015bf709fa94e5ca1bb170b67210a350b236cddee58bd5a4276b6"}],
   "name" => [{"title", "miss"}, {"first", "lourdes"}, {"last", "das neves"}],
   "nat" => "BR", "phone" => "(82) 5297-3859",
   "picture" => [{"large", "https://randomuser.me/api/portraits/women/73.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/women/73.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/women/73.jpg"}],
   "registered" => "2007-05-26 02:44:01"},
 %{"cell" => "(04) 0099-4366", "dob" => "1985-01-06 07:11:43",
   "email" => "frida.alves@example.com", "gender" => "female",
   "id" => [{"name", ""}, {"value", :null}],
   "location" => [{"street", "5757 rua primeiro de maio "},
    {"city", "parintins"}, {"state", "são paulo"}, {"postcode", 88005}],
   "login" => [{"username", "yellowbird761"}, {"password", "samantha"},
    {"salt", "ui4flG3n"}, {"md5", "0c2acfb30998b0769f95f16c6c692be3"},
    {"sha1", "6d0b50ec3a380bb0a0508fd949c6ea446e18977c"},
    {"sha256",
     "49cf56f35042c31df0f3b66fc50f8eafa4536ad007a5aa2bc71c18a4e3c7efa2"}],
   "name" => [{"title", "ms"}, {"first", "frida"}, {"last", "alves"}],
   "nat" => "BR", "phone" => "(02) 1264-7265",
   "picture" => [{"large", "https://randomuser.me/api/portraits/women/94.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/women/94.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/women/94.jpg"}],
   "registered" => "2007-12-31 05:16:11"},
 %{"cell" => "(24) 8225-0910", "dob" => "1963-09-06 20:40:42",
   "email" => "marissol.dapaz@example.com", "gender" => "female",
   "id" => [{"name", ""}, {"value", :null}],
   "location" => [{"street", "3863 rua santa catarina "},
    {"city", "teixeira de freitas"}, {"state", "são paulo"},
    {"postcode", 86833}],
   "login" => [{"username", "crazymeercat348"}, {"password", "biit"},
    {"salt", "rP7hlV3U"}, {"md5", "5fbf24e9fd3420e44f748d2a7e7b70a2"},
    {"sha1", "530e4f8276b2e5cd046cd8d7fd4f35505d5428f2"},
    {"sha256",
     "3933837242daf903af9e69df4711218405be0bbea48ebb8c5cdf6bc1eaf24ee9"}],
   "name" => [{"title", "mrs"}, {"first", "marissol"}, {"last", "da paz"}],
   "nat" => "BR", "phone" => "(03) 5452-0397",
   "picture" => [{"large", "https://randomuser.me/api/portraits/women/6.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/women/6.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/women/6.jpg"}],
   "registered" => "2011-09-08 09:11:52"}]

    assert Engine.get_users([number: 3, gender: :female, nat: "BR"]) == expected_result
  end
end
