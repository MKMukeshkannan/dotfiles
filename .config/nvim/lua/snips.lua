local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local s = ls.snippet
local t = ls.text_node
local c = ls.choice_node
local i = ls.insert_node
local f = ls.function_node

ls.add_snippets("cpp", {
  s(
    "leet",
    fmt(
      [[
#include <iostream>

using namespace std;

class Solution {
public:
    /| /|(/|) {
      /|
    };
};

int main() {
  Solution s;

  /|

  /| res = s./|(/|);

  /|

  return 0;
}

]],
      {
        c(1, { t("int"), t("vector<int>"), t("vector<vector<int>>"), t("void") }),
        i(2, "BagOfTokens"),
        i(3, "vector<int> nums"),
        i(0),

        f(function(params)
          local paramsList = vim.split(params[1][1], ",", true)
          local res = {}

          for k in pairs(paramsList) do
            table.insert(res, paramsList[k] .. ";")
          end

          return res
        end, { 3 }),

        rep(1),

        rep(2),

        f(function(params)
          local paramsList = vim.split(params[1][1], ",", true)
          local res = ""

          for k in pairs(paramsList) do
            local last = vim.split(paramsList[k], " ", true)
            res = res .. last[#last] .. ","
          end

          return string.sub(res, 1, -2)
        end, { 3 }),

        f(function(returnTypeTable)
          local returnType = returnTypeTable[1][1]

          if returnType == "int" then
            return "cout << res;"
          elseif returnType == "vector<int>" then
            return 'for (auto i : res) cout << i << " ";'
          elseif returnType == "vector<vector<int>>" then
            return {
              "for (auto i : res) {",
              "\t\tfor (auto j : i) {",
              '\t\t\tcout << j << " ";',
              "\t\t}",
              "}",
            }
          end

          return ""
        end, { 1 }),
      },
      { delimiters = "/|" }
    )
  ),
})

ls.add_snippets("cpp", {
  s(
    "force",
    fmt(
      [[
#include <iostream>

using namespace std;

#define fast_io ios_base::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
#define io freopen(".//input.txt", "r", stdin); freopen(".//output.txt", "w", stdout); freopen(".//output.txt", "w", stderr);
#define endl '\n'

#define vi vector<int>
#define vvi vector<vector<int>>
#define pii pair<int, int>
#define ar array
#define ll long long
#define ld long double
#define sza(x) ((int)x.size())
#define all(a) (a).begin(), (a).end()

void solve() {

}

int main() {
    fast_io;
    io;

    int tc;
    cin >> tc;
    while (tc--) solve();

    return 0;
}
  ]],
      {},
      { delimiters = "/|" }
    )
  ),
})


ls.add_snippets("cpp", {
  s(
    "cses",
    fmt(
      [[
#include <iostream>

using namespace std;

#define fast_io ios_base::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
#define io freopen(".//input.txt", "r", stdin); freopen(".//output.txt", "w", stdout); freopen(".//output.txt", "w", stderr);
#define endl '\n'

#define vi vector<int>
#define vvi vector<vector<int>>
#define pii pair<int, int>
#define ar array
#define ll long long
#define ld long double
#define sza(x) ((int)x.size())
#define all(a) (a).begin(), (a).end()

void solve() {

}

int main() {
    fast_io;
    io;

    int tc = 1;
    while (tc--) solve();

    return 0;
}
  ]],
      {},
      { delimiters = "/|" }
    )
  ),
})
