am.app.set_model(
    {
        DAEMON_URL = "https://github.com/birake/birakecoin/releases/download/v3.0.0/birakecoin-3.0.0-linux.tar.gz",
        DAEMON_CONFIGURATION = {
            server = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            listen = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            masternodeprivkey = am.app.get_configuration("NODE_PRIVKEY"),
            masternode = am.app.get_configuration("NODE_PRIVKEY") and 1 or nil
        },
        DAEMON_NAME = "birakecoind",
        CLI_NAME = "birakecoin-cli",
        CONF_NAME = "birakecoin.conf",
        CONF_SOURCE = "__btc/assets/daemon.conf",
        SERVICE_NAME = "birakecoind"
    },
    { merge = true, overwrite = true }
)