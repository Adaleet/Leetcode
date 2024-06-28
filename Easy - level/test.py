class Solution {
public:
    int findCenter(vector<vector<int>>& edges) {
        // Extract the first two edges
        int u1 = edges[0][0], v1 = edges[0][1];
        int u2 = edges[1][0], v2 = edges[1][1];
        
        // Determine the center by finding the common node
        if (u1 == u2 || u1 == v2) {
            return u1;
        }
        return v1;
    }
};
