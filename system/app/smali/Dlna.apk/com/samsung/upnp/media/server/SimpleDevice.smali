.class public Lcom/samsung/upnp/media/server/SimpleDevice;
.super Ljava/lang/Object;
.source "SimpleDevice.java"

# interfaces
.implements Lcom/samsung/http/HTTPRequestListener;


# instance fields
.field itemNode:Lcom/samsung/upnp/media/server/object/item/ItemNode;


# direct methods
.method private httpAddInResponse(Lcom/samsung/http/HTTPRequest;)V
    .registers 4
    .parameter "httpReq"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/samsung/upnp/media/server/SimpleDevice;->itemNode:Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-static {p1, v1}, Lcom/samsung/upnp/media/server/CDSResponseBuilder;->buildResponse(Lcom/samsung/http/HTTPRequest;Lcom/samsung/upnp/media/server/object/item/ItemNode;)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    .line 91
    .local v0, httpRes:Lcom/samsung/http/HTTPResponse;
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    .line 92
    return-void
.end method


# virtual methods
.method public httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 5
    .parameter "httpReq"

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, uri:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/SimpleDevice;->httpAddInResponse(Lcom/samsung/http/HTTPRequest;)V

    .line 85
    return-void
.end method
