defmodule RandomUserApiEngineTest do
  use ExUnit.Case
  alias RandomUserApi.Engine

  doctest RandomUserApi.Engine

  test "get_two_males_works" do
    expected_result = [%{"cell" => "(483)-921-5156", "dob" => 410405071,
   "email" => "joris.faure@example.com", "gender" => "male",
   "id" => [{"name", "AVS"}, {"value", "756.HTRJ.SNML.69"}],
   "location" => [{"street", "4402 rue cyrus-hugues"},
    {"city", "peyres-possens"}, {"state", "aargau"}, {"postcode", 4678}],
   "login" => [{"username", "redpeacock921"}, {"password", "techno"},
    {"salt", "GCa06023"}, {"md5", "1d5899f01deb31eedf94851d1b06b282"},
    {"sha1", "551cb16c79bdb96fa5a8b6e41df59d7845f7b718"},
    {"sha256",
     "431f9ec8a95fab1c20b8e775c6c2c822d50f0ba65401f25da5719ae89f053ff0"}],
   "name" => [{"title", "monsieur"}, {"first", "joris"}, {"last", "faure"}],
   "nat" => "CH", "phone" => "(150)-300-4521",
   "picture" => [{"large", "https://randomuser.me/api/portraits/men/49.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/men/49.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/men/49.jpg"}],
   "registered" => 1435135921},
 %{"cell" => "0950-912-4930", "dob" => 142851353,
   "email" => "محمدامين.پارسا@example.com", "gender" => "male",
   "id" => [{"name", ""}, {"value", :null}],
   "location" => [{"street", "7509 شهید کشواد"},
    {"city", "ساری"}, {"state", "مرکزی"}, {"postcode", 46498}],
   "login" => [{"username", "lazybird909"}, {"password", "jeep"},
    {"salt", "xFcn7Ukv"}, {"md5", "28a3040cf00aa62bf75a97c17d5dc21a"},
    {"sha1", "06163dee98ba0abe7e19a706132b992ef94b9a66"},
    {"sha256",
     "5162bf8db815f52f36782ca14cec4a4836bddedeaa527fe57a4520b1e2088551"}],
   "name" => [{"title", "mr"}, {"first", "محمدامين"},
    {"last", "پارسا"}], "nat" => "IR", "phone" => "035-11549175",
   "picture" => [{"large", "https://randomuser.me/api/portraits/men/16.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/men/16.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/men/16.jpg"}],
   "registered" => 1331266826}]
    assert Engine.get_users([number: 2, gender: :male]) == expected_result
  end

  test "get_three_females_from_br_or_ca_works" do
      expected_result = [%{"cell" => "423-257-7452", "dob" => 587996788,
   "email" => "harper.brown@example.com", "gender" => "female",
   "id" => [{"name", ""}, {"value", :null}],
   "location" => [{"street", "7650 disputed rd"}, {"city", "cadillac"},
    {"state", "nova scotia"}, {"postcode", 47287}],
   "login" => [{"username", "bluegorilla893"}, {"password", "azzer"},
    {"salt", "8JcRKIbu"}, {"md5", "b11b7c671c236547056b1141cfd6a8c0"},
    {"sha1", "fd793a739cd8a0cd112589ec51b9cb2b273d30c9"},
    {"sha256",
     "163ec5c1ab6e51cbd172862d91c9deff25bf8d6412e07cd1bbea0065054aa18a"}],
   "name" => [{"title", "miss"}, {"first", "harper"}, {"last", "brown"}],
   "nat" => "CA", "phone" => "289-974-8704",
   "picture" => [{"large",
     "https://randomuser.me/api/portraits/women/47.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/women/47.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/women/47.jpg"}],
   "registered" => 1191445651},
 %{"cell" => "(62) 4386-9592", "dob" => 650114648,
   "email" => "daiane.farias@example.com", "gender" => "female",
   "id" => [{"name", ""}, {"value", :null}],
   "location" => [{"street", "1560 rua das flores "}, {"city", "guarujá"},
    {"state", "paraná"}, {"postcode", 31565}],
   "login" => [{"username", "redbutterfly452"}, {"password", "mantis"},
    {"salt", "UCjTvHVB"}, {"md5", "456cf564d31e6d5752cdb4369e49f515"},
    {"sha1", "d76494760467aace0a046ddcb0bf83cd3a31dd98"},
    {"sha256",
     "1e2b27d163d779925c871fe60de8983205dfb01b545a6c0590a4c4680e74b065"}],
   "name" => [{"title", "ms"}, {"first", "daiane"}, {"last", "farias"}],
   "nat" => "BR", "phone" => "(76) 9288-5062",
   "picture" => [{"large", "https://randomuser.me/api/portraits/women/7.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/women/7.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/women/7.jpg"}],
   "registered" => 1225553978},
 %{"cell" => "272-101-1332", "dob" => 825734892,
   "email" => "charlotte.kowalski@example.com", "gender" => "female",
   "id" => [{"name", ""}, {"value", :null}],
   "location" => [{"street", "4416 vimy st"}, {"city", "borden"},
    {"state", "british columbia"}, {"postcode", 19578}],
   "login" => [{"username", "tinycat237"}, {"password", "tuan"},
    {"salt", "0MoWIFBZ"}, {"md5", "786e5a91ce843bb7ce7dab7bd6f8fc43"},
    {"sha1", "66b9b944cdde8c1b7dc08d3cb2e44defd6582a07"},
    {"sha256",
     "2bf22107181d53d6a799b309a5d227027e3a6d162890bda2082fc733ad1717df"}],
   "name" => [{"title", "ms"}, {"first", "charlotte"}, {"last", "kowalski"}],
   "nat" => "CA", "phone" => "230-207-8629",
   "picture" => [{"large",
     "https://randomuser.me/api/portraits/women/32.jpg"},
    {"medium", "https://randomuser.me/api/portraits/med/women/32.jpg"},
    {"thumbnail", "https://randomuser.me/api/portraits/thumb/women/32.jpg"}],
   "registered" => 1427230852}]
      assert Engine.get_users([number: 3, gender: :female, nat: ["BR", "CA", "PL"]]) == expected_result
  end

  test "inc_works_properly" do
    expected_result = [%{"cell" => "272-101-1332", "nat" => "CA"}]
      assert Engine.get_users([inc: ["cell", "nat"]]) == expected_result
  end

  test "inc_and_exc_when_have_same_values_return_empty_users" do
    expected_result = [%{}, %{}]
      assert Engine.get_users([number: 2, inc: ["cell"], exc: ["cell"]]) == expected_result
  end
end
