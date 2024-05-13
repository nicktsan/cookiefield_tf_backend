from supertokens_python import init, InputAppInfo, SupertokensConfig
from supertokens_python.recipe import emailpassword, session

init(
    app_info=InputAppInfo(
        app_name="cookiedeck",
        api_domain="http://localhost:8080",
        website_domain="http://localhost:4200",
        api_base_path="/supertokenauth",
        website_base_path="/auth"
    ),
    supertokens_config=SupertokensConfig(
        # https://try.supertokens.com is for demo purposes. Replace this with the address of your core instance (sign up on supertokens.com), or self host a core.
        connection_uri="https://try.supertokens.com",
        # api_key=<API_KEY(if configured)>
    ),
    framework='django',
    recipe_list=[
        session.init(), # initializes session features
        emailpassword.init()
    ],
    mode='asgi' # use wsgi if you are running django server in sync mode
)