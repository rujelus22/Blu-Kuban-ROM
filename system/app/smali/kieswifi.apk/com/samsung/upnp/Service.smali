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
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/samsung/upnp/Service;->serviceNode:Lcom/samsung/xml/Node;

    .line 127
    return-void
.end method

.method private getDeviceNode()Lcom/samsung/xml/Node;
    .registers 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/xml/Node;->getParentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 161
    .local v0, node:Lcom/samsung/xml/Node;
    if-nez v0, :cond_c

    .line 162
    const/4 v1, 0x0

    .line 163
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
    .line 616
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyServiceTypeUSN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 621
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
    .line 168
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method private getSCPDNode()Lcom/samsung/xml/Node;
    .registers 20

    .prologue
    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v15

    .line 414
    .local v15, serviceNode:Lcom/samsung/xml/Node;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v2

    .line 415
    .local v2, data:Lcom/samsung/upnp/xml/ServiceData;
    invoke-virtual {v2}, Lcom/samsung/upnp/xml/ServiceData;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v11

    .line 416
    .local v11, scpdNode:Lcom/samsung/xml/Node;
    if-eqz v11, :cond_10

    move-object v12, v11

    .line 473
    .end local v11           #scpdNode:Lcom/samsung/xml/Node;
    .local v12, scpdNode:Lcom/samsung/xml/Node;
    :goto_f
    return-object v12

    .line 419
    .end local v12           #scpdNode:Lcom/samsung/xml/Node;
    .restart local v11       #scpdNode:Lcom/samsung/xml/Node;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v13

    .line 422
    .local v13, scpdURLStr:Ljava/lang/String;
    :try_start_14
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 423
    .local v14, scpdUrl:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_24

    move-result-object v11

    .line 471
    .end local v14           #scpdUrl:Ljava/net/URL;
    :goto_1f
    invoke-virtual {v2, v11}, Lcom/samsung/upnp/xml/ServiceData;->setSCPDNode(Lcom/samsung/xml/Node;)V

    move-object v12, v11

    .line 473
    .end local v11           #scpdNode:Lcom/samsung/xml/Node;
    .restart local v12       #scpdNode:Lcom/samsung/xml/Node;
    goto :goto_f

    .line 425
    .end local v12           #scpdNode:Lcom/samsung/xml/Node;
    .restart local v11       #scpdNode:Lcom/samsung/xml/Node;
    :catch_24
    move-exception v3

    .line 426
    .local v3, e1:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v10

    .line 427
    .local v10, rootDev:Lcom/samsung/upnp/Device;
    const/16 v16, 0x0

    .line 428
    .local v16, urlBaseStr:Ljava/lang/String;
    if-eqz v10, :cond_4b

    .line 429
    invoke-virtual {v10}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v16

    .line 431
    if-eqz v16, :cond_39

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_4b

    .line 432
    :cond_39
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6a

    .line 434
    invoke-virtual {v10}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, location:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/http/HTTP;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 445
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

    .line 447
    .local v9, newScpdURLStr:Ljava/lang/String;
    :try_start_5e
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 448
    .local v8, newScpdURL:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_68} :catch_79

    move-result-object v11

    goto :goto_1f

    .line 440
    .end local v8           #newScpdURL:Ljava/net/URL;
    .end local v9           #newScpdURLStr:Ljava/lang/String;
    :cond_6a
    invoke-virtual {v10}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/upnp/Service;->removeTillLastSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 441
    .restart local v7       #location:Ljava/lang/String;
    move-object/from16 v16, v7

    goto :goto_4b

    .line 450
    .end local v7           #location:Ljava/lang/String;
    .restart local v9       #newScpdURLStr:Ljava/lang/String;
    :catch_79
    move-exception v4

    .line 451
    .local v4, e2:Ljava/lang/Exception;
    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/samsung/http/HTTP;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 453
    :try_start_80
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 454
    .restart local v8       #newScpdURL:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8a} :catch_8c

    move-result-object v11

    goto :goto_1f

    .line 456
    .end local v8           #newScpdURL:Ljava/net/URL;
    :catch_8c
    move-exception v5

    .line 457
    .local v5, e3:Ljava/lang/Exception;
    if-eqz v10, :cond_a6

    .line 458
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

    .line 460
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

    .line 462
    :catch_b7
    move-exception v6

    .line 463
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
    .line 371
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v0

    .line 372
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
    .line 365
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v0

    .line 366
    .local v0, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v0, p1}, Lcom/samsung/xml/Parser;->parse(Ljava/net/URL;)Lcom/samsung/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getServiceData()Lcom/samsung/upnp/xml/ServiceData;
    .registers 3

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 601
    .local v0, node:Lcom/samsung/xml/Node;
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/xml/ServiceData;

    .line 602
    .local v1, userData:Lcom/samsung/upnp/xml/ServiceData;
    if-nez v1, :cond_17

    .line 603
    new-instance v1, Lcom/samsung/upnp/xml/ServiceData;

    .end local v1           #userData:Lcom/samsung/upnp/xml/ServiceData;
    invoke-direct {v1}, Lcom/samsung/upnp/xml/ServiceData;-><init>()V

    .line 604
    .restart local v1       #userData:Lcom/samsung/upnp/xml/ServiceData;
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 605
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/xml/ServiceData;->setNode(Lcom/samsung/xml/Node;)V

    .line 607
    :cond_17
    return-object v1
.end method

.method public static isServiceNode(Lcom/samsung/xml/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 151
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

    .line 227
    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    move v2, v3

    .line 236
    :cond_7
    :goto_7
    return v2

    .line 229
    :cond_8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 230
    .local v1, ret:Z
    if-nez v1, :cond_7

    .line 232
    invoke-static {p1, v3}, Lcom/samsung/http/HTTP;->toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, relativeRefUrl:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 234
    if-nez v1, :cond_7

    move v2, v3

    .line 236
    goto :goto_7
.end method

.method private notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/ServiceStateTable;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 867
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v0

    .line 868
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v1

    .line 871
    new-instance v2, Lcom/samsung/upnp/event/NotifyRequest;

    invoke-direct {v2}, Lcom/samsung/upnp/event/NotifyRequest;-><init>()V

    .line 872
    invoke-virtual {v2, p1, p2}, Lcom/samsung/upnp/event/NotifyRequest;->setRequest(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/ServiceStateTable;)Z

    .line 874
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

    .line 876
    invoke-virtual {v2, v0, v1}, Lcom/samsung/upnp/event/NotifyRequest;->post(Ljava/lang/String;I)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Lcom/samsung/http/HTTPResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_36

    .line 878
    const/4 v0, 0x0

    .line 882
    :goto_35
    return v0

    .line 880
    :cond_36
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->incrementNotifyCount()V

    .line 882
    const/4 v0, 0x1

    goto :goto_35
.end method

.method private notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/StateVariable;)Z
    .registers 12
    .parameter "sub"
    .parameter "stateVar"

    .prologue
    const/4 v7, 0x0

    .line 752
    if-nez p1, :cond_4

    .line 771
    :cond_3
    :goto_3
    return v7

    .line 755
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v6

    .line 756
    .local v6, varName:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 758
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v3

    .line 760
    .local v3, port:I
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, bindAddr:Ljava/lang/String;
    new-instance v2, Lcom/samsung/upnp/event/NotifyRequest;

    invoke-direct {v2}, Lcom/samsung/upnp/event/NotifyRequest;-><init>()V

    .line 763
    .local v2, notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    invoke-virtual {v2, p1, v6, v5}, Lcom/samsung/upnp/event/NotifyRequest;->setRequest(Lcom/samsung/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z

    .line 765
    invoke-virtual {v2, v1, v3}, Lcom/samsung/upnp/event/NotifyRequest;->post(Ljava/lang/String;I)Lcom/samsung/http/HTTPResponse;

    move-result-object v4

    .line 766
    .local v4, res:Lcom/samsung/http/HTTPResponse;
    invoke-virtual {v4}, Lcom/samsung/http/HTTPResponse;->isSuccessful()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 769
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->incrementNotifyCount()V

    .line 771
    const/4 v7, 0x1

    goto :goto_3
.end method

.method private removeTillLastSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "location"

    .prologue
    .line 376
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, results:[Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 378
    .local v1, l:Z
    if-eqz v1, :cond_f

    .line 390
    .end local p1
    :goto_e
    return-object p1

    .line 382
    .restart local p1
    :cond_f
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_16

    .line 383
    const-string p1, ""

    goto :goto_e

    .line 385
    :cond_16
    const-string v2, ""

    .line 386
    .local v2, resultLocation:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_20

    move-object p1, v2

    .line 390
    goto :goto_e

    .line 387
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

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method


# virtual methods
.method public addSubscriber(Lcom/samsung/upnp/event/Subscriber;)V
    .registers 3
    .parameter "sub"

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/event/SubscriberList;->add(Ljava/lang/Object;)Z

    .line 721
    return-void
.end method

.method public announce(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 633
    const-string v0, ""

    .line 634
    if-eqz v1, :cond_c

    .line 635
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    :cond_c
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v2

    .line 639
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v3

    .line 641
    new-instance v4, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 642
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v3}, Lcom/samsung/upnp/Device;->getLeaseTime()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 644
    invoke-virtual {v4, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 645
    const-string v0, "ssdp:alive"

    invoke-virtual {v4, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v4, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v4, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 649
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/samsung/upnp/Device;->notifyWait()V

    .line 651
    invoke-virtual {v0, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 652
    return-void
.end method

.method public clearSID()V
    .registers 3

    .prologue
    .line 907
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 908
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/Service;->setTimeout(J)V

    .line 909
    return-void
.end method

.method public getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;
    .registers 8
    .parameter "actionName"

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getActionList()Lcom/samsung/upnp/ActionList;

    move-result-object v1

    .line 517
    .local v1, actionList:Lcom/samsung/upnp/ActionList;
    invoke-virtual {v1}, Lcom/samsung/upnp/ActionList;->size()I

    move-result v3

    .line 518
    .local v3, nActions:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_9
    if-lt v2, v3, :cond_d

    .line 526
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 519
    :cond_d
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ActionList;->getAction(I)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 520
    .local v0, action:Lcom/samsung/upnp/Action;
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, name:Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 518
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 523
    :cond_1a
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_c
.end method

.method public getActionList()Lcom/samsung/upnp/ActionList;
    .registers 8

    .prologue
    .line 495
    new-instance v0, Lcom/samsung/upnp/ActionList;

    invoke-direct {v0}, Lcom/samsung/upnp/ActionList;-><init>()V

    .line 496
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 497
    if-nez v1, :cond_c

    .line 511
    :cond_b
    return-object v0

    .line 499
    :cond_c
    const-string v2, "actionList"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 500
    if-eqz v2, :cond_b

    .line 502
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v3

    .line 503
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v4

    .line 504
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v4, :cond_b

    .line 505
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v5

    .line 506
    invoke-static {v5}, Lcom/samsung/upnp/Action;->isActionNode(Lcom/samsung/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 504
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 508
    :cond_2c
    new-instance v6, Lcom/samsung/upnp/Action;

    invoke-direct {v6, v3, v5}, Lcom/samsung/upnp/Action;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 509
    invoke-virtual {v0, v6}, Lcom/samsung/upnp/ActionList;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method public getControlURL()Ljava/lang/String;
    .registers 7

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 275
    .local v0, d:Lcom/samsung/upnp/Device;
    if-nez v0, :cond_11

    .line 276
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v4

    const-string v5, "controlURL"

    invoke-virtual {v4, v5}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    :goto_10
    return-object v4

    .line 279
    :cond_11
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, location:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 282
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v4

    const-string v5, "controlURL"

    invoke-virtual {v4, v5}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, path:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 285
    invoke-static {v3, v2}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10
.end method

.method public getDevice()Lcom/samsung/upnp/Device;
    .registers 4

    .prologue
    .line 177
    new-instance v0, Lcom/samsung/upnp/Device;

    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    return-object v0
.end method

.method public getEventSubURL()Ljava/lang/String;
    .registers 7

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 302
    .local v0, d:Lcom/samsung/upnp/Device;
    if-nez v0, :cond_11

    .line 303
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v4

    const-string v5, "eventSubURL"

    invoke-virtual {v4, v5}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    :goto_10
    return-object v4

    .line 306
    :cond_11
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, location:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 309
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v4

    const-string v5, "eventSubURL"

    invoke-virtual {v4, v5}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, path:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 312
    invoke-static {v3, v2}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10
.end method

.method public getRootDevice()Lcom/samsung/upnp/Device;
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method public getSCPDData()[B
    .registers 4

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 479
    if-nez v0, :cond_a

    .line 480
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 486
    :goto_9
    return-object v0

    .line 482
    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
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

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_9
.end method

.method public getSCPDURL()Ljava/lang/String;
    .registers 7

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 248
    .local v0, d:Lcom/samsung/upnp/Device;
    if-nez v0, :cond_11

    .line 249
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v4

    const-string v5, "SCPDURL"

    invoke-virtual {v4, v5}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    :goto_10
    return-object v4

    .line 252
    :cond_11
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, location:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 255
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v4

    const-string v5, "SCPDURL"

    invoke-virtual {v4, v5}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, path:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 258
    invoke-static {v3, v2}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10
.end method

.method public getSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/ServiceData;->getSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 217
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
    .line 117
    iget-object v0, p0, Lcom/samsung/upnp/Service;->serviceNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getServiceStateTable()Lcom/samsung/upnp/ServiceStateTable;
    .registers 8

    .prologue
    .line 535
    new-instance v0, Lcom/samsung/upnp/ServiceStateTable;

    invoke-direct {v0}, Lcom/samsung/upnp/ServiceStateTable;-><init>()V

    .line 536
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 537
    if-nez v1, :cond_c

    .line 554
    :cond_b
    return-object v0

    .line 541
    :cond_c
    const-string v2, "serviceStateTable"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 542
    if-eqz v2, :cond_b

    .line 545
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v3

    .line 546
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v4

    .line 547
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v4, :cond_b

    .line 548
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v5

    .line 549
    invoke-static {v5}, Lcom/samsung/upnp/StateVariable;->isStateVariableNode(Lcom/samsung/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 547
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 551
    :cond_2c
    new-instance v6, Lcom/samsung/upnp/StateVariable;

    invoke-direct {v6, v3, v5}, Lcom/samsung/upnp/StateVariable;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 552
    invoke-virtual {v0, v6}, Lcom/samsung/upnp/ServiceStateTable;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method public getServiceType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 199
    .local v0, serviceNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_9

    .line 200
    const-string v1, ""

    .line 201
    :goto_8
    return-object v1

    :cond_9
    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;
    .registers 8
    .parameter "name"

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceStateTable()Lcom/samsung/upnp/ServiceStateTable;

    move-result-object v1

    .line 560
    .local v1, stateTable:Lcom/samsung/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lcom/samsung/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 561
    .local v2, tableSize:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_9
    if-lt v0, v2, :cond_d

    .line 569
    const/4 v3, 0x0

    :goto_c
    return-object v3

    .line 562
    :cond_d
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/ServiceStateTable;->getStateVariable(I)Lcom/samsung/upnp/StateVariable;

    move-result-object v3

    .line 563
    .local v3, var:Lcom/samsung/upnp/StateVariable;
    invoke-virtual {v3}, Lcom/samsung/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, varName:Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 561
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 566
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
    .line 735
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v3

    .line 736
    .local v3, subList:Lcom/samsung/upnp/event/SubscriberList;
    invoke-virtual {v3}, Lcom/samsung/upnp/event/SubscriberList;->size()I

    move-result v4

    .line 737
    .local v4, subListCnt:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_9
    if-lt v0, v4, :cond_d

    .line 747
    const/4 v2, 0x0

    :goto_c
    return-object v2

    .line 738
    :cond_d
    invoke-virtual {v3, v0}, Lcom/samsung/upnp/event/SubscriberList;->getSubscriber(I)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v2

    .line 739
    .local v2, sub:Lcom/samsung/upnp/event/Subscriber;
    if-nez v2, :cond_16

    .line 737
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 741
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, sid:Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 744
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_c
.end method

.method public getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;
    .registers 2

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/ServiceData;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v0

    return-object v0
.end method

.method public hasSID()Z
    .registers 2

    .prologue
    .line 913
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
    .line 574
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
    .line 290
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
    .line 317
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
    .line 263
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

    .line 583
    if-nez p1, :cond_5

    .line 591
    :cond_4
    :goto_4
    return v0

    .line 587
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 588
    goto :goto_4

    .line 589
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 590
    goto :goto_4
.end method

.method public isSubscribed()Z
    .registers 2

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->hasSID()Z

    move-result v0

    return v0
.end method

.method public notify(Lcom/samsung/upnp/StateVariable;)V
    .registers 8
    .parameter "stateVar"

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v2

    .line 781
    .local v2, subList:Lcom/samsung/upnp/event/SubscriberList;
    invoke-virtual {v2}, Lcom/samsung/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 782
    .local v3, subListCnt:I
    new-array v4, v3, [Lcom/samsung/upnp/event/Subscriber;

    .line 783
    .local v4, subs:[Lcom/samsung/upnp/event/Subscriber;
    const/4 v0, 0x0

    .local v0, n:I
    :goto_b
    if-lt v0, v3, :cond_1d

    .line 785
    const/4 v0, 0x0

    :goto_e
    if-lt v0, v3, :cond_26

    .line 792
    invoke-virtual {v2}, Lcom/samsung/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 793
    new-array v4, v3, [Lcom/samsung/upnp/event/Subscriber;

    .line 794
    const/4 v0, 0x0

    :goto_17
    if-lt v0, v3, :cond_34

    .line 796
    const/4 v0, 0x0

    :goto_1a
    if-lt v0, v3, :cond_3d

    .line 804
    return-void

    .line 784
    :cond_1d
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/event/SubscriberList;->getSubscriber(I)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 786
    :cond_26
    aget-object v1, v4, v0

    .line 787
    .local v1, sub:Lcom/samsung/upnp/event/Subscriber;
    invoke-virtual {v1}, Lcom/samsung/upnp/event/Subscriber;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 788
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/Service;->removeSubscriber(Lcom/samsung/upnp/event/Subscriber;)V

    .line 785
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 795
    .end local v1           #sub:Lcom/samsung/upnp/event/Subscriber;
    :cond_34
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/event/SubscriberList;->getSubscriber(I)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 797
    :cond_3d
    aget-object v1, v4, v0

    .line 798
    .restart local v1       #sub:Lcom/samsung/upnp/event/Subscriber;
    invoke-direct {p0, v1, p1}, Lcom/samsung/upnp/Service;->notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/StateVariable;)Z

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public notifyAllStateVariablesToSubscriber(Lcom/samsung/upnp/event/Subscriber;)V
    .registers 3
    .parameter "sub"

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceStateTable()Lcom/samsung/upnp/ServiceStateTable;

    move-result-object v0

    .line 808
    .local v0, stateTable:Lcom/samsung/upnp/ServiceStateTable;
    invoke-direct {p0, p1, v0}, Lcom/samsung/upnp/Service;->notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/ServiceStateTable;)Z

    .line 809
    return-void
.end method

.method public removeSubscriber(Lcom/samsung/upnp/event/Subscriber;)V
    .registers 3
    .parameter "sub"

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/event/SubscriberList;->remove(Ljava/lang/Object;)Z

    .line 726
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .registers 3
    .parameter "id"

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/ServiceData;->setSID(Ljava/lang/String;)V

    .line 903
    return-void
.end method

.method public setTimeout(J)V
    .registers 4
    .parameter "value"

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/upnp/xml/ServiceData;->setTimeout(J)V

    .line 933
    return-void
.end method
