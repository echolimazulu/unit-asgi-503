import falcon
import falcon.asgi


class ThingsResource:
    async def on_get(self, req, resp):
        resp.status = falcon.HTTP_200
        resp.content_type = falcon.MEDIA_TEXT
        resp.text = ('Hello World!\n')


app = falcon.asgi.App()

things = ThingsResource()

app.add_route('/things', things)
