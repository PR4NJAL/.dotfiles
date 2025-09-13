#include <bits/stdc++.h>
using namespace std;

void dfs(unordered_map<int, vector<int>> &graph, int cur, set<int> &visited) {
  if (visited.count(cur))
    return;
  visited.insert(cur);
  cout << cur << endl;
  for (auto &v : graph[cur]) {
    dfs(graph, v, visited);
  }
} // Depends in what format is the input given, here for every vertix there is a
  // list of connected vertix

void bfs(unordered_map<int, vector<int>> &graph, int node) {
  queue<int> q;
  set<int> visited;

  q.push(node);
  visited.insert(node);

  while (!q.empty()) {
    int v = q.back();
    q.pop();
    for (auto u : graph[v]) {
      if (visited.count(u))
        continue;
      q.push(u);
      visited.insert(u);
    }
    cout << v << endl;
  }
}

int main() { return 0; }
