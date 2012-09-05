.class public Lcom/samsung/api/DigitalMediaServerAPI;
.super Ljava/lang/Object;
.source "DigitalMediaServerAPI.java"


# static fields
.field private static volatile mInstance:Lcom/samsung/api/DigitalMediaServerAPI;

.field private static mMutex:Ljava/lang/Object;


# instance fields
.field private mAudioDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

.field private mImageDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

.field private mServer:Lcom/samsung/upnp/media/server/MediaServer;

.field private mVideoDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/api/DigitalMediaServerAPI;->mInstance:Lcom/samsung/api/DigitalMediaServerAPI;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/api/DigitalMediaServerAPI;->mMutex:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    .line 48
    iput-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mImageDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    .line 49
    iput-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mAudioDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    .line 50
    iput-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mVideoDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    .line 91
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DigitalMediaControllerAPI;->getCP()Lcom/samsung/upnp/media/server/MediaControlPoint;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/upnp/media/server/MediaServer;->getMediaServerInstatnce(Landroid/content/Context;Lcom/samsung/upnp/media/server/MediaControlPoint;)Lcom/samsung/upnp/media/server/MediaServer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    .line 92
    new-instance v0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    const-string v1, "Audio"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mAudioDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    .line 93
    new-instance v0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    const-string v1, "Video"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mVideoDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    .line 94
    new-instance v0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    const-string v1, "Image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mImageDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    .line 95
    return-void
.end method

.method private getDirectory(I)Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;
    .registers 3
    .parameter "category"

    .prologue
    .line 395
    packed-switch p1, :pswitch_data_e

    .line 403
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 397
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mVideoDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    goto :goto_4

    .line 399
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mAudioDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    goto :goto_4

    .line 401
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mImageDir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    goto :goto_4

    .line 395
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/api/DigitalMediaServerAPI;
    .registers 3
    .parameter "context"

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/api/DigitalMediaServerAPI;->mInstance:Lcom/samsung/api/DigitalMediaServerAPI;

    if-nez v0, :cond_13

    .line 81
    sget-object v1, Lcom/samsung/api/DigitalMediaServerAPI;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_7
    sget-object v0, Lcom/samsung/api/DigitalMediaServerAPI;->mInstance:Lcom/samsung/api/DigitalMediaServerAPI;

    if-nez v0, :cond_12

    .line 83
    new-instance v0, Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-direct {v0, p0}, Lcom/samsung/api/DigitalMediaServerAPI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/api/DigitalMediaServerAPI;->mInstance:Lcom/samsung/api/DigitalMediaServerAPI;

    .line 81
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 87
    :cond_13
    sget-object v0, Lcom/samsung/api/DigitalMediaServerAPI;->mInstance:Lcom/samsung/api/DigitalMediaServerAPI;

    return-object v0

    .line 81
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public addDirectory(I)Z
    .registers 5
    .parameter "category"

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v2, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v2, :cond_6

    .line 325
    :cond_5
    :goto_5
    return v1

    .line 321
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/api/DigitalMediaServerAPI;->getDirectory(I)Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    move-result-object v0

    .line 322
    .local v0, dir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;
    if-eqz v0, :cond_5

    .line 325
    invoke-virtual {p0, v0}, Lcom/samsung/api/DigitalMediaServerAPI;->addDirectory(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)Z

    move-result v1

    goto :goto_5
.end method

.method public addDirectory(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)Z
    .registers 3
    .parameter "dir"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 222
    :cond_6
    const/4 v0, 0x0

    .line 224
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaServer;->addContentDirectory(Lcom/samsung/upnp/media/server/Directory;)Z

    move-result v0

    goto :goto_7
.end method

.method public getUploadPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v0, :cond_7

    .line 307
    const-string v0, ""

    .line 309
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaServer;->getUploadPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public isDirectoryShared(I)Z
    .registers 6
    .parameter "category"

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v3, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v3, :cond_6

    .line 390
    :cond_5
    :goto_5
    return v2

    .line 383
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/api/DigitalMediaServerAPI;->getDirectory(I)Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    move-result-object v0

    .line 384
    .local v0, dir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;
    if-eqz v0, :cond_5

    .line 387
    iget-object v3, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v1

    .line 388
    .local v1, directory:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-eqz v1, :cond_5

    .line 390
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->isContainedDirectory(Lcom/samsung/upnp/media/server/Directory;)Z

    move-result v2

    goto :goto_5
.end method

.method public isServerStarted()Z
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v0, :cond_6

    .line 210
    const/4 v0, 0x0

    .line 211
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaServer;->isServerStarted()Z

    move-result v0

    goto :goto_5
.end method

.method public removeDirectory(I)Z
    .registers 5
    .parameter "category"

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v2, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v2, :cond_6

    .line 341
    :cond_5
    :goto_5
    return v1

    .line 337
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/api/DigitalMediaServerAPI;->getDirectory(I)Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    move-result-object v0

    .line 338
    .local v0, dir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;
    if-eqz v0, :cond_5

    .line 341
    invoke-virtual {p0, v0}, Lcom/samsung/api/DigitalMediaServerAPI;->removeDirectory(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)Z

    move-result v1

    goto :goto_5
.end method

.method public removeDirectory(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)Z
    .registers 3
    .parameter "dir"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 230
    :cond_6
    const/4 v0, 0x0

    .line 232
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaServer;->removeContentDirectory(Lcom/samsung/upnp/media/server/Directory;)Z

    move-result v0

    goto :goto_7
.end method

.method public resumeMediaServer()Z
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v0, :cond_6

    .line 137
    const/4 v0, 0x0

    .line 142
    :goto_5
    return v0

    .line 139
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/api/DigitalMediaServerAPI;->isServerStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 140
    const/4 v0, 0x1

    goto :goto_5

    .line 142
    :cond_e
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaServer;->start()Z

    move-result v0

    goto :goto_5
.end method

.method public setCreateObjectReceivedListener(Lcom/samsung/api/CreateObjectReceived;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 284
    :cond_6
    const/4 v0, 0x0

    .line 287
    :goto_7
    return v0

    .line 286
    :cond_8
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaServer;->setCreateObjectReceivedListener(Lcom/samsung/api/CreateObjectReceived;)V

    .line 287
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setDirectoryName(ILjava/lang/String;)V
    .registers 5
    .parameter "category"
    .parameter "name"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-eqz v1, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 373
    :cond_c
    :goto_c
    return-void

    .line 368
    :cond_d
    invoke-direct {p0, p1}, Lcom/samsung/api/DigitalMediaServerAPI;->getDirectory(I)Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    move-result-object v0

    .line 369
    .local v0, dir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;
    if-eqz v0, :cond_c

    .line 372
    invoke-virtual {v0, p2}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->setTitle(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public setIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "small"
    .parameter "macro"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/upnp/media/server/MediaServer;->setIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 202
    return-void
.end method

.method public setUploadFinishedListener(Lcom/samsung/api/UploadFinished;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaServer;->setUploadFinishedListener(Lcom/samsung/api/UploadFinished;)V

    .line 217
    return-void
.end method

.method public setUploadPath(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 297
    :cond_6
    const/4 v0, 0x0

    .line 298
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaServer;->setUploadPath(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public startMediaServer(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "context"
    .parameter "desc"
    .parameter "cds"
    .parameter "cms"
    .parameter "friendlyName"
    .parameter "uuid"
    .parameter "ipAddr"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v0, :cond_6

    .line 116
    const/4 v0, 0x0

    .line 132
    :goto_5
    return v0

    .line 118
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/api/DigitalMediaServerAPI;->isServerStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 119
    const/4 v0, 0x0

    goto :goto_5

    .line 122
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/upnp/media/server/MediaServer;->initailize(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    new-instance v1, Lcom/samsung/upnp/media/server/object/format/DefaultFormat;

    invoke-direct {v1}, Lcom/samsung/upnp/media/server/object/format/DefaultFormat;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/MediaServer;->addPlugIn(Lcom/samsung/upnp/media/server/object/Format;)Z
    :try_end_23
    .catch Lcom/samsung/upnp/device/InvalidDescriptionException; {:try_start_e .. :try_end_23} :catch_31

    .line 130
    invoke-static {}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getInstance()Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->setContext(Landroid/content/Context;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaServer;->start()Z

    move-result v0

    goto :goto_5

    .line 124
    :catch_31
    move-exception v7

    .line 125
    .local v7, e:Lcom/samsung/upnp/device/InvalidDescriptionException;
    invoke-virtual {v7}, Lcom/samsung/upnp/device/InvalidDescriptionException;->printStackTrace()V

    .line 126
    const-string v0, "Samsung DMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "there is some error in initialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/upnp/device/InvalidDescriptionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public stopMediaServer()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v1, :cond_6

    .line 156
    :cond_5
    :goto_5
    return v0

    .line 153
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/api/DigitalMediaServerAPI;->isServerStarted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaServer;->stop()Z

    move-result v0

    goto :goto_5
.end method

.method public updateDirectory(I)V
    .registers 4
    .parameter "category"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/samsung/api/DigitalMediaServerAPI;->mServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v1, :cond_5

    .line 357
    :cond_4
    :goto_4
    return-void

    .line 352
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/api/DigitalMediaServerAPI;->getDirectory(I)Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    move-result-object v0

    .line 353
    .local v0, dir:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;
    if-eqz v0, :cond_4

    .line 356
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->update()V

    goto :goto_4
.end method
