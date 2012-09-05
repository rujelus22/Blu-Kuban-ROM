.class public Lcom/samsung/upnp/control/ControlRequest;
.super Lcom/samsung/soap/SOAPRequest;
.source "ControlRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/soap/SOAPRequest;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public isQueryControl()Z
    .registers 2

    .prologue
    .line 79
    const-string v0, "urn:schemas-upnp-org:control-1-0#QueryStateVariable"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/control/ControlRequest;->isSOAPAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected setRequestHost(Lcom/samsung/upnp/Service;)V
    .registers 14
    .parameter "service"

    .prologue
    const/4 v11, 0x1

    .line 93
    if-nez p1, :cond_4

    .line 163
    :goto_3
    return-void

    .line 95
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getControlURL()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, ctrlURL:Ljava/lang/String;
    const/4 v8, 0x0

    .line 99
    .local v8, urlBase:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v6

    .line 100
    .local v6, rootDevice:Lcom/samsung/upnp/Device;
    if-eqz v6, :cond_13

    .line 101
    invoke-virtual {v6}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v8

    .line 115
    :cond_13
    if-eqz v8, :cond_46

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_46

    .line 117
    :try_start_1b
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 118
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, basePath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 120
    .local v0, baseLen:I
    if-lez v0, :cond_46

    .line 121
    if-lt v11, v0, :cond_35

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    if-eq v9, v10, :cond_46

    .line 122
    :cond_35
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_45
    .catch Ljava/net/MalformedURLException; {:try_start_1b .. :try_end_45} :catch_7c

    move-result-object v2

    .line 128
    .end local v0           #baseLen:I
    .end local v1           #basePath:Ljava/lang/String;
    .end local v7           #url:Ljava/net/URL;
    :cond_46
    :goto_46
    invoke-virtual {p0, v2, v11}, Lcom/samsung/upnp/control/ControlRequest;->setURI(Ljava/lang/String;Z)V

    .line 132
    const-string v3, ""

    .line 133
    .local v3, postURL:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 134
    move-object v3, v2

    .line 136
    :cond_52
    if-eqz v6, :cond_5e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_5e

    .line 137
    invoke-virtual {v6}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_5e
    if-eqz v6, :cond_6a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_6a

    .line 142
    invoke-virtual {v6}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 144
    :cond_6a
    invoke-static {v3}, Lcom/samsung/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, reqHost:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v5

    .line 160
    .local v5, reqPort:I
    invoke-virtual {p0, v4, v5}, Lcom/samsung/upnp/control/ControlRequest;->setHost(Ljava/lang/String;I)V

    .line 161
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/control/ControlRequest;->setRequestHost(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v5}, Lcom/samsung/upnp/control/ControlRequest;->setRequestPort(I)V

    goto :goto_3

    .line 124
    .end local v3           #postURL:Ljava/lang/String;
    .end local v4           #reqHost:Ljava/lang/String;
    .end local v5           #reqPort:I
    :catch_7c
    move-exception v9

    goto :goto_46
.end method
