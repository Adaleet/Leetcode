class Solution {
    public double findMedianSortedArrays(int[] nums1, int[] nums2) {
        // Combine the two arrays
        int[] combined = new int[nums1.length + nums2.length];
        System.arraycopy(nums1, 0, combined, 0, nums1.length);
        System.arraycopy(nums2, 0, combined, nums1.length, nums2.length);

        // Sort the combined array
        Arrays.sort(combined);

        int length = combined.length;

        // Find the median
        if (length % 2 == 0) {
            int middle1 = combined[length / 2 - 1];
            int middle2 = combined[length / 2];
            int sum = middle1 + middle2;
            return sum / 2.0; // Use 2.0 to ensure the result is a double
        } else {
            return combined[length / 2];
        }
    }
}
