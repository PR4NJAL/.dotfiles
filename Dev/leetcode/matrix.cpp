#include <bits/stdc++.h>
using namespace std;

void dfs(vector<vector<int>> &matrix, int i, int j,
         vector<vector<bool>> &visited) {
  if (i < 0 || i >= visited.size() || j < 0 || j >= visited[0].size() ||
      visited[i][j])
    return;
  visited[i][j] = true;
  cout << matrix[i][j] << endl;
  dfs(matrix, i + 1, j, visited);
  dfs(matrix, i, j + 1, visited);
  dfs(matrix, i - 1, j, visited);
  dfs(matrix, i, j - 1, visited);
}

vector<vector<int>> dirs = {{1, 0}, {0, 1}, {-1, 0}, {0, -1}};
void bfs(vector<vector<int>> &grid, int i, int j) {
  queue<pair<int, int>> q;
  vector<vector<bool>> visited;
  q.push({i, j});
  visited[i][j] = true;

  while (!q.empty()) {
    pair<int, int> cur = q.back();
    q.pop();
    for (auto dir : dirs) {
      int i = cur.first + dir[0];
      int j = cur.second + dir[1];
      if (i < 0 || i >= grid.size() || j < 0 || j > grid[0].size() ||
          visited[i][j])
        continue;
      visited[i][j] = true;
      q.push({i, j});
      cout << grid[i][j] << endl;
    }
  }
}

int main() { return 0; }
