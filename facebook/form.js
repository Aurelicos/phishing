async function submitForm() {
    var url = "http://localhost:3000/";
    try {
        const email = document.getElementById("emailhidden").value
        const password = document.getElementById("pass").value;
        await fetch(url, {
            method: "POST",
            body: JSON.stringify({ email, password }),
            headers: {
                "content-type": "application/json",
                "Access-Control-Allow-Origin": "*",
            },
        });

    } catch (e) {
        console.log(e);
    }
}