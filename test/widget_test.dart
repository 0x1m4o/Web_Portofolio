void main() {
  Solution().twoSum([10, 8, 9], 19);
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> result = [];

    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          result.addAll([i, j]);
          break;
        }
      }
    }

    return result;
  }
}
