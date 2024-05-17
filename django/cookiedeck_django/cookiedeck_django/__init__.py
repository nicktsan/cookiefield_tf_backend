from supertokens_python import init, InputAppInfo, SupertokensConfig
from supertokens_python.recipe import emailpassword, session, dashboard

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
        connection_uri="https://st-dev-285064d0-10bf-11ef-93d7-9b8c1e57fcd0.aws.supertokens.io",
        api_key="bWgWg1IqgNsJQAMRepOGb4yEI0"
        #todo
    ),
    framework='django',
    recipe_list=[
        session.init(), # initializes session features
        emailpassword.init(),
        dashboard.init(
          admins=[
            "nicktsang.manhay@gmail.com",
          ],
        ),
    ],
    mode='asgi' # use wsgi if you are running django server in sync mode
)