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
    .line 691
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyServiceTypeUSN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 696
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

.method private getRelativeURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "location"

    .prologue
    .line 531
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, results:[Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 533
    .local v1, l:Z
    if-eqz v1, :cond_f

    .line 548
    .end local p1
    :goto_e
    return-object p1

    .line 538
    .restart local p1
    :cond_f
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_16

    .line 539
    const-string p1, ""

    goto :goto_e

    .line 541
    :cond_16
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 542
    .local v2, resultLocation:Ljava/lang/StringBuffer;
    const/4 v0, 0x3

    .local v0, i:I
    :goto_1c
    array-length v4, v3

    if-lt v0, v4, :cond_24

    .line 548
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    .line 544
    :cond_24
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
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
    .registers 24

    .prologue
    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v18

    .line 446
    .local v18, serviceNode:Lcom/samsung/xml/Node;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v3

    .line 447
    .local v3, data:Lcom/samsung/upnp/xml/ServiceData;
    invoke-virtual {v3}, Lcom/samsung/upnp/xml/ServiceData;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v14

    .line 448
    .local v14, scpdNode:Lcom/samsung/xml/Node;
    if-eqz v14, :cond_10

    move-object v15, v14

    .line 527
    .end local v14           #scpdNode:Lcom/samsung/xml/Node;
    .local v15, scpdNode:Lcom/samsung/xml/Node;
    :goto_f
    return-object v15

    .line 451
    .end local v15           #scpdNode:Lcom/samsung/xml/Node;
    .restart local v14       #scpdNode:Lcom/samsung/xml/Node;
    :cond_10
    const/4 v9, 0x0

    .line 452
    .local v9, lastException:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v16

    .line 455
    .local v16, scpdURLStr:Ljava/lang/String;
    :try_start_15
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 456
    .local v17, scpdUrl:Ljava/net/URL;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_25} :catch_2b

    move-result-object v14

    .line 525
    .end local v17           #scpdUrl:Ljava/net/URL;
    :goto_26
    invoke-virtual {v3, v14}, Lcom/samsung/upnp/xml/ServiceData;->setSCPDNode(Lcom/samsung/xml/Node;)V

    move-object v15, v14

    .line 527
    .end local v14           #scpdNode:Lcom/samsung/xml/Node;
    .restart local v15       #scpdNode:Lcom/samsung/xml/Node;
    goto :goto_f

    .line 458
    .end local v15           #scpdNode:Lcom/samsung/xml/Node;
    .restart local v14       #scpdNode:Lcom/samsung/xml/Node;
    :catch_2b
    move-exception v5

    .line 459
    .local v5, e1:Ljava/lang/Exception;
    move-object v9, v5

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v13

    .line 461
    .local v13, rootDev:Lcom/samsung/upnp/Device;
    const/16 v20, 0x0

    .line 462
    .local v20, urlBaseStr:Ljava/lang/String;
    if-eqz v13, :cond_55

    .line 463
    invoke-virtual {v13}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v20

    .line 465
    if-eqz v20, :cond_41

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    if-gtz v21, :cond_55

    .line 466
    :cond_41
    const-string v21, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_76

    .line 468
    invoke-virtual {v13}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v10

    .line 469
    .local v10, location:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/http/HTTP;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 479
    .end local v10           #location:Ljava/lang/String;
    :cond_55
    :goto_55
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 481
    .local v12, newScpdURLStr:Ljava/lang/String;
    :try_start_6a
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 482
    .local v11, newScpdURL:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_74} :catch_85

    move-result-object v14

    goto :goto_26

    .line 474
    .end local v11           #newScpdURL:Ljava/net/URL;
    .end local v12           #newScpdURLStr:Ljava/lang/String;
    :cond_76
    invoke-virtual {v13}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/upnp/Service;->removeTillLastSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 475
    .restart local v10       #location:Ljava/lang/String;
    move-object/from16 v20, v10

    goto :goto_55

    .line 484
    .end local v10           #location:Ljava/lang/String;
    .restart local v12       #newScpdURLStr:Ljava/lang/String;
    :catch_85
    move-exception v6

    .line 485
    .local v6, e2:Ljava/lang/Exception;
    move-object v9, v6

    .line 486
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/samsung/http/HTTP;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 488
    :try_start_8f
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 489
    .restart local v11       #newScpdURL:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_99} :catch_9b

    move-result-object v14

    goto :goto_26

    .line 491
    .end local v11           #newScpdURL:Ljava/net/URL;
    :catch_9b
    move-exception v7

    .line 492
    .local v7, e3:Ljava/lang/Exception;
    move-object v9, v7

    .line 493
    if-eqz v13, :cond_b8

    .line 494
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/samsung/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 496
    :cond_b8
    :try_start_b8
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/io/File;)Lcom/samsung/xml/Node;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c6} :catch_c9

    move-result-object v14

    goto/16 :goto_26

    .line 498
    :catch_c9
    move-exception v8

    .line 500
    .local v8, e4:Ljava/lang/Exception;
    move-object v9, v8

    .line 505
    :try_start_cb
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/upnp/Service;->getRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 506
    .local v19, serviceURL:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, baseScpdURLStr:Ljava/lang/String;
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 508
    .restart local v11       #newScpdURL:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_f2} :catch_f5

    move-result-object v14

    goto/16 :goto_26

    .line 511
    .end local v2           #baseScpdURLStr:Ljava/lang/String;
    .end local v11           #newScpdURL:Ljava/net/URL;
    .end local v19           #serviceURL:Ljava/lang/String;
    :catch_f5
    move-exception v4

    .line 513
    .local v4, e:Ljava/lang/Exception;
    move-object v9, v4

    goto/16 :goto_26
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
    .line 403
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v0

    .line 404
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
    .line 397
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v0

    .line 398
    .local v0, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v0, p1}, Lcom/samsung/xml/Parser;->parse(Ljava/net/URL;)Lcom/samsung/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getServiceData()Lcom/samsung/upnp/xml/ServiceData;
    .registers 3

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 676
    .local v0, node:Lcom/samsung/xml/Node;
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/xml/ServiceData;

    .line 677
    .local v1, userData:Lcom/samsung/upnp/xml/ServiceData;
    if-nez v1, :cond_17

    .line 678
    new-instance v1, Lcom/samsung/upnp/xml/ServiceData;

    .end local v1           #userData:Lcom/samsung/upnp/xml/ServiceData;
    invoke-direct {v1}, Lcom/samsung/upnp/xml/ServiceData;-><init>()V

    .line 679
    .restart local v1       #userData:Lcom/samsung/upnp/xml/ServiceData;
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 680
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/xml/ServiceData;->setNode(Lcom/samsung/xml/Node;)V

    .line 682
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
    .line 942
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v1

    .line 946
    new-instance v2, Lcom/samsung/upnp/event/NotifyRequest;

    invoke-direct {v2}, Lcom/samsung/upnp/event/NotifyRequest;-><init>()V

    .line 947
    invoke-virtual {v2, p1, p2}, Lcom/samsung/upnp/event/NotifyRequest;->setRequest(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/ServiceStateTable;)Z

    .line 949
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

    .line 951
    invoke-virtual {v2, v0, v1}, Lcom/samsung/upnp/event/NotifyRequest;->post(Ljava/lang/String;I)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    .line 952
    invoke-virtual {v0}, Lcom/samsung/http/HTTPResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_36

    .line 953
    const/4 v0, 0x0

    .line 957
    :goto_35
    return v0

    .line 955
    :cond_36
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->incrementNotifyCount()V

    .line 957
    const/4 v0, 0x1

    goto :goto_35
.end method

.method private notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/StateVariable;)Z
    .registers 12
    .parameter "sub"
    .parameter "stateVar"

    .prologue
    const/4 v7, 0x0

    .line 827
    if-nez p1, :cond_4

    .line 846
    :cond_3
    :goto_3
    return v7

    .line 830
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v6

    .line 831
    .local v6, varName:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 833
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v3

    .line 835
    .local v3, port:I
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, bindAddr:Ljava/lang/String;
    new-instance v2, Lcom/samsung/upnp/event/NotifyRequest;

    invoke-direct {v2}, Lcom/samsung/upnp/event/NotifyRequest;-><init>()V

    .line 838
    .local v2, notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    invoke-virtual {v2, p1, v6, v5}, Lcom/samsung/upnp/event/NotifyRequest;->setRequest(Lcom/samsung/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z

    .line 840
    invoke-virtual {v2, v1, v3}, Lcom/samsung/upnp/event/NotifyRequest;->post(Ljava/lang/String;I)Lcom/samsung/http/HTTPResponse;

    move-result-object v4

    .line 841
    .local v4, res:Lcom/samsung/http/HTTPResponse;
    invoke-virtual {v4}, Lcom/samsung/http/HTTPResponse;->isSuccessful()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 844
    invoke-virtual {p1}, Lcom/samsung/upnp/event/Subscriber;->incrementNotifyCount()V

    .line 846
    const/4 v7, 0x1

    goto :goto_3
.end method

.method private removeTillLastSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "location"

    .prologue
    .line 408
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, results:[Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 410
    .local v1, l:Z
    if-eqz v1, :cond_f

    .line 422
    .end local p1
    :goto_e
    return-object p1

    .line 414
    .restart local p1
    :cond_f
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_16

    .line 415
    const-string p1, ""

    goto :goto_e

    .line 417
    :cond_16
    const-string v2, ""

    .line 418
    .local v2, resultLocation:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_20

    move-object p1, v2

    .line 422
    goto :goto_e

    .line 419
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

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method


# virtual methods
.method public addSubscriber(Lcom/samsung/upnp/event/Subscriber;)V
    .registers 3
    .parameter "sub"

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/event/SubscriberList;->add(Ljava/lang/Object;)Z

    .line 796
    return-void
.end method

.method public announce(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 708
    const-string v0, ""

    .line 709
    if-eqz v1, :cond_c

    .line 710
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    :cond_c
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v3

    .line 716
    new-instance v4, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 717
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v3}, Lcom/samsung/upnp/Device;->getLeaseTime()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 719
    invoke-virtual {v4, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 720
    const-string v0, "ssdp:alive"

    invoke-virtual {v4, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v4, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v4, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 724
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-static {}, Lcom/samsung/upnp/Device;->notifyWait()V

    .line 726
    invoke-virtual {v0, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 727
    return-void
.end method

.method public byebye(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v1

    .line 736
    new-instance v2, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 737
    const-string v3, "ssdp:byebye"

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 741
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lcom/samsung/upnp/Device;->notifyWait()V

    .line 743
    invoke-virtual {v0, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 744
    return-void
.end method

.method public clearSID()V
    .registers 3

    .prologue
    .line 982
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 983
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/Service;->setTimeout(J)V

    .line 984
    return-void
.end method

.method public getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;
    .registers 8
    .parameter "actionName"

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getActionList()Lcom/samsung/upnp/ActionList;

    move-result-object v1

    .line 592
    .local v1, actionList:Lcom/samsung/upnp/ActionList;
    invoke-virtual {v1}, Lcom/samsung/upnp/ActionList;->size()I

    move-result v3

    .line 593
    .local v3, nActions:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_9
    if-lt v2, v3, :cond_d

    .line 601
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 594
    :cond_d
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ActionList;->getAction(I)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 595
    .local v0, action:Lcom/samsung/upnp/Action;
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, name:Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 593
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 598
    :cond_1a
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_c
.end method

.method public getActionList()Lcom/samsung/upnp/ActionList;
    .registers 8

    .prologue
    .line 570
    new-instance v0, Lcom/samsung/upnp/ActionList;

    invoke-direct {v0}, Lcom/samsung/upnp/ActionList;-><init>()V

    .line 571
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 572
    if-nez v1, :cond_c

    .line 586
    :cond_b
    return-object v0

    .line 574
    :cond_c
    const-string v2, "actionList"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 575
    if-eqz v2, :cond_b

    .line 577
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v3

    .line 578
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v4

    .line 579
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v4, :cond_b

    .line 580
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v5

    .line 581
    invoke-static {v5}, Lcom/samsung/upnp/Action;->isActionNode(Lcom/samsung/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 579
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 583
    :cond_2c
    new-instance v6, Lcom/samsung/upnp/Action;

    invoke-direct {v6, v3, v5}, Lcom/samsung/upnp/Action;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 584
    invoke-virtual {v0, v6}, Lcom/samsung/upnp/ActionList;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method public getControlURL()Ljava/lang/String;
    .registers 8

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 267
    .local v1, d:Lcom/samsung/upnp/Device;
    if-nez v1, :cond_11

    .line 269
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v5

    const-string v6, "controlURL"

    invoke-virtual {v5, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    :goto_10
    return-object v5

    .line 272
    :cond_11
    invoke-virtual {v1}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, baseURL:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_32

    .line 276
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 277
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v5

    const-string v6, "controlURL"

    invoke-virtual {v5, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, path:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    .line 282
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_32
    invoke-virtual {v1}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, location:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 285
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v5

    const-string v6, "controlURL"

    invoke-virtual {v5, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    .restart local v3       #path:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 288
    invoke-static {v4, v3}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_10
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
    .registers 8

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 306
    .local v1, d:Lcom/samsung/upnp/Device;
    if-nez v1, :cond_11

    .line 308
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v5

    const-string v6, "eventSubURL"

    invoke-virtual {v5, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 327
    :goto_10
    return-object v5

    .line 311
    :cond_11
    invoke-virtual {v1}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, baseURL:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_32

    .line 315
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 316
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v5

    const-string v6, "eventSubURL"

    invoke-virtual {v5, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, path:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    .line 321
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_32
    invoke-virtual {v1}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, location:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 324
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v5

    const-string v6, "eventSubURL"

    invoke-virtual {v5, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 325
    .restart local v3       #path:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 327
    invoke-static {v4, v3}, Lcom/samsung/util/UriBuilder;->buildUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_10
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
    .line 553
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 554
    if-nez v0, :cond_a

    .line 555
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 561
    :goto_9
    return-object v0

    .line 557
    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
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

    .line 561
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
    .line 972
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
    .line 610
    new-instance v0, Lcom/samsung/upnp/ServiceStateTable;

    invoke-direct {v0}, Lcom/samsung/upnp/ServiceStateTable;-><init>()V

    .line 611
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getSCPDNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 612
    if-nez v1, :cond_c

    .line 629
    :cond_b
    return-object v0

    .line 616
    :cond_c
    const-string v2, "serviceStateTable"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 617
    if-eqz v2, :cond_b

    .line 620
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v3

    .line 621
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v4

    .line 622
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v4, :cond_b

    .line 623
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v5

    .line 624
    invoke-static {v5}, Lcom/samsung/upnp/StateVariable;->isStateVariableNode(Lcom/samsung/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 622
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 626
    :cond_2c
    new-instance v6, Lcom/samsung/upnp/StateVariable;

    invoke-direct {v6, v3, v5}, Lcom/samsung/upnp/StateVariable;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 627
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
    .line 337
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 338
    .local v0, d:Lcom/samsung/upnp/Device;
    if-nez v0, :cond_f

    .line 339
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    :goto_e
    return-object v4

    .line 342
    :cond_f
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, location:Ljava/lang/String;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1f

    .line 345
    :cond_1b
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 347
    :cond_1f
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 348
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
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
    .line 634
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceStateTable()Lcom/samsung/upnp/ServiceStateTable;

    move-result-object v1

    .line 635
    .local v1, stateTable:Lcom/samsung/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lcom/samsung/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 636
    .local v2, tableSize:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_9
    if-lt v0, v2, :cond_d

    .line 644
    const/4 v3, 0x0

    :goto_c
    return-object v3

    .line 637
    :cond_d
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/ServiceStateTable;->getStateVariable(I)Lcom/samsung/upnp/StateVariable;

    move-result-object v3

    .line 638
    .local v3, var:Lcom/samsung/upnp/StateVariable;
    invoke-virtual {v3}, Lcom/samsung/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 639
    .local v4, varName:Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 636
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 641
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
    .line 810
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v3

    .line 811
    .local v3, subList:Lcom/samsung/upnp/event/SubscriberList;
    invoke-virtual {v3}, Lcom/samsung/upnp/event/SubscriberList;->size()I

    move-result v4

    .line 812
    .local v4, subListCnt:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_9
    if-lt v0, v4, :cond_d

    .line 822
    const/4 v2, 0x0

    :goto_c
    return-object v2

    .line 813
    :cond_d
    invoke-virtual {v3, v0}, Lcom/samsung/upnp/event/SubscriberList;->getSubscriber(I)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v2

    .line 814
    .local v2, sub:Lcom/samsung/upnp/event/Subscriber;
    if-nez v2, :cond_16

    .line 812
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 816
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, sid:Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 819
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_c
.end method

.method public getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;
    .registers 2

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/ServiceData;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()J
    .registers 3

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/ServiceData;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasSID()Z
    .registers 2

    .prologue
    .line 988
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
    .line 649
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
    .line 294
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
    .line 333
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

    .line 658
    if-nez p1, :cond_5

    .line 666
    :cond_4
    :goto_4
    return v0

    .line 662
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 663
    goto :goto_4

    .line 664
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 665
    goto :goto_4
.end method

.method public isSubscribed()Z
    .registers 2

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->hasSID()Z

    move-result v0

    return v0
.end method

.method public loadSCPD(Ljava/io/InputStream;)Z
    .registers 6
    .parameter "fis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v1

    .line 387
    .local v1, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v1, p1}, Lcom/samsung/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 388
    .local v2, scpdNode:Lcom/samsung/xml/Node;
    if-nez v2, :cond_c

    .line 389
    const/4 v3, 0x0

    .line 392
    :goto_b
    return v3

    .line 390
    :cond_c
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    .line 391
    .local v0, data:Lcom/samsung/upnp/xml/ServiceData;
    invoke-virtual {v0, v2}, Lcom/samsung/upnp/xml/ServiceData;->setSCPDNode(Lcom/samsung/xml/Node;)V

    .line 392
    const/4 v3, 0x1

    goto :goto_b
.end method

.method public notify(Lcom/samsung/upnp/StateVariable;)V
    .registers 8
    .parameter "stateVar"

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v2

    .line 856
    .local v2, subList:Lcom/samsung/upnp/event/SubscriberList;
    invoke-virtual {v2}, Lcom/samsung/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 857
    .local v3, subListCnt:I
    new-array v4, v3, [Lcom/samsung/upnp/event/Subscriber;

    .line 858
    .local v4, subs:[Lcom/samsung/upnp/event/Subscriber;
    const/4 v0, 0x0

    .local v0, n:I
    :goto_b
    if-lt v0, v3, :cond_1d

    .line 860
    const/4 v0, 0x0

    :goto_e
    if-lt v0, v3, :cond_26

    .line 867
    invoke-virtual {v2}, Lcom/samsung/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 868
    new-array v4, v3, [Lcom/samsung/upnp/event/Subscriber;

    .line 869
    const/4 v0, 0x0

    :goto_17
    if-lt v0, v3, :cond_34

    .line 871
    const/4 v0, 0x0

    :goto_1a
    if-lt v0, v3, :cond_3d

    .line 879
    return-void

    .line 859
    :cond_1d
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/event/SubscriberList;->getSubscriber(I)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 861
    :cond_26
    aget-object v1, v4, v0

    .line 862
    .local v1, sub:Lcom/samsung/upnp/event/Subscriber;
    invoke-virtual {v1}, Lcom/samsung/upnp/event/Subscriber;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 863
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/Service;->removeSubscriber(Lcom/samsung/upnp/event/Subscriber;)V

    .line 860
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 870
    .end local v1           #sub:Lcom/samsung/upnp/event/Subscriber;
    :cond_34
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/event/SubscriberList;->getSubscriber(I)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 869
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 872
    :cond_3d
    aget-object v1, v4, v0

    .line 873
    .restart local v1       #sub:Lcom/samsung/upnp/event/Subscriber;
    invoke-direct {p0, v1, p1}, Lcom/samsung/upnp/Service;->notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/StateVariable;)Z

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public notifyAllStateVariablesToSubscriber(Lcom/samsung/upnp/event/Subscriber;)V
    .registers 3
    .parameter "sub"

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceStateTable()Lcom/samsung/upnp/ServiceStateTable;

    move-result-object v0

    .line 883
    .local v0, stateTable:Lcom/samsung/upnp/ServiceStateTable;
    invoke-direct {p0, p1, v0}, Lcom/samsung/upnp/Service;->notify(Lcom/samsung/upnp/event/Subscriber;Lcom/samsung/upnp/ServiceStateTable;)Z

    .line 884
    return-void
.end method

.method public removeSubscriber(Lcom/samsung/upnp/event/Subscriber;)V
    .registers 3
    .parameter "sub"

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/event/SubscriberList;->remove(Ljava/lang/Object;)Z

    .line 801
    return-void
.end method

.method public serviceSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z
    .registers 8
    .parameter "ssdpPacket"

    .prologue
    .line 748
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v4

    .line 750
    .local v4, ssdpST:Ljava/lang/String;
    if-nez v4, :cond_8

    .line 751
    const/4 v5, 0x0

    .line 767
    :goto_7
    return v5

    .line 753
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 755
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, serviceNT:Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, serviceUSN:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/upnp/device/ST;->isAllDevice(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 759
    invoke-virtual {v0, p1, v1, v3}, Lcom/samsung/upnp/Device;->postSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 767
    :cond_1d
    :goto_1d
    const/4 v5, 0x1

    goto :goto_7

    .line 761
    :cond_1f
    invoke-static {v4}, Lcom/samsung/upnp/device/ST;->isURNService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 762
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, serviceType:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 764
    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/upnp/Device;->postSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1d
.end method

.method public setActionListener(Lcom/samsung/upnp/control/ActionListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getActionList()Lcom/samsung/upnp/ActionList;

    move-result-object v1

    .line 1017
    .local v1, actionList:Lcom/samsung/upnp/ActionList;
    invoke-virtual {v1}, Lcom/samsung/upnp/ActionList;->size()I

    move-result v3

    .line 1018
    .local v3, nActions:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_9
    if-lt v2, v3, :cond_c

    .line 1022
    return-void

    .line 1019
    :cond_c
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ActionList;->getAction(I)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1020
    .local v0, action:Lcom/samsung/upnp/Action;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Action;->setActionListener(Lcom/samsung/upnp/control/ActionListener;)V

    .line 1018
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public setQueryListener(Lcom/samsung/upnp/control/QueryListener;)V
    .registers 6
    .parameter "queryListener"

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/samsung/upnp/Service;->getServiceStateTable()Lcom/samsung/upnp/ServiceStateTable;

    move-result-object v1

    .line 777
    .local v1, stateTable:Lcom/samsung/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lcom/samsung/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 778
    .local v2, tableSize:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_9
    if-lt v0, v2, :cond_c

    .line 782
    return-void

    .line 779
    :cond_c
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/ServiceStateTable;->getStateVariable(I)Lcom/samsung/upnp/StateVariable;

    move-result-object v3

    .line 780
    .local v3, var:Lcom/samsung/upnp/StateVariable;
    invoke-virtual {v3, p1}, Lcom/samsung/upnp/StateVariable;->setQueryListener(Lcom/samsung/upnp/control/QueryListener;)V

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public setSID(Ljava/lang/String;)V
    .registers 3
    .parameter "id"

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/ServiceData;->setSID(Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public setTimeout(J)V
    .registers 4
    .parameter "value"

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/samsung/upnp/Service;->getServiceData()Lcom/samsung/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/upnp/xml/ServiceData;->setTimeout(J)V

    .line 1008
    return-void
.end method
