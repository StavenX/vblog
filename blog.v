import vweb
import time

struct App {
	vweb.Context
}

fn main() {
	app := App{}
	vweb.run(app, 8081)
}

['/index']
pub fn (mut app App) index() vweb.Result {
	return app.text('Hello world from vweb!')
}

['/time']
pub fn (mut app App) time() vweb.Result {
	return app.text('Current time: ' + time.now().format())
}