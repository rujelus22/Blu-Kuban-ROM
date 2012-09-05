.class public Lcom/samsung/pmr/PersonalMessageControlPoint;
.super Ljava/lang/Object;
.source "PersonalMessageControlPoint.java"

# interfaces
.implements Lcom/samsung/upnp/IControlPoint;


# instance fields
.field private activityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private devNodeList:Lcom/samsung/xml/NodeList;

.field deviceChangeListenerList:Lcom/samsung/util/ListenerList;

.field private deviceDisposer:Lcom/samsung/upnp/device/Disposer;

.field private deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

.field private deviceSearchResponseListenerList:Lcom/samsung/util/ListenerList;

.field private expiredDeviceMonitoringInterval:J

.field private mutex:Lcom/samsung/util/Mutex;

.field private nmprMode:Z

.field private searchMx:I

.field private ssdpNotifySocketList:Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

.field private ssdpPort:I

.field private ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 85
    invoke-static {}, Lcom/samsung/upnp/UPnP;->initialize()V

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 107
    const/16 v0, 0x1f48

    invoke-direct {p0, v0}, Lcom/samsung/pmr/PersonalMessageControlPoint;-><init>(I)V

    .line 108
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "ssdpPort"

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/samsung/util/Mutex;

    invoke-direct {v0}, Lcom/samsung/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->mutex:Lcom/samsung/util/Mutex;

    .line 130
    iput v2, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->ssdpPort:I

    .line 160
    new-instance v0, Lcom/samsung/xml/NodeList;

    invoke-direct {v0}, Lcom/samsung/xml/NodeList;-><init>()V

    iput-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->activityList:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    .line 415
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceSearchResponseListenerList:Lcom/samsung/util/ListenerList;

    .line 443
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    .line 515
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->searchMx:I

    .line 94
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    invoke-direct {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;-><init>()V

    iput-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->ssdpNotifySocketList:Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    .line 95
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    invoke-direct {v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;-><init>()V

    iput-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->setSSDPPort(I)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/pmr/PersonalMessageControlPoint;->setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V

    .line 100
    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->setExpiredDeviceMonitoringInterval(J)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/samsung/pmr/PersonalMessageControlPoint;->setNMPRMode(Z)V

    .line 103
    return-void
.end method

.method private addActivityDevice(Ljava/lang/String;)V
    .registers 3
    .parameter "udn"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method private declared-synchronized addDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 16
    .parameter "ssdpPacket"

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v11

    .line 183
    .local v11, usn:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, udn:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/samsung/pmr/PersonalMessageControlPoint;->addActivityDevice(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v8}, Lcom/samsung/pmr/PersonalMessageControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 188
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_17

    .line 189
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_59

    .line 239
    :goto_15
    monitor-exit p0

    return-void

    .line 193
    :cond_17
    :try_start_17
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_59

    move-result-object v2

    .line 194
    .local v2, location:Ljava/lang/String;
    const/4 v10, 0x0

    .line 196
    .local v10, urlIn:Ljava/io/InputStream;
    :try_start_1c
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 197
    .local v3, locationUrl:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 198
    .local v9, urlCon:Ljava/net/HttpURLConnection;
    const/16 v12, 0xbb8

    invoke-virtual {v9, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    const-string v12, "GET"

    invoke-virtual {v9, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 200
    const-string v12, "User-Agent"

    const-string v13, "SEC_HHP_01099990000/1.0"

    invoke-virtual {v9, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 203
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v4

    .line 205
    .local v4, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v4, v10}, Lcom/samsung/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;

    move-result-object v7

    .line 206
    .local v7, rootNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v7}, Lcom/samsung/pmr/PersonalMessageControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v6

    .line 207
    .local v6, rootDev:Lcom/samsung/upnp/Device;
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    if-nez v6, :cond_61

    .line 210
    invoke-direct {p0, v8}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeActivityDevice(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_1c .. :try_end_50} :catchall_a2
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_50} :catch_76
    .catch Lcom/samsung/xml/ParserException; {:try_start_1c .. :try_end_50} :catch_88

    .line 231
    if-eqz v10, :cond_55

    .line 233
    :try_start_52
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_59
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_5c

    .line 237
    :cond_55
    :goto_55
    :try_start_55
    invoke-direct {p0, v8}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeActivityDevice(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_15

    .line 182
    .end local v0           #dev:Lcom/samsung/upnp/Device;
    .end local v2           #location:Ljava/lang/String;
    .end local v3           #locationUrl:Ljava/net/URL;
    .end local v4           #parser:Lcom/samsung/xml/Parser;
    .end local v6           #rootDev:Lcom/samsung/upnp/Device;
    .end local v7           #rootNode:Lcom/samsung/xml/Node;
    .end local v8           #udn:Ljava/lang/String;
    .end local v9           #urlCon:Ljava/net/HttpURLConnection;
    .end local v10           #urlIn:Ljava/io/InputStream;
    .end local v11           #usn:Ljava/lang/String;
    :catchall_59
    move-exception v12

    monitor-exit p0

    throw v12

    .line 234
    .restart local v0       #dev:Lcom/samsung/upnp/Device;
    .restart local v2       #location:Ljava/lang/String;
    .restart local v3       #locationUrl:Ljava/net/URL;
    .restart local v4       #parser:Lcom/samsung/xml/Parser;
    .restart local v6       #rootDev:Lcom/samsung/upnp/Device;
    .restart local v7       #rootNode:Lcom/samsung/xml/Node;
    .restart local v8       #udn:Ljava/lang/String;
    .restart local v9       #urlCon:Ljava/net/HttpURLConnection;
    .restart local v10       #urlIn:Ljava/io/InputStream;
    .restart local v11       #usn:Ljava/lang/String;
    :catch_5c
    move-exception v1

    .line 235
    .local v1, e:Ljava/io/IOException;
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_59

    goto :goto_55

    .line 213
    .end local v1           #e:Ljava/io/IOException;
    :cond_61
    :try_start_61
    invoke-virtual {v6, p1}, Lcom/samsung/upnp/Device;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 214
    invoke-direct {p0, v8}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, v7}, Lcom/samsung/pmr/PersonalMessageControlPoint;->addDevice(Lcom/samsung/xml/Node;)V

    .line 221
    invoke-virtual {p0, v6}, Lcom/samsung/pmr/PersonalMessageControlPoint;->performAddDeviceListener(Lcom/samsung/upnp/Device;)V
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_a2
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6d} :catch_76
    .catch Lcom/samsung/xml/ParserException; {:try_start_61 .. :try_end_6d} :catch_88

    .line 231
    if-eqz v10, :cond_72

    .line 233
    :try_start_6f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_59
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_b1

    .line 237
    :cond_72
    :goto_72
    :try_start_72
    invoke-direct {p0, v8}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeActivityDevice(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_59

    goto :goto_15

    .line 223
    .end local v3           #locationUrl:Ljava/net/URL;
    .end local v4           #parser:Lcom/samsung/xml/Parser;
    .end local v6           #rootDev:Lcom/samsung/upnp/Device;
    .end local v7           #rootNode:Lcom/samsung/xml/Node;
    .end local v9           #urlCon:Ljava/net/HttpURLConnection;
    :catch_76
    move-exception v1

    .line 224
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_77
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_a2

    .line 231
    if-eqz v10, :cond_7f

    .line 233
    :try_start_7c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_59
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_83

    .line 237
    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-direct {p0, v8}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    goto :goto_15

    .line 234
    :catch_83
    move-exception v1

    .line 235
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_59

    goto :goto_7f

    .line 226
    .end local v1           #e:Ljava/io/IOException;
    :catch_88
    move-exception v5

    .line 227
    .local v5, pe:Lcom/samsung/xml/ParserException;
    :try_start_89
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;)V

    .line 228
    invoke-static {v5}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_a2

    .line 231
    if-eqz v10, :cond_98

    .line 233
    :try_start_95
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_59
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9d

    .line 237
    :cond_98
    :goto_98
    :try_start_98
    invoke-direct {p0, v8}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 234
    :catch_9d
    move-exception v1

    .line 235
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_59

    goto :goto_98

    .line 230
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #pe:Lcom/samsung/xml/ParserException;
    :catchall_a2
    move-exception v12

    .line 231
    if-eqz v10, :cond_a8

    .line 233
    :try_start_a5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_59
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_ac

    .line 237
    :cond_a8
    :goto_a8
    :try_start_a8
    invoke-direct {p0, v8}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    .line 238
    throw v12

    .line 234
    :catch_ac
    move-exception v1

    .line 235
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a8

    .line 234
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #locationUrl:Ljava/net/URL;
    .restart local v4       #parser:Lcom/samsung/xml/Parser;
    .restart local v6       #rootDev:Lcom/samsung/upnp/Device;
    .restart local v7       #rootNode:Lcom/samsung/xml/Node;
    .restart local v9       #urlCon:Ljava/net/HttpURLConnection;
    :catch_b1
    move-exception v1

    .line 235
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_a8 .. :try_end_b5} :catchall_59

    goto :goto_72
.end method

.method private addDevice(Lcom/samsung/xml/Node;)V
    .registers 3
    .parameter "rootNode"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/NodeList;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method private getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 243
    if-nez p1, :cond_4

    .line 248
    :cond_3
    :goto_3
    return-object v0

    .line 245
    :cond_4
    const-string v1, "device"

    invoke-virtual {p1, v1}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_3

    .line 248
    new-instance v0, Lcom/samsung/upnp/Device;

    invoke-direct {v0, p1, v1}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    goto :goto_3
.end method

.method private isActivityDevice(Ljava/lang/String;)Z
    .registers 3
    .parameter "udn"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeActivityDevice(Ljava/lang/String;)V
    .registers 3
    .parameter "udn"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method private removeDevice(Lcom/samsung/upnp/Device;)V
    .registers 3
    .parameter "dev"

    .prologue
    .line 316
    if-nez p1, :cond_3

    .line 319
    :goto_2
    return-void

    .line 318
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeDevice(Lcom/samsung/xml/Node;)V

    goto :goto_2
.end method

.method private removeDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 5
    .parameter

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v0

    if-nez v0, :cond_7

    .line 342
    :goto_6
    return-void

    .line 336
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lcom/samsung/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove udn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, v0}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeDeviceByUdn(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private removeDevice(Lcom/samsung/xml/Node;)V
    .registers 4
    .parameter "rootNode"

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 307
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 308
    invoke-virtual {p0, v0}, Lcom/samsung/pmr/PersonalMessageControlPoint;->performRemoveDeviceListener(Lcom/samsung/upnp/Device;)V

    .line 311
    :cond_f
    iget-object v1, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v1, p1}, Lcom/samsung/xml/NodeList;->remove(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method private removeDeviceByUdn(Ljava/lang/String;)V
    .registers 3
    .parameter "udn"

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->getDeviceByUdn(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 330
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-direct {p0, v0}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeDevice(Lcom/samsung/upnp/Device;)V

    .line 331
    return-void
.end method


# virtual methods
.method public getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;
    .registers 8
    .parameter "name"

    .prologue
    .line 267
    iget-object v5, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v5}, Lcom/samsung/xml/NodeList;->size()I

    move-result v3

    .line 268
    .local v3, nRoots:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    if-lt v2, v3, :cond_b

    .line 279
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return-object v1

    .line 269
    :cond_b
    iget-object v5, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v5, v2}, Lcom/samsung/xml/NodeList;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 270
    .local v4, rootNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v4}, Lcom/samsung/pmr/PersonalMessageControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 271
    .local v1, dev:Lcom/samsung/upnp/Device;
    if-nez v1, :cond_1a

    .line 268
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 273
    :cond_1a
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 275
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 276
    .local v0, cdev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_17

    move-object v1, v0

    .line 277
    goto :goto_a
.end method

.method public getDeviceByUdn(Ljava/lang/String;)Lcom/samsung/upnp/Device;
    .registers 6
    .parameter "udn"

    .prologue
    .line 284
    iget-object v2, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v2}, Lcom/samsung/xml/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    .line 292
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 284
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/xml/Node;

    .line 285
    .local v1, node:Lcom/samsung/xml/Node;
    invoke-direct {p0, v1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 286
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_6

    .line 288
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_d
.end method

.method public getExpiredDeviceMonitoringInterval()J
    .registers 3

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->expiredDeviceMonitoringInterval:J

    return-wide v0
.end method

.method public isValidAlivePacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z
    .registers 3
    .parameter "packet"

    .prologue
    .line 478
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isPMRDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 479
    const/4 v0, 0x0

    .line 480
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public notifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 5
    .parameter "packet"

    .prologue
    .line 485
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, usn:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, udn:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isPMRDevice()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 489
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 490
    invoke-direct {p0, v0}, Lcom/samsung/pmr/PersonalMessageControlPoint;->isActivityDevice(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 491
    invoke-virtual {p0, v0}, Lcom/samsung/pmr/PersonalMessageControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v2

    if-nez v2, :cond_23

    .line 492
    invoke-direct {p0, p1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->addDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 493
    :cond_23
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 494
    invoke-direct {p0, p1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->removeDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 496
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->performNotifyListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 497
    return-void
.end method

.method public performAddDeviceListener(Lcom/samsung/upnp/Device;)V
    .registers 6
    .parameter "dev"

    .prologue
    .line 457
    iget-object v3, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->size()I

    move-result v1

    .line 458
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    if-lt v2, v1, :cond_a

    .line 462
    return-void

    .line 459
    :cond_a
    iget-object v3, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3, v2}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceChangeListener;

    .line 460
    .local v0, listener:Lcom/samsung/api/DeviceChangeListener;
    new-instance v3, Lcom/samsung/api/DeviceItem;

    invoke-direct {v3, p1}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-interface {v0, v3}, Lcom/samsung/api/DeviceChangeListener;->deviceAdded(Lcom/samsung/api/DeviceItem;)V

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public performNotifyListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 6
    .parameter "ssdpPacket"

    .prologue
    .line 404
    iget-object v3, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->size()I

    move-result v1

    .line 405
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    if-lt v2, v1, :cond_a

    .line 409
    return-void

    .line 406
    :cond_a
    iget-object v3, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3, v2}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/device/NotifyListener;

    .line 407
    .local v0, listener:Lcom/samsung/upnp/device/NotifyListener;
    invoke-interface {v0, p1}, Lcom/samsung/upnp/device/NotifyListener;->deviceNotifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public performRemoveDeviceListener(Lcom/samsung/upnp/Device;)V
    .registers 6
    .parameter "dev"

    .prologue
    .line 466
    iget-object v3, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->size()I

    move-result v1

    .line 467
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    if-lt v2, v1, :cond_a

    .line 471
    return-void

    .line 468
    :cond_a
    iget-object v3, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3, v2}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceChangeListener;

    .line 469
    .local v0, listener:Lcom/samsung/api/DeviceChangeListener;
    new-instance v3, Lcom/samsung/api/DeviceItem;

    invoke-direct {v3, p1}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-interface {v0, v3}, Lcom/samsung/api/DeviceChangeListener;->deviceRemoved(Lcom/samsung/api/DeviceItem;)V

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public performSearchResponseListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 6
    .parameter "ssdpPacket"

    .prologue
    .line 429
    iget-object v3, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceSearchResponseListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->size()I

    move-result v1

    .line 430
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    if-lt v2, v1, :cond_a

    .line 434
    return-void

    .line 431
    :cond_a
    iget-object v3, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceSearchResponseListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3, v2}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/device/SearchResponseListener;

    .line 432
    .local v0, listener:Lcom/samsung/upnp/device/SearchResponseListener;
    invoke-interface {v0, p1}, Lcom/samsung/upnp/device/SearchResponseListener;->deviceSearchResponseReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public renewSubscriberService()V
    .registers 1

    .prologue
    .line 642
    return-void
.end method

.method public searchResponseReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 5
    .parameter "packet"

    .prologue
    .line 501
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, usn:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, udn:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isPMRDevice()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 505
    invoke-direct {p0, v0}, Lcom/samsung/pmr/PersonalMessageControlPoint;->isActivityDevice(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 506
    invoke-virtual {p0, v0}, Lcom/samsung/pmr/PersonalMessageControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 507
    invoke-direct {p0, p1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->addDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 508
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/samsung/pmr/PersonalMessageControlPoint;->performSearchResponseListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 509
    return-void
.end method

.method public setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V
    .registers 2
    .parameter "disposer"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->deviceDisposer:Lcom/samsung/upnp/device/Disposer;

    .line 379
    return-void
.end method

.method public setExpiredDeviceMonitoringInterval(J)V
    .registers 3
    .parameter "interval"

    .prologue
    .line 368
    iput-wide p1, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->expiredDeviceMonitoringInterval:J

    .line 369
    return-void
.end method

.method public setNMPRMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->nmprMode:Z

    .line 149
    return-void
.end method

.method public setSSDPPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 137
    iput p1, p0, Lcom/samsung/pmr/PersonalMessageControlPoint;->ssdpPort:I

    .line 138
    return-void
.end method
