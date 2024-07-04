const calculateServicePost = async (body) => {
    const response = await fetch("/calc", {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify(body)
    });

    return await response.json();
}


const calculate = async () => {
    const num1 = document.getElementById("num1");
    const num2 = document.getElementById("num2");
    const type = document.getElementById("type");
    const result = document.getElementById("result");

    if (num1.value && num2.value && type.value) {
        const data = await calculateServicePost({num1: num1.value, num2: num2.value, type: type.value});

        result.innerHTML = data?.result;
    } else {
        alert("Fill in the fields")
    }
}
