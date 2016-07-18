defmodule CliTest do
  use ExUnit.Case
  alias RandomUserApi.CLI

  test "get_user_should_return_valid_map" do
    expected_result = %{"cell" => "043-959-84-19", "dob" => 805677838,
      "email" => "aada.halko@example.com", "gender" => "female",
      "id" => [{"name", "HETU"}, {"value", "33120925-F"}],
      "location" => [{"street", "2366 otavalankatu"},
      {"city", "järvenpää"}, {"state", "ostrobothnia"},
      {"postcode", 42346}],
      "login" => [{"username", "heavyduck848"}, {"password", "mother1"},
      {"salt", "wteItuO6"}, {"md5", "0b9ba42c3ce3e6c4d2ae983b68146a03"},
      {"sha1", "0bb31672608fd7e64904abf8d9d7a92e13479e10"},
      {"sha256",
       "c0356a9cc1d9da678e777ec2f78b60e7fd60d66deaf2ab1c156f2f3f8ded397b"}],
      "name" => [{"title", "miss"}, {"first", "aada"},
      {"last", "halko"}], "nat" => "FI", "phone" => "02-835-772",
      "picture" => [{"large",
       "https://randomuser.me/api/portraits/women/38.jpg"},
      {"medium",
       "https://randomuser.me/api/portraits/med/women/38.jpg"},
      {"thumbnail",
       "https://randomuser.me/api/portraits/thumb/women/38.jpg"}],
      "registered" => 1426011307}

    assert CLI.get_user == expected_result
  end
end
