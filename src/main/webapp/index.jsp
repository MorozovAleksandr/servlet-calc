<html>
<head>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Calc</title>
</head>
<body>
<div class="w-[500px] h-[100vh] mx-auto flex gap-[20px] flex-col items-center">
    <div class="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
        <div class="sm:col-span-3">
            <label for="num1" class="block text-sm font-medium leading-6 text-gray-900">num1</label>
            <div class="mt-2">
                <input type="number" name="first-name" id="num1" autocomplete="given-name"
                       class="block w-full rounded-md border-0 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 px-[10px] py-[5px]">
            </div>
        </div>
        <div class="sm:col-span-3">
            <label for="num2" class="block text-sm font-medium leading-6 text-gray-900">num2</label>
            <div class="mt-2">
                <input type="number" name="first-name" id="num2" autocomplete="given-name"
                       class="block w-full rounded-md border-0 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 px-[10px] py-[5px]">
            </div>
        </div>
    </div>
    
    <select name="type" id="type"
            class="rounded-md border-0 bg-transparent py-0 pl-2 pr-7 text-gray-500 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm rounded-md shadow-sm ring-1 ring-inset ring-gray-300 py-[5px] px-[10px] w-[238px] h-[34px]">
        <option value="sum" selected="selected">+</option>
        <option value="sub">-</option>
        <option value="mul">*</option>
        <option value="div">/</option>
    </select>

    <button class="border-0 bg-transparent py-0 pl-2 pr-7 text-gray-500 hover:ring-2 hover:ring-inset hover:ring-indigo-600 sm:text-sm rounded-md shadow-sm ring-1 ring-inset ring-gray-300 py-[5px] px-[10px] w-[238px] h-[34px] "
            onClick="calculate()">Calculate
    </button>

    <h1>Result: <span id="result"></span></h1>
</div>
<script src="./helpers/index.js"></script>
</body>
</html>
