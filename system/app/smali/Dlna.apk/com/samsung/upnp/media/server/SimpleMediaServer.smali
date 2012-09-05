.class public Lcom/samsung/upnp/media/server/SimpleMediaServer;
.super Ljava/lang/Object;
.source "SimpleMediaServer.java"

# interfaces
.implements Lcom/samsung/http/HTTPRequestListener;


# instance fields
.field private httpPort:I

.field private ipAddress:Ljava/lang/String;

.field playItem:Lcom/samsung/upnp/media/server/object/item/ItemNode;

.field private server:Lcom/samsung/http/HTTPServer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/samsung/http/HTTPServer;

    invoke-direct {v0}, Lcom/samsung/http/HTTPServer;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->server:Lcom/samsung/http/HTTPServer;

    .line 24
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->ipAddress:Ljava/lang/String;

    .line 25
    const/16 v0, 0x5c16

    iput v0, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->httpPort:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->playItem:Lcom/samsung/upnp/media/server/object/item/ItemNode;

    .line 28
    return-void
.end method


# virtual methods
.method public getItemNode()Lcom/samsung/xml/Node;
    .registers 6

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, info:Lcom/samsung/xml/Node;
    :try_start_1
    iget-object v2, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->playItem:Lcom/samsung/upnp/media/server/object/item/ItemNode;

    if-eqz v2, :cond_14

    .line 235
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->playItem:Lcom/samsung/upnp/media/server/object/item/ItemNode;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/xml/Parser;->parse(Ljava/lang/String;)Lcom/samsung/xml/Node;
    :try_end_13
    .catch Lcom/samsung/xml/ParserException; {:try_start_1 .. :try_end_13} :catch_16

    move-result-object v1

    :cond_14
    move-object v2, v1

    .line 239
    :goto_15
    return-object v2

    .line 236
    :catch_16
    move-exception v0

    .line 237
    .local v0, e:Lcom/samsung/xml/ParserException;
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getServerAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->httpPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->httpPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/subtitle/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 6
    .parameter "httpReq"

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, uri:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uri = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->playItem:Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-static {p1, v2}, Lcom/samsung/upnp/media/server/CDSResponseBuilder;->buildResponse(Lcom/samsung/http/HTTPRequest;Lcom/samsung/upnp/media/server/object/item/ItemNode;)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    .line 80
    .local v0, httpRes:Lcom/samsung/http/HTTPResponse;
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    .line 81
    return-void
.end method

.method public isServerStarted()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->server:Lcom/samsung/http/HTTPServer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->server:Lcom/samsung/http/HTTPServer;

    invoke-virtual {v0}, Lcom/samsung/http/HTTPServer;->isOpened()Z

    move-result v0

    goto :goto_5
.end method

.method public registerContent(Lcom/samsung/upnp/media/server/object/item/ItemNode;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->playItem:Lcom/samsung/upnp/media/server/object/item/ItemNode;

    .line 66
    return-void
.end method

.method public startServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->server:Lcom/samsung/http/HTTPServer;

    invoke-virtual {v1}, Lcom/samsung/http/HTTPServer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 33
    const-string v1, "server is already started"

    invoke-static {v1}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 51
    :goto_e
    return-object v0

    .line 40
    :cond_f
    iget v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->httpPort:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->httpPort:I

    .line 41
    iget v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->httpPort:I

    add-int/lit16 v1, v1, -0x5c16

    const/16 v2, 0x64

    if-le v1, v2, :cond_23

    .line 42
    const-string v1, "fail to start a simple media server"

    invoke-static {v1}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    goto :goto_e

    .line 39
    :cond_23
    iget-object v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->server:Lcom/samsung/http/HTTPServer;

    iget v2, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->httpPort:I

    invoke-virtual {v1, p1, v2}, Lcom/samsung/http/HTTPServer;->open(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Simple media server starts!!! - Address: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->httpPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->server:Lcom/samsung/http/HTTPServer;

    invoke-virtual {v0, p0}, Lcom/samsung/http/HTTPServer;->addRequestListener(Lcom/samsung/http/HTTPRequestListener;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->server:Lcom/samsung/http/HTTPServer;

    invoke-virtual {v0}, Lcom/samsung/http/HTTPServer;->start()Z

    .line 49
    iput-object p1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->ipAddress:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->httpPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public stopServer()V
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->server:Lcom/samsung/http/HTTPServer;

    invoke-virtual {v0}, Lcom/samsung/http/HTTPServer;->stop()Z

    .line 56
    iget-object v0, p0, Lcom/samsung/upnp/media/server/SimpleMediaServer;->server:Lcom/samsung/http/HTTPServer;

    invoke-virtual {v0}, Lcom/samsung/http/HTTPServer;->close()Z

    .line 57
    return-void
.end method
