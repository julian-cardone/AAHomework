function madLib(verb, adjective, noun){
    console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`);
}

madLib('make', 'best', 'guac');

function isSubstring(searchString, subString){
    console.log(searchString.includes(subString));
}

isSubstring("time to program", "time")


isSubstring("Jump for joy", "joys")

function fizzbuzz(array){
    let new_arr = [];

    for (let i = 0; i < array.length; i++){
        if (array[i] % 5 === 0 && array[i] % 3 == 0){
            continue;
        }
        if (array[i] % 5 === 0){
            new_arr.push(array[i]);
        }
        if (array[i] % 3 === 0){
            new_arr.push(array[i]);
        }
    }
    return new_arr;
}

console.log(fizzbuzz([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]));

function isPrime(number){
    if (number < 2){
        return false;
    }
    for (let i = 2; i < number; i++){
        if (number % i == 0){
            return false;
        }
    }
    return true;
}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
console.log(isPrime(3548563));

function sumOfNPrimes(n){
    let sum = 0;
    let primes = [];

    for (let i = 0; primes.length < n; i++){
        if (isPrime(i)){
            primes.push(i);
            sum += i;
        }
    }
    return sum
}

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));