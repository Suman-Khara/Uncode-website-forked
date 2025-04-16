for (let i = 0; i < 100; i++) {
  fetch("http://localhost:5000/run", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ problem: "p2", input: "2\nhello\nworld" }),
  })
    .then((res) => res.json())
    .then((data) => console.log(i, data))
    .catch((err) => console.log(i, err.message));
}
