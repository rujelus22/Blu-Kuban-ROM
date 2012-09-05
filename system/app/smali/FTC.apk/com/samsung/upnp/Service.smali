.class public Lcom/samsung/upnp/Service;
.super Ljava/lang/Object;
.source "Service.java"


# instance fields
.field private serviceNode:Lcom/samsung/xml/Node;


# direct methods
.method public constructor <init>(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/samsung/upnp/Service;->serviceNode:Lcom/samsung/xml/Node;

    .line 128
    return-void
.end method

.method private getDeviceNode()Lcom/samsung/xml/Node;
    .registers 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/xml/Node;->getParentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 162
    .local v0, node:Lcom/samsung/xml/Node;
    if-nez v0, :cond_c

    .line 163
    const/4 v1, 0x0

    .line 164
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getParentNode()Lcom/samsung/xml/Node;

    move-result-object v1

    goto :goto_b
.end method

.method private getNotifyServiceTypeNT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyServiceTypeUSN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRootNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method private getSCPDNode()Lcom/samsung/xml/Node;
    .registers 20

    .prologue
    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v15

    .line 392
    .local v15, serviceNode:Lcom/samsung/xml/Node;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v2

    .line 393
    .local v2, data:Lcom/samsung/upnp/xml/ServiceData;
    invoke-virtual {v2}, Lcom/samsung/upnp/xml/ServiceData;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v11

    .line 394
    .local v11, scpdNode:Lcom/samsung/xml/Node;
    if-eqz v11, :cond_10

    move-object v12, v11

    .line 451
    .end local v11           #scpdNode:Lcom/samsung/xml/Node;
    .local v12, scpdNode:Lcom/samsung/xml/Node;
    :goto_f
    return-object v12

    .line 397
    .end local v12           #scpdNode:Lcom/samsung/xml/Node;
    .restart local v11       #scpdNode:Lcom/samsung/xml/Node;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v13

    .line 400
    .local v13, scpdURLStr:Ljava/lang/String;
    :try_start_14
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 401
    .local v14, scpdUrl:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_24

    move-result-object v11

    .line 449
    .end local v14           #scpdUrl:Ljava/net/URL;
    :goto_1f
    invoke-virtual {v2, v11}, Lcom/samsung/upnp/xml/ServiceData;->setSCPDNode(Lcom/samsung/xml/Node;)V

    move-object v12, v11

    .line 451
    .end local v11           #scpdNode:Lcom/samsung/xml/Node;
    .restart local v12       #scpdNode:Lcom/samsung/xml/Node;
    goto :goto_f

    .line 403
    .end local v12           #scpdNode:Lcom/samsung/xml/Node;
    .restart local v11       #scpdNode:Lcom/samsung/xml/Node;
    :catch_24
    move-exception v3

    .line 404
    .local v3, e1:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v10

    .line 405
    .local v10, rootDev:Lcom/samsung/upnp/Device;
    const/16 v16, 0x0

    .line 406
    .local v16, urlBaseStr:Ljava/lang/String;
    if-eqz v10, :cond_4b

    .line 407
    invoke-virtual {v10}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v16

    .line 409
    if-eqz v16, :cond_39

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_4b

    .line 410
    :cond_39
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6a

    .line 412
    invoke-virtual {v10}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v7

    .line 413
    .local v7, location:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/http/HTTP;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 423
    .end local v7           #location:Ljava/lang/String;
    :cond_4b
    :goto_4b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, newScpdURLStr:Ljava/lang/String;
    :try_start_5e
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 426
    .local v8, newScpdURL:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_68} :catch_79

    move-result-object v11

    goto :goto_1f

    .line 418
    .end local v8           #newScpdURL:Ljava/net/URL;
    .end local v9           #newScpdURLStr:Ljava/lang/String;
    :cond_6a
    invoke-virtual {v10}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/upnp/Service;->removeTillLastSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 419
    .restart local v7       #location:Ljava/lang/String;
    move-object/from16 v16, v7

    goto :goto_4b

    .line 428
    .end local v7           #location:Ljava/lang/String;
    .restart local v9       #newScpdURLStr:Ljava/lang/String;
    :catch_79
    move-exception v4

    .line 429
    .local v4, e2:Ljava/lang/Exception;
    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/samsung/http/HTTP;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 431
    :try_start_80
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v8       #newScpdURL:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8a} :catch_8c

    move-result-object v11

    goto :goto_1f

    .line 434
    .end local v8           #newScpdURL:Ljava/net/URL;
    :catch_8c
    move-exception v5

    .line 435
    .local v5, e3:Ljava/lang/Exception;
    if-eqz v10, :cond_a6

    .line 436
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/samsung/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 438
    :cond_a6
    :try_start_a6
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/io/File;)Lcom/samsung/xml/Node;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b4} :catch_b7

    move-result-object v11

    goto/16 :goto_1f

    .line 440
    :catch_b7
    move-exception v6

    .line 441
    .local v6, e4:Ljava/lang/Exception;
    invoke-static {v6}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    goto/16 :goto_1f
.end method

.method private getSCPDNode(Ljava/io/File;)Lcom/samsung/xml/Node;
    .registers 4
    .parameter "scpdFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v0

    .line 350
    .local v0, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v0, p1}, Lcom/samsung/xml/Parser;->parse(Ljava/io/File;)Lcom/samsung/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    .registers 4
    .parameter "scpdUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v0

    .line 344
    .local v0, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v0, p1}, Lcom/samsung/xml/Parser;->parse(Ljava/net/URL;)Lcom/samsung/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getServiceData()Lcom/samsung/upnp/xml/ServiceData;
    .registers 3

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 579
    .local v0, node:Lcom/samsung/xml/Node;
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/xml/ServiceData;

    .line 580
    .local v1, userData:Lcom/samsung/upnp/xml/ServiceData;
    if-nez v1, :cond_17

    .line 581
    new-instance v1, Lcom/samsung/upnp/xml/ServiceData;

    .end local v1           #userData:Lcom/samsung/upnp/xml/ServiceData;
    invoke-direct {v1}, Lcom/samsung/upnp/xml/ServiceData;-><init>()V

    .line 582
    .restart local v1       #userData:Lcom/samsung/upnp/xml/ServiceData;
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 583
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/xml/ServiceData;->setNode(Lcom/samsung/xml/Node;)V

    .line 585
    :cond_17
    return-object v1
.end method

.method public static isServiceNode(Lcom/samsung/xml/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 152
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isURL(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "referenceUrl"
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 228
    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    move v2, v3

    .line 237
    :cond_7
    :goto_7
    return v2

    .line 230
    :cond_8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 231
    .local v1, ret:Z
    if-nez v1, :cond_7

    .line 233
    invoke-static {p1, v3}, Lcom/samsung/http/HTTP;->toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, relativeRefUrl:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 235
    if-nez v1, :cond_7

    move v2, v3

    .line 237
    goto :goto_7
.end method

.method private notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/ServiceStateTable;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 847
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v1

    .line 851
    new-instance v2, Lcom/samsung/upnp/event/NotifyRequest;

    invoke-direct {v2}, Lcom/samsung/upnp/event/NotifyRequest;-><init>()V

    .line 852
    invoke-virtual {v2, p1, p2}, Lcom/samsung/upnp/event/NotifyRequest;->setRequest(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/ServiceStateTable;)Z

    .line 854
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServiceNotify"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v2, v0, v1}, Lcom/samsung/upnp/event/NotifyRequest;->post(Ljava/lang/String;I)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Lcom/samsung/http/HTTPResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_36

    .line 858
    const/4 v0, 0x0

    .line 862
    :goto_35
    return v0

    .line 860
    :cond_36
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->incrementNotifyCount()V

    .line 862
    const/4 v0, 0x1

    goto :goto_35
.end method

.method private notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/StateVariable;)Z
    .registers 12
    .parameter "sub"
    .parameter "stateVar"

    .prologue
    const/4 v7, 0x0

    .line 732
    if-nez p1, :cond_4

    .line 751
    :cond_3
    :goto_3
    return v7

    .line 735
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v6

    .line 736
    .local v6, varName:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 738
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v3

    .line 740
    .local v3, port:I
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, bindAddr:Ljava/lang/String;
    new-instance v2, Lcom/samsung/upnp/event/NotifyRequest;

    invoke-direct {v2}, Lcom/samsung/upnp/event/NotifyRequest;-><init>()V

    .line 743
    .local v2, notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    invoke-virtual {v2, p1, v6, v5}, Lcom/samsung/upnp/event/NotifyRequest;->setRequest(Lcom/samsung/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z

    .line 745
    invoke-virtual {v2, v1, v3}, Lcom/samsung/upnp/event/NotifyRequest;->post(Ljava/lang/String;I)Lcom/samsung/http/HTTPResponse;

    move-result-object v4

    .line 746
    .local v4, res:Lcom/samsung/http/HTTPResponse;
    invoke-virtual {v4}, Lcom/samsung/http/HTTPResponse;->isSuccessful()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 749
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->incrementNotifyCount()V

    .line 751
    const/4 v7, 0x1

    goto :goto_3
.end method

.method private removeTillLastSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "location"

    .prologue
    .line 354
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, results:[Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 356
    .local v1, l:Z
    if-eqz v1, :cond_f

    .line 368
    .end local p1
    :goto_e
    return-object p1

    .line 360
    .restart local p1
    :cond_f
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_16

    .line 361
    const-string p1, ""

    goto :goto_e

    .line 363
    :cond_16
    const-string v2, ""

    .line 364
    .local v2, resultLocation:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_20

    move-object p1, v2

    .line 368
    goto :goto_e

    .line 365
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method


# virtual methods
.method public addSubscriber(Lcom/samsung/upnp/event/Subscriber;)V
    .registers 3
    .parameter "sub"

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/event/SubscriberList;->add(Ljava/lang/Object;)Z

    .line 701
    return-void
.end method

.method public announce(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 611
    const-string v0, ""

    .line 612
    if-eqz v1, :cond_c

    .line 613
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    :cond_c
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v3

    .line 619
    new-instance v4, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 620
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v3}, Lcom/samsung/upnp/Device;->getLeaseTime()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 622
    invoke-virtual {v4, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 623
    const-string v0, "ssdp:alive"

    invoke-virtual {v4, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v4, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v4, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 627
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-static {}, Lcom/samsung/upnp/Device;->notifyWait()V

    .line 629
    invoke-virtual {v0, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 630
    return-void
.end method

.method public clearSID()V
    .registers 3

    .prologue
    .line 887
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 888
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/Service;->setTimeout(J)V

    .line 889
    return-void
.end method

.method public getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;
    .registers 8
    .parameter "actionName"

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getActionList()Lcom/samsung/upnp/ActionList;

    move-result-object v1

    .line 495
    .local v1, actionList:Lcom/samsung/upnp/ActionList;
    invoke-virtual {v1}, Lcom/samsung/upnp/ActionList;->size()I

    move-result v3

    .line 496
    .local v3, nActions:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_9
    if-lt v2, v3, :cond_d

    .line 504
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 497
    :cond_d
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ActionList;->getAction(I)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 498
    .local v0, action:Lcom/samsung/upnp/Action;
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, name:Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 496
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 501
    :cond_1a
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_c
.end method

.method public getActionList()Lcom/samsung/upnp/ActionList;
    .registers 8

    .prologue
    .line 473
    new-instance v0, Lcom/samsung/upnp/ActionList;

    invoke-direct {v0}, Lcom/samsung/upnp/ActionList;-><init>()V

    .line 474
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 475
    if-nez v1, :cond_c

    .line 489
    :cond_b
    return-object v0

    .line 477
    :cond_c
    const-string v2, "actionList"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 478
    if-eqz v2, :cond_b

    .line 480
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v3

    .line 481
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v4

    .line 482
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v4, :cond_b

    .line 483
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v5

    .line 484
    invoke-static {v5}, Lcom/samsung/upnp/Action;->isActionNode(Lcom/samsung/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 482
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 486
    :cond_2c
    new-instance v6, Lcom/samsung/upnp/Action;

    invoke-direct {v6, v3, v5}, Lcom/samsung/upnp/Action;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 487
    invoke-virtual {v0, v6}, Lcom/samsung/upnp/ActionList;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method public getControlURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    const-string v0, "controlURL"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Service;->getServiceURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lcom/samsung/upnp/Device;
    .registers 4

    .prologue
    .line 178
    new-instance v0, Lcom/samsung/upnp/Device;

    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    return-object v0
.end method

.method public getEventSubURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    const-string v0, "eventSubURL"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Service;->getServiceURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootDevice()Lcom/samsung/upnp/Device;
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method public getSCPDData()[B
    .registers 4

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 457
    if-nez v0, :cond_a

    .line 458
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 464
    :goto_9
    return-object v0

    .line 460
    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/xml/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_9
.end method

.method public getSCPDURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    const-string v0, "SCPDURL"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Service;->getServiceURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/ServiceData;->getSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/upnp/Service;->serviceNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getServiceStateTable()Lcom/samsung/upnp/ServiceStateTable;
    .registers 8

    .prologue
    .line 513
    new-instance v0, Lcom/samsung/upnp/ServiceStateTable;

    invoke-direct {v0}, Lcom/samsung/upnp/ServiceStateTable;-><init>()V

    .line 514
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 515
    if-nez v1, :cond_c

    .line 532
    :cond_b
    return-object v0

    .line 519
    :cond_c
    const-string v2, "serviceStateTable"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 520
    if-eqz v2, :cond_b

    .line 523
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v3

    .line 524
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v4

    .line 525
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v4, :cond_b

    .line 526
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v5

    .line 527
    invoke-static {v5}, Lcom/samsung/upnp/StateVariable;->isStateVariableNode(Lcom/samsung/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 525
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 529
    :cond_2c
    new-instance v6, Lcom/samsung/upnp/StateVariable;

    invoke-direct {v6, v3, v5}, Lcom/samsung/upnp/StateVariable;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 530
    invoke-virtual {v0, v6}, Lcom/samsung/upnp/ServiceStateTable;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method public getServiceType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 200
    .local v0, serviceNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_9

    .line 201
    const-string v1, ""

    .line 202
    :goto_8
    return-object v1

    :cond_9
    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method getServiceURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "nodeName"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 284
    .local v0, d:Lcom/samsung/upnp/Device;
    if-nez v0, :cond_f

    .line 285
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    :goto_e
    return-object v4

    .line 288
    :cond_f
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, location:Ljava/lang/String;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1f

    .line 291
    :cond_1b
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_1f
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 294
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, path:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e
.end method

.method public getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;
    .registers 8
    .parameter "name"

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceStateTable()Lcom/samsung/upnp/ServiceStateTable;

    move-result-object v1

    .line 538
    .local v1, stateTable:Lcom/samsung/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lcom/samsung/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 539
    .local v2, tableSize:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_9
    if-lt v0, v2, :cond_d

    .line 547
    const/4 v3, 0x0

    :goto_c
    return-object v3

    .line 540
    :cond_d
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/ServiceStateTable;->getStateVariable(I)Lcom/samsung/upnp/StateVariable;

    move-result-object v3

    .line 541
    .local v3, var:Lcom/samsung/upnp/StateVariable;
    invoke-virtual {v3}, Lcom/samsung/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 542
    .local v4, varName:Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 539
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 544
    :cond_1a
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_c
.end method

.method public getSubscriber(Ljava/lang/String;)Lcom/samsung/upnp/event/Subscriber;
    .registers 8
    .parameter "name"

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v3

    .line 716
    .local v3, subList:Lcom/samsung/upnp/event/SubscriberList;
    invoke-virtual {v3}, Lcom/samsung/upnp/event/SubscriberList;->size()I

    move-result v4

    .line 717
    .local v4, subListCnt:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_9
    if-lt v0, v4, :cond_d

    .line 727
    const/4 v2, 0x0

    :goto_c
    return-object v2

    .line 718
    :cond_d
    invoke-virtual {v3, v0}, Lcom/samsung/upnp/event/SubscriberList;->getSubscriber(I)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v2

    .line 719
    .local v2, sub:Lcom/samsung/upnp/event/Subscriber;
    if-nez v2, :cond_16

    .line 717
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 721
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, sid:Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 724
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_c
.end method

.method public getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;
    .registers 2

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/ServiceData;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v0

    return-object v0
.end method

.method public hasSID()Z
    .registers 2

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/util/StringUtil;->hasData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasStateVariable(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/Service;->getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isControlURL(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getControlURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEventSubURL(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getEventSubURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSCPDURL(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isService(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 561
    if-nez p1, :cond_5

    .line 569
    :cond_4
    :goto_4
    return v0

    .line 565
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 566
    goto :goto_4

    .line 567
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 568
    goto :goto_4
.end method

.method public isSubscribed()Z
    .registers 2

    .prologue
    .line 898
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->hasSID()Z

    move-result v0

    return v0
.end method

.method public notify(Lcom/samsung/upnp/StateVariable;)V
    .registers 8
    .parameter "stateVar"

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v2

    .line 761
    .local v2, subList:Lcom/samsung/upnp/event/SubscriberList;
    invoke-virtual {v2}, Lcom/samsung/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 762
    .local v3, subListCnt:I
    new-array v4, v3, [Lcom/samsung/upnp/event/Subscriber;

    .line 763
    .local v4, subs:[Lcom/samsung/upnp/event/Subscriber;
    const/4 v0, 0x0

    .local v0, n:I
    :goto_b
    if-lt v0, v3, :cond_1d

    .line 765
    const/4 v0, 0x0

    :goto_e
    if-lt v0, v3, :cond_26

    .line 772
    invoke-virtual {v2}, Lcom/samsung/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 773
    new-array v4, v3, [Lcom/samsung/upnp/event/Subscriber;

    .line 774
    const/4 v0, 0x0

    :goto_17
    if-lt v0, v3, :cond_34

    .line 776
    const/4 v0, 0x0

    :goto_1a
    if-lt v0, v3, :cond_3d

    .line 784
    return-void

    .line 764
    :cond_1d
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/event/SubscriberList;->getSubscriber(I)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 766
    :cond_26
    aget-object v1, v4, v0

    .line 767
    .local v1, sub:Lcom/samsung/upnp/event/Subscriber;
    invoke-virtual {v1}, Lcom/samsung/upnp/event/Subscriber;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 768
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/Service;->removeSubscriber(Lcom/samsung/upnp/event/Subscriber;)V

    .line 765
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 775
    .end local v1           #sub:Lcom/samsung/upnp/event/Subscriber;
    :cond_34
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/event/SubscriberList;->getSubscriber(I)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 777
    :cond_3d
    aget-object v1, v4, v0

    .line 778
    .restart local v1       #sub:Lcom/samsung/upnp/event/Subscriber;
    invoke-direct {p0, v1, p1}, Lcom/samsung/upnp/Service;->notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/StateVariable;)Z

    .line 776
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public notifyAllStateVariablesToSubscriber(Lcom/samsung/upnp/event/Subscriber;)V
    .registers 3
    .parameter "sub"

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceStateTable()Lcom/samsung/upnp/ServiceStateTable;

    move-result-object v0

    .line 788
    .local v0, stateTable:Lcom/samsung/upnp/ServiceStateTable;
    invoke-direct {p0, p1, v0}, Lcom/samsung/upnp/Service;->notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/ServiceStateTable;)Z

    .line 789
    return-void
.end method

.method public removeSubscriber(Lcom/samsung/upnp/event/Subscriber;)V
    .registers 3
    .parameter "sub"

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/event/SubscriberList;->remove(Ljava/lang/Object;)Z

    .line 706
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .registers 3
    .parameter "id"

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/ServiceData;->setSID(Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method public setTimeout(J)V
    .registers 4
    .parameter "value"

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/upnp/xml/ServiceData;->setTimeout(J)V

    .line 913
    return-void
.end method
