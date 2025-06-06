<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>App Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #4e54c8, #8f94fb);
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        
        .login-container {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
        }
        
        .login-container h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: #333;
        }
        
        .login-container input[type="email"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 0.75rem;
            margin-bottom: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }
        
        .login-container button {
            width: 100%;
            padding: 0.75rem;
            background-color: #4e54c8;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s;
        }
        
        .login-container button:hover {
            background-color: #3b3fc1;
        }
        
        .login-container .register {
            text-align: center;
            margin-top: 1rem;
        }
        
        .login-container .register a {
            color: #4e54c8;
            text-decoration: none;
            font-weight: 500;
        }
    </style>
</head>

<body>

    <div class="login-container">
        <h2>Login to Your App</h2>
        <form action="/login" method="POST">
            <input type="email" name="email" placeholder="Email" required />
            <input type="password" name="password" placeholder="Password" required />
            <button type="submit">Login</button>
        </form>
        <div class="register">
            <p>Don't have an account? <a href="/register">Register</a></p>
        </div>
    </div>

</body>

</html>