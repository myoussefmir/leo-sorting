// The 'my-sort-3' main function.
function main(unsorted: [u32; 10]) -> [u32; 10] {
    let mut sorted = unsorted;
    let c: u32 = unsorted[0u32];
    // console.log("LOG: unsorted = {}", unsorted);

    // One by one move boundary of unsorted subarray  
    for i in 0..10 { 
        // Find the minimum element in unsorted array  
        let mut min_idx = i;
        let mut sorted_min_idx = sorted[i];  
        // console.log("LOG: i = {}, sorted = {}", i, sorted);
        // console.log("LOG: min_idx before the inner loop is {}", min_idx);            
        for j in (i+1)..10 { 
            // console.log("LOG: i = {} j = {}", i, j);            
            if (sorted[j] < sorted_min_idx)  {
                // console.log("LOG: Inside conditional i = {} j = {}", i, j);
                min_idx = j;  
                sorted_min_idx = sorted[j];                
            }
        }
        // Swap the found minimum element with the first element
        // console.log("LOG: i = {} after the inner loop min_idx is {}, sorted_min_idx is {}, sorted[i] is {}", i, min_idx, sorted_min_idx,sorted[i]);            
        // if...else tree seems to be required to get things to compile
        if (min_idx == 0) {
            sorted[0] = sorted[i]; //switch tip value into sorted[min_idx]
        } else if (min_idx == 1) {
            sorted[1] = sorted[i]; //switch tip value into sorted[min_idx]
        } else if (min_idx == 2) {
            sorted[2] = sorted[i]; //switch tip value into sorted[min_idx]
        } else if (min_idx == 3) {
            sorted[3] = sorted[i]; //switch tip value into sorted[min_idx]
        } else if (min_idx == 4) {
            sorted[4] = sorted[i]; //switch tip value into sorted[min_idx]
        } else if (min_idx == 5) {
            sorted[5] = sorted[i]; //switch tip value into sorted[min_idx]
        } else if (min_idx == 6) {
            sorted[6] = sorted[i]; //switch tip value into sorted[min_idx]
        } else if (min_idx == 7) {
            sorted[7] = sorted[i]; //switch tip value into sorted[min_idx]
        } else if (min_idx == 8) {
            sorted[8] = sorted[i]; //switch tip value into sorted[min_idx]
        } else if (min_idx == 9) {
            sorted[9] = sorted[i]; //switch tip value into sorted[min_idx]
        }

        sorted[i] = sorted_min_idx; // put minimum into the tip
        // console.log("LOG: i = {}, sorted = {}", i, sorted);
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