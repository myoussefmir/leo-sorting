// The 'my-sort-4' main function.
function main(unsorted: [u32; 10]) -> [u32; 10] {
    let mut sorted = unsorted;
    let c: u32 = unsorted[0u32];
    // console.log("LOG: unsorted = {}", unsorted);
    for i in 0..10 { 
        // Last i elements are already in place  
        console.log("LOG: i = {}, sorted = {}", i, sorted);
        for j in 0..(10-i-1) {
            // traverse the array from 0 to n-i-1 
            // Swap if the element found is greater 
           // than the next element 
            if (sorted[j] > sorted[j+1]){ 
                let mut temp = sorted[j];
                sorted[j] = sorted[j+1];
                sorted[j+1] = temp;
            }
        }
    }        
    return sorted
}

test function test1_main() {
    let unsorted1: [u32; 10] = [34u32, 52u32, 999999u32, 84u32, 215u32, 102u32, 888u32, 9292u32, 50482u32, 954u32];
    let test_sorted1: [u32; 10] = [34u32, 52u32, 84u32, 102u32, 215u32, 888u32, 954u32, 9292u32, 50482u32, 999999u32];
    // console.log("LOG: test 1 unsorted1 = {}", unsorted1);
    let res = main(unsorted1);
    for i in 0..10 {
        // console.log("LOG: test 1 i = {}, res[i] = {}. test_sorted1[i] = {}",i, res[i] , test_sorted1[i]);
         console.assert(res[i] == test_sorted1[i]);
    }
}

test function test2_main() {
    let unsorted2: [u32; 10] = [34u32, 52u32, 999999u32, 84u32, 84u32, 102u32, 888u32, 9292u32, 50482u32, 954u32];
    let test_sorted2: [u32; 10] = [34u32, 52u32, 84u32, 84u32, 102u32, 888u32, 954u32, 9292u32, 50482u32, 999999u32];
    // console.log("LOG: test 2 unsorted2 = {}", unsorted2);

    let res = main(unsorted2);
    for i in 0..10 {
        // console.log("LOG: test 2 i = {}, res[i] = {}. test_sorted[i] = {}",i, res[i] , test_sorted2[i]);
        console.assert(res[i] == test_sorted2[i]);
    }
}