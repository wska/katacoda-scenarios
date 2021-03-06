# Adding Flask settings

Let us now add a Flask API endpoint. It is typical to set up some basic configuration along with an initialization of the Flask application. Let us also add a very simple open endpoint, which simply returns a greeting:

<pre class="file" data-filename="project/api.py" data-target="insert" data-marker="# Flask settings">
# Flask settings
app = Flask(__name__)

# Flask Open Endpoint
@app.route('/', methods=['GET'])
def home():
    return "Hello from the open endpoint\n"

# Flask Login Redirect
</pre>

We also added a marker for another endpoint, which has quite a *spoilery* name. More on that one later.

This setups up some basic Flask configuration and creates an API endpoint, located at the root of our hostaddress ("/").

Now, replace the existing pass inside of the main function with an `app.run()`, signaling Flask to start and run the application:

<pre class="file" data-filename="project/api.py" data-target="insert" data-marker="def main():
    pass">
def main():
    app.run(host='0.0.0.0', port=5000, debug=True)
</pre>

# Access the URL

You can start the application by running:

```python3 api.py```{{execute}}

One can now query the API (i.e. using `curl`). Since `Terminal 1` is used for the Flask application, lets open a new window:
```Click here!```{{execute T2}}

and query the endpoint using:

```curl http://127.0.0.1:5000/```{{execute T2}}
