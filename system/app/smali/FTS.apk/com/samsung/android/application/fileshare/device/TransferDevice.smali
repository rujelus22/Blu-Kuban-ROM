.class public Lcom/samsung/android/application/fileshare/device/TransferDevice;
.super Lcom/samsung/upnp/Device;
.source "TransferDevice.java"


# instance fields
.field private isStart:Z

.field private mIPAddress:Ljava/lang/String;

.field private mIsMobileAP:Z

.field private mMutex:Ljava/lang/Object;

.field private mService:Lcom/samsung/android/application/fileshare/device/TransferService;

.field private macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

.field private macroIcon_png:Ljava/io/ByteArrayOutputStream;

.field private smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

.field private smallIcon_png:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/samsung/upnp/Device;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mMutex:Ljava/lang/Object;

    .line 58
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mIPAddress:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mService:Lcom/samsung/android/application/fileshare/device/TransferService;

    .line 60
    iput-boolean v2, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mIsMobileAP:Z

    .line 186
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    .line 187
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    .line 188
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    .line 189
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    .line 318
    iput-boolean v2, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->isStart:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .parameter "isMobileAPMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/samsung/upnp/Device;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mMutex:Ljava/lang/Object;

    .line 58
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mIPAddress:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mService:Lcom/samsung/android/application/fileshare/device/TransferService;

    .line 60
    iput-boolean v2, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mIsMobileAP:Z

    .line 186
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    .line 187
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    .line 188
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    .line 189
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    .line 318
    iput-boolean v2, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->isStart:Z

    .line 67
    if-eqz p1, :cond_27

    .line 68
    const-string v0, "[FT]-Stack"

    const-string v1, "TransferDevice create.. set to MobileAP Mode "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_27
    iput-boolean p1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mIsMobileAP:Z

    .line 70
    return-void
.end method

.method private httpGetRequestReceived(Lcom/samsung/http/HTTPRequest;)Z
    .registers 9
    .parameter "httpReq"

    .prologue
    const/16 v6, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    if-nez p1, :cond_7

    .line 311
    :cond_6
    :goto_6
    return v3

    .line 263
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, uri:Ljava/lang/String;
    const-string v5, "icon/icon.png"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 267
    iget-object v5, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_6

    .line 269
    invoke-virtual {p0, v3}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v1

    .line 270
    .local v1, icon:Lcom/samsung/upnp/Icon;
    new-instance v0, Lcom/samsung/http/HTTPResponse;

    invoke-direct {v0}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 271
    .local v0, httpRes:Lcom/samsung/http/HTTPResponse;
    invoke-virtual {v0, v6}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 272
    invoke-virtual {v1}, Lcom/samsung/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 274
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/samsung/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    .line 275
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    move v3, v4

    .line 276
    goto :goto_6

    .line 277
    .end local v0           #httpRes:Lcom/samsung/http/HTTPResponse;
    .end local v1           #icon:Lcom/samsung/upnp/Icon;
    :cond_47
    const-string v5, "icon/icon2.png"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 278
    iget-object v5, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_6

    .line 280
    invoke-virtual {p0, v4}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v1

    .line 281
    .restart local v1       #icon:Lcom/samsung/upnp/Icon;
    new-instance v0, Lcom/samsung/http/HTTPResponse;

    invoke-direct {v0}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 282
    .restart local v0       #httpRes:Lcom/samsung/http/HTTPResponse;
    invoke-virtual {v0, v6}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 283
    invoke-virtual {v1}, Lcom/samsung/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 285
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/samsung/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    .line 286
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    move v3, v4

    .line 287
    goto :goto_6

    .line 288
    .end local v0           #httpRes:Lcom/samsung/http/HTTPResponse;
    .end local v1           #icon:Lcom/samsung/upnp/Icon;
    :cond_83
    const-string v5, "icon/icon.jpeg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 289
    iget-object v5, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_6

    .line 291
    invoke-virtual {p0, v3}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v1

    .line 292
    .restart local v1       #icon:Lcom/samsung/upnp/Icon;
    new-instance v0, Lcom/samsung/http/HTTPResponse;

    invoke-direct {v0}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 293
    .restart local v0       #httpRes:Lcom/samsung/http/HTTPResponse;
    invoke-virtual {v0, v6}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 294
    invoke-virtual {v1}, Lcom/samsung/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 296
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/samsung/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    .line 297
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    move v3, v4

    .line 298
    goto/16 :goto_6

    .line 299
    .end local v0           #httpRes:Lcom/samsung/http/HTTPResponse;
    .end local v1           #icon:Lcom/samsung/upnp/Icon;
    :cond_c0
    const-string v5, "icon/icon2.jpeg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 300
    iget-object v5, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_6

    .line 302
    invoke-virtual {p0, v4}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v1

    .line 303
    .restart local v1       #icon:Lcom/samsung/upnp/Icon;
    new-instance v0, Lcom/samsung/http/HTTPResponse;

    invoke-direct {v0}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 304
    .restart local v0       #httpRes:Lcom/samsung/http/HTTPResponse;
    invoke-virtual {v0, v6}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 305
    invoke-virtual {v1}, Lcom/samsung/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 307
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/samsung/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    .line 308
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    move v3, v4

    .line 309
    goto/16 :goto_6
.end method


# virtual methods
.method public getFileTransferService()Lcom/samsung/android/application/fileshare/device/TransferService;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mService:Lcom/samsung/android/application/fileshare/device/TransferService;

    return-object v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    invoke-static {}, Lcom/samsung/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 3
    .parameter "httpReq"

    .prologue
    .line 251
    if-nez p1, :cond_3

    .line 258
    :cond_2
    :goto_2
    return-void

    .line 254
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->httpGetRequestReceived(Lcom/samsung/http/HTTPRequest;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    invoke-super {p0, p1}, Lcom/samsung/upnp/Device;->httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    goto :goto_2
.end method

.method public initailize(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "description"
    .parameter "fileTransferService"
    .parameter "friendlyName"
    .parameter "udn"
    .parameter "ipAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    iput-object p5, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mIPAddress:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->loadDescription(Ljava/io/InputStream;)Z

    .line 81
    if-eqz p3, :cond_b

    .line 82
    invoke-virtual {p0, p3, v2}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->setFriendlyName(Ljava/lang/String;Z)Z

    .line 84
    :cond_b
    if-eqz p4, :cond_10

    .line 85
    invoke-virtual {p0, p4}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->setUDN(Ljava/lang/String;)V

    .line 87
    :cond_10
    const-string v3, "urn:samsung.com:service:FileTransport:1"

    invoke-virtual {p0, v3}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v1

    .line 91
    .local v1, servFileTransfer:Lcom/samsung/upnp/Service;
    if-eqz v1, :cond_1b

    .line 92
    :try_start_18
    invoke-virtual {v1, p2}, Lcom/samsung/upnp/Service;->loadSCPD(Ljava/io/InputStream;)Z
    :try_end_1b
    .catch Lcom/samsung/xml/ParserException; {:try_start_18 .. :try_end_1b} :catch_38

    .line 98
    :cond_1b
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mIPAddress:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->setInterfaceAddress(Ljava/lang/String;)V

    .line 99
    const v3, 0x80eb

    invoke-virtual {p0, v3}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->setHTTPPort(I)V

    .line 101
    new-instance v3, Lcom/samsung/android/application/fileshare/device/TransferService;

    invoke-direct {v3, p0}, Lcom/samsung/android/application/fileshare/device/TransferService;-><init>(Lcom/samsung/android/application/fileshare/device/TransferDevice;)V

    iput-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mService:Lcom/samsung/android/application/fileshare/device/TransferService;

    .line 103
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mService:Lcom/samsung/android/application/fileshare/device/TransferService;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mService:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v3, v3, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferStatus:Lcom/samsung/upnp/StateVariable;

    if-nez v3, :cond_3d

    .line 110
    :cond_37
    :goto_37
    return v2

    .line 93
    :catch_38
    move-exception v0

    .line 94
    .local v0, e:Lcom/samsung/xml/ParserException;
    invoke-virtual {v0}, Lcom/samsung/xml/ParserException;->printStackTrace()V

    goto :goto_37

    .line 106
    .end local v0           #e:Lcom/samsung/xml/ParserException;
    :cond_3d
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mService:Lcom/samsung/android/application/fileshare/device/TransferService;

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/Service;->setActionListener(Lcom/samsung/upnp/control/ActionListener;)V

    .line 107
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mService:Lcom/samsung/android/application/fileshare/device/TransferService;

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/Service;->setQueryListener(Lcom/samsung/upnp/control/QueryListener;)V

    .line 109
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stack: initialized FileTransfer Device "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mIPAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/application/fileshare/Defines;->changeIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v2, 0x1

    goto :goto_37
.end method

.method public isServerStarted()Z
    .registers 3

    .prologue
    .line 365
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_3
    iget-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->isStart:Z

    monitor-exit v1

    return v0

    .line 365
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setFriendlyName(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "value"
    .parameter "needAnnounce"

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/samsung/upnp/Device;->setFriendlyName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 122
    invoke-static {p1}, Lcom/samsung/http/HTTP;->setDeviceName(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .registers 3
    .parameter "ifaddr"

    .prologue
    .line 136
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    :cond_c
    :goto_c
    return-void

    .line 140
    :cond_d
    invoke-static {p1}, Lcom/samsung/net/HostInterface;->setInterface(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public setTransferTimeout(J)V
    .registers 4
    .parameter "timeout"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getFileTransferService()Lcom/samsung/android/application/fileshare/device/TransferService;

    move-result-object v0

    .line 172
    .local v0, service:Lcom/samsung/android/application/fileshare/device/TransferService;
    if-nez v0, :cond_7

    .line 175
    :goto_6
    return-void

    .line 174
    :cond_7
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/application/fileshare/device/TransferService;->setTransferTimeout(J)V

    goto :goto_6
.end method

.method public setUploadPath(Ljava/io/File;)Z
    .registers 4
    .parameter "path"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getFileTransferService()Lcom/samsung/android/application/fileshare/device/TransferService;

    move-result-object v0

    .line 155
    .local v0, service:Lcom/samsung/android/application/fileshare/device/TransferService;
    if-nez v0, :cond_8

    .line 156
    const/4 v1, 0x0

    .line 157
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0, p1}, Lcom/samsung/android/application/fileshare/device/TransferService;->setUploadPath(Ljava/io/File;)Z

    move-result v1

    goto :goto_7
.end method

.method public start()Z
    .registers 2

    .prologue
    .line 321
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->start(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method start(Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 326
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getFileTransferService()Lcom/samsung/android/application/fileshare/device/TransferService;

    move-result-object v2

    .line 328
    if-nez v2, :cond_d

    .line 329
    monitor-exit v1

    const/4 v0, 0x0

    .line 338
    :goto_c
    return v0

    .line 332
    :cond_d
    iget-boolean v2, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->isStart:Z

    if-nez v2, :cond_19

    .line 333
    iget-boolean v2, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mIsMobileAP:Z

    invoke-super {p0, v2}, Lcom/samsung/upnp/Device;->start(Z)Z

    .line 334
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->isStart:Z

    .line 337
    :cond_19
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stack: start FileTransfer Device ==> mIsMobileAP :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mIsMobileAP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    monitor-exit v1

    goto :goto_c

    .line 326
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public stop()Z
    .registers 5

    .prologue
    .line 344
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_3
    invoke-super {p0}, Lcom/samsung/upnp/Device;->stop()Z

    move-result v0

    .line 346
    const-string v2, "urn:samsung.com:service:FileTransport:1"

    invoke-super {p0, v2}, Lcom/samsung/upnp/Device;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/upnp/Service;->clearSubscriber()V

    .line 348
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->isStart:Z

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getFileTransferService()Lcom/samsung/android/application/fileshare/device/TransferService;

    move-result-object v2

    .line 350
    if-eqz v2, :cond_1c

    .line 351
    invoke-virtual {v2}, Lcom/samsung/android/application/fileshare/device/TransferService;->stop()V

    .line 353
    :cond_1c
    const-string v2, "[FT]-Stack"

    const-string v3, "stack: stop FileTransfer Device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    monitor-exit v1

    return v0

    .line 344
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public terminate()V
    .registers 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferDevice;->mService:Lcom/samsung/android/application/fileshare/device/TransferService;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/TransferService;->terminate()V

    .line 359
    monitor-exit v1

    .line 362
    return-void

    .line 359
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
