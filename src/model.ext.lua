am.app.set_model(
    {
        DAEMON_URL = "https://github.com/birake/birakecoin/releases/download/v4.0.1.0/BIR-4.0.1.0-Linux.zip",
        DAEMON_CONFIGURATION = {
            server = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            listen = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            masternodeprivkey = am.app.get_configuration("NODE_PRIVKEY"),
            masternode = am.app.get_configuration("NODE_PRIVKEY") and 1 or nil
        },
        DAEMON_NAME = "biraked",
        CLI_NAME = "birake-cli",
        CONF_NAME = "birake.conf",
        CONF_SOURCE = "__btc/assets/daemon.conf",
        SERVICE_NAME = "biraked"
    },
    { merge = true, overwrite = true }
)
