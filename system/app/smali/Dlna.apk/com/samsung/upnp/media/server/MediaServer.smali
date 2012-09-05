.class public Lcom/samsung/upnp/media/server/MediaServer;
.super Lcom/samsung/upnp/Device;
.source "MediaServer.java"


# static fields
.field private static volatile mediaServerSingleton:Lcom/samsung/upnp/media/server/MediaServer;


# instance fields
.field public androidContext:Landroid/content/Context;

.field private conDir:Lcom/samsung/upnp/media/server/ContentDirectory;

.field private conMan:Lcom/samsung/upnp/media/server/ConnectionManager;

.field private ipAddress:Ljava/lang/String;

.field private isStart:Z

.field public localControlPoint:Lcom/samsung/upnp/media/server/MediaControlPoint;

.field private macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

.field private macroIcon_png:Ljava/io/ByteArrayOutputStream;

.field private mutex:Ljava/lang/Object;

.field private smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

.field private smallIcon_png:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/upnp/media/server/MediaServer;->mediaServerSingleton:Lcom/samsung/upnp/media/server/MediaServer;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/upnp/media/server/MediaControlPoint;)V
    .registers 5
    .parameter "context"
    .parameter "localCP"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/samsung/upnp/Device;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/MediaServer;->mutex:Ljava/lang/Object;

    .line 76
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/samsung/upnp/media/server/MediaServer;->ipAddress:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->androidContext:Landroid/content/Context;

    .line 79
    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->localControlPoint:Lcom/samsung/upnp/media/server/MediaControlPoint;

    .line 314
    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    .line 315
    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    .line 316
    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    .line 317
    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/upnp/media/server/MediaServer;->isStart:Z

    .line 83
    iput-object p1, p0, Lcom/samsung/upnp/media/server/MediaServer;->androidContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/samsung/upnp/media/server/MediaServer;->localControlPoint:Lcom/samsung/upnp/media/server/MediaControlPoint;

    .line 85
    new-instance v0, Lcom/samsung/upnp/media/server/object/format/DefaultFormat;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/format/DefaultFormat;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/MediaServer;->addPlugIn(Lcom/samsung/upnp/media/server/object/Format;)Z

    .line 86
    return-void
.end method

.method public static getMediaServerInstatnce(Landroid/content/Context;Lcom/samsung/upnp/media/server/MediaControlPoint;)Lcom/samsung/upnp/media/server/MediaServer;
    .registers 4
    .parameter "context"
    .parameter "localCP"

    .prologue
    .line 89
    sget-object v0, Lcom/samsung/upnp/media/server/MediaServer;->mediaServerSingleton:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v0, :cond_13

    .line 90
    const-class v1, Lcom/samsung/upnp/media/server/MediaServer;

    monitor-enter v1

    .line 91
    :try_start_7
    sget-object v0, Lcom/samsung/upnp/media/server/MediaServer;->mediaServerSingleton:Lcom/samsung/upnp/media/server/MediaServer;

    if-nez v0, :cond_12

    .line 92
    new-instance v0, Lcom/samsung/upnp/media/server/MediaServer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/upnp/media/server/MediaServer;-><init>(Landroid/content/Context;Lcom/samsung/upnp/media/server/MediaControlPoint;)V

    sput-object v0, Lcom/samsung/upnp/media/server/MediaServer;->mediaServerSingleton:Lcom/samsung/upnp/media/server/MediaServer;

    .line 90
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 95
    :cond_13
    sget-object v0, Lcom/samsung/upnp/media/server/MediaServer;->mediaServerSingleton:Lcom/samsung/upnp/media/server/MediaServer;

    return-object v0

    .line 90
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private httpGetRequestReceived(Lcom/samsung/http/HTTPRequest;)Z
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0xc8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 419
    if-nez p1, :cond_7

    .line 521
    :cond_6
    :goto_6
    return v0

    .line 421
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 424
    const-string v3, "icon/icon.png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 425
    iget-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_6

    .line 427
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/MediaServer;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v0

    .line 428
    invoke-static {p1}, Lcom/samsung/http/HTTPResponse;->buildHTTPResponse(Lcom/samsung/http/HTTPRequest;)Lcom/samsung/http/HTTPResponse;

    move-result-object v2

    .line 429
    invoke-virtual {v2, v4}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 430
    invoke-virtual {v0}, Lcom/samsung/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 432
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    .line 433
    invoke-virtual {p1, v2}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    move v0, v1

    .line 434
    goto :goto_6

    .line 435
    :cond_47
    const-string v3, "icon/icon2.png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 436
    iget-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_6

    .line 438
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/MediaServer;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v0

    .line 439
    invoke-static {p1}, Lcom/samsung/http/HTTPResponse;->buildHTTPResponse(Lcom/samsung/http/HTTPRequest;)Lcom/samsung/http/HTTPResponse;

    move-result-object v2

    .line 440
    invoke-virtual {v2, v4}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 441
    invoke-virtual {v0}, Lcom/samsung/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 443
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    .line 444
    invoke-virtual {p1, v2}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    move v0, v1

    .line 448
    goto :goto_6

    .line 449
    :cond_83
    const-string v3, "icon/icon.jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 450
    iget-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_6

    .line 452
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/MediaServer;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v0

    .line 453
    invoke-static {p1}, Lcom/samsung/http/HTTPResponse;->buildHTTPResponse(Lcom/samsung/http/HTTPRequest;)Lcom/samsung/http/HTTPResponse;

    move-result-object v2

    .line 454
    invoke-virtual {v2, v4}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 455
    invoke-virtual {v0}, Lcom/samsung/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 457
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    .line 458
    invoke-virtual {p1, v2}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    move v0, v1

    .line 459
    goto/16 :goto_6

    .line 460
    :cond_bf
    const-string v3, "icon/icon2.jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 461
    iget-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_6

    .line 463
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/MediaServer;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v0

    .line 464
    invoke-static {p1}, Lcom/samsung/http/HTTPResponse;->buildHTTPResponse(Lcom/samsung/http/HTTPRequest;)Lcom/samsung/http/HTTPResponse;

    move-result-object v2

    .line 465
    invoke-virtual {v2, v4}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 466
    invoke-virtual {v0}, Lcom/samsung/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 468
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    .line 469
    invoke-virtual {p1, v2}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    move v0, v1

    .line 473
    goto/16 :goto_6

    .line 474
    :cond_fb
    const-string v3, "/MediaStore/Out"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 475
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v2

    .line 476
    if-eqz v2, :cond_6

    .line 478
    invoke-virtual {v2, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->contentExportRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    move v0, v1

    .line 482
    goto/16 :goto_6

    .line 483
    :cond_10f
    const-string v3, "/MediaStore/Micro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_123

    .line 484
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v2

    .line 485
    if-eqz v2, :cond_6

    .line 487
    invoke-virtual {v2, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->contentExportRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    move v0, v1

    .line 493
    goto/16 :goto_6

    .line 494
    :cond_123
    const-string v3, "/MediaStore/Small"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 495
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v2

    .line 496
    if-eqz v2, :cond_6

    .line 498
    invoke-virtual {v2, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->contentExportRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    move v0, v1

    .line 504
    goto/16 :goto_6

    .line 505
    :cond_137
    const-string v3, "/subtitle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 506
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v2

    .line 507
    if-eqz v2, :cond_6

    .line 509
    invoke-virtual {v2, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->contentExportRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    move v0, v1

    .line 513
    goto/16 :goto_6

    .line 514
    :cond_14b
    const-string v3, "/MediaStore/AlbumArt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 515
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v2

    .line 516
    if-eqz v2, :cond_6

    .line 518
    invoke-virtual {v2, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->contentExportRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    move v0, v1

    .line 519
    goto/16 :goto_6
.end method

.method private httpPostRequestReceived(Lcom/samsung/http/HTTPRequest;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v1

    .line 405
    if-eqz v1, :cond_9

    if-nez p1, :cond_a

    .line 415
    :cond_9
    :goto_9
    return v0

    .line 407
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uri = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 410
    const-string v3, "/MediaStore/In"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 411
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->contentImportRequestRecieved(Lcom/samsung/http/HTTPRequest;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 412
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private initializeServer()V
    .registers 4

    .prologue
    .line 164
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/samsung/upnp/UPnP;->setEnable(I)V

    .line 166
    iget-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->ipAddress:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/upnp/media/server/MediaServer;->setInterfaceAddress(Ljava/lang/String;)V

    .line 167
    const v2, 0x80eb

    invoke-virtual {p0, v2}, Lcom/samsung/upnp/media/server/MediaServer;->setHTTPPort(I)V

    .line 169
    iget-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->conDir:Lcom/samsung/upnp/media/server/ContentDirectory;

    if-nez v2, :cond_1b

    .line 170
    new-instance v2, Lcom/samsung/upnp/media/server/ContentDirectory;

    invoke-direct {v2, p0}, Lcom/samsung/upnp/media/server/ContentDirectory;-><init>(Lcom/samsung/upnp/media/server/MediaServer;)V

    iput-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->conDir:Lcom/samsung/upnp/media/server/ContentDirectory;

    .line 171
    :cond_1b
    iget-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->conMan:Lcom/samsung/upnp/media/server/ConnectionManager;

    if-nez v2, :cond_26

    .line 172
    new-instance v2, Lcom/samsung/upnp/media/server/ConnectionManager;

    invoke-direct {v2, p0}, Lcom/samsung/upnp/media/server/ConnectionManager;-><init>(Lcom/samsung/upnp/media/server/MediaServer;)V

    iput-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->conMan:Lcom/samsung/upnp/media/server/ConnectionManager;

    .line 174
    :cond_26
    iget-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->conMan:Lcom/samsung/upnp/media/server/ConnectionManager;

    invoke-static {v2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->setConnectionManager(Lcom/samsung/upnp/media/server/ConnectionManager;)V

    .line 176
    const-string v2, "urn:schemas-upnp-org:service:ContentDirectory"

    invoke-virtual {p0, v2}, Lcom/samsung/upnp/media/server/MediaServer;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v0

    .line 177
    .local v0, servConDir:Lcom/samsung/upnp/Service;
    if-eqz v0, :cond_41

    .line 178
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/Service;->setActionListener(Lcom/samsung/upnp/control/ActionListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/Service;->setQueryListener(Lcom/samsung/upnp/control/QueryListener;)V

    .line 181
    :cond_41
    const-string v2, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p0, v2}, Lcom/samsung/upnp/media/server/MediaServer;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v1

    .line 182
    .local v1, servConMan:Lcom/samsung/upnp/Service;
    if-eqz v1, :cond_57

    .line 183
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getConnectionManager()Lcom/samsung/upnp/media/server/ConnectionManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/Service;->setActionListener(Lcom/samsung/upnp/control/ActionListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getConnectionManager()Lcom/samsung/upnp/media/server/ConnectionManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/Service;->setQueryListener(Lcom/samsung/upnp/control/QueryListener;)V

    .line 186
    :cond_57
    return-void
.end method


# virtual methods
.method public addContentDirectory(Lcom/samsung/upnp/media/server/Directory;)Z
    .registers 4
    .parameter "dir"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 222
    .local v0, cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-eqz p1, :cond_8

    if-nez v0, :cond_a

    .line 223
    :cond_8
    const/4 v1, 0x0

    .line 224
    :goto_9
    return v1

    :cond_a
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->addDirectory(Lcom/samsung/upnp/media/server/Directory;)Z

    move-result v1

    goto :goto_9
.end method

.method public addPlugIn(Lcom/samsung/upnp/media/server/object/Format;)Z
    .registers 4
    .parameter "format"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 275
    .local v0, cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-eqz p1, :cond_8

    if-nez v0, :cond_a

    .line 276
    :cond_8
    const/4 v1, 0x0

    .line 277
    :goto_9
    return v1

    :cond_a
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->addPlugIn(Lcom/samsung/upnp/media/server/object/Format;)Z

    move-result v1

    goto :goto_9
.end method

.method public announce(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/MediaServer;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    new-instance v1, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 575
    const-string v2, "239.255.255.250"

    const/16 v3, 0x76c

    invoke-virtual {v1, v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 576
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getLeaseTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 578
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 579
    const-string v0, "ssdp:alive"

    invoke-virtual {v1, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getUDN()Ljava/lang/String;

    .line 583
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/upnp/media/server/MediaServer$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/samsung/upnp/media/server/MediaServer$1;-><init>(Lcom/samsung/upnp/media/server/MediaServer;Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 596
    invoke-super {p0, p1}, Lcom/samsung/upnp/Device;->announce(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public getConnectionManager()Lcom/samsung/upnp/media/server/ConnectionManager;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/upnp/media/server/MediaServer;->conMan:Lcom/samsung/upnp/media/server/ConnectionManager;

    return-object v0
.end method

.method public getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/upnp/media/server/MediaServer;->conDir:Lcom/samsung/upnp/media/server/ContentDirectory;

    return-object v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    invoke-static {}, Lcom/samsung/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 306
    if-nez v0, :cond_9

    .line 307
    const-string v0, ""

    .line 308
    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Lcom/samsung/http/HTTP;->getCacheDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 3
    .parameter "httpReq"

    .prologue
    .line 380
    if-nez p1, :cond_3

    .line 391
    :cond_2
    :goto_2
    return-void

    .line 383
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isPostRequest()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 384
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/MediaServer;->httpPostRequestReceived(Lcom/samsung/http/HTTPRequest;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    :cond_f
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/MediaServer;->httpGetRequestReceived(Lcom/samsung/http/HTTPRequest;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    invoke-super {p0, p1}, Lcom/samsung/upnp/Device;->httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    goto :goto_2
.end method

.method public httptRecieved(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 395
    if-nez v0, :cond_7

    .line 400
    :cond_6
    :goto_6
    return-void

    .line 397
    :cond_7
    const-string v1, "/MediaStore/In"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 398
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->contentImportProgressRecieved(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public initailize(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "description"
    .parameter "contentDirectorySCPD"
    .parameter "connectionManagerSCPD"
    .parameter "friendlyName"
    .parameter "udn"
    .parameter "ipAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 104
    iput-object p6, p0, Lcom/samsung/upnp/media/server/MediaServer;->ipAddress:Ljava/lang/String;

    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/MediaServer;->loadDescription(Ljava/io/InputStream;)Z

    .line 107
    if-eqz p4, :cond_b

    .line 108
    const/4 v3, 0x0

    invoke-virtual {p0, p4, v3}, Lcom/samsung/upnp/media/server/MediaServer;->setFriendlyName(Ljava/lang/String;Z)Z

    .line 110
    :cond_b
    if-eqz p5, :cond_10

    .line 111
    invoke-virtual {p0, p5}, Lcom/samsung/upnp/media/server/MediaServer;->setUDN(Ljava/lang/String;)V

    .line 113
    :cond_10
    const-string v3, "urn:schemas-upnp-org:service:ContentDirectory"

    invoke-virtual {p0, v3}, Lcom/samsung/upnp/media/server/MediaServer;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v1

    .line 114
    .local v1, servConDir:Lcom/samsung/upnp/Service;
    const-string v3, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p0, v3}, Lcom/samsung/upnp/media/server/MediaServer;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v2

    .line 118
    .local v2, servConMan:Lcom/samsung/upnp/Service;
    if-eqz v1, :cond_21

    .line 119
    :try_start_1e
    invoke-virtual {v1, p2}, Lcom/samsung/upnp/Service;->loadSCPD(Ljava/io/InputStream;)Z

    .line 120
    :cond_21
    if-eqz v2, :cond_26

    .line 121
    invoke-virtual {v2, p3}, Lcom/samsung/upnp/Service;->loadSCPD(Ljava/io/InputStream;)Z
    :try_end_26
    .catch Lcom/samsung/xml/ParserException; {:try_start_1e .. :try_end_26} :catch_2a

    .line 127
    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/MediaServer;->initializeServer()V

    .line 128
    return-void

    .line 123
    :catch_2a
    move-exception v0

    .line 124
    .local v0, e:Lcom/samsung/xml/ParserException;
    invoke-virtual {v0}, Lcom/samsung/xml/ParserException;->printStackTrace()V

    goto :goto_26
.end method

.method public isServerStarted()Z
    .registers 3

    .prologue
    .line 565
    iget-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_3
    iget-boolean v0, p0, Lcom/samsung/upnp/media/server/MediaServer;->isStart:Z

    monitor-exit v1

    return v0

    .line 565
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public removeContentDirectory(Lcom/samsung/upnp/media/server/Directory;)Z
    .registers 4
    .parameter "dir"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 233
    .local v0, cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-eqz p1, :cond_8

    if-nez v0, :cond_a

    .line 234
    :cond_8
    const/4 v1, 0x0

    .line 235
    :goto_9
    return v1

    :cond_a
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->removeDirectory(Lcom/samsung/upnp/media/server/Directory;)Z

    move-result v1

    goto :goto_9
.end method

.method public setCreateObjectReceivedListener(Lcom/samsung/api/CreateObjectReceived;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 240
    .local v0, cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-nez v0, :cond_7

    .line 243
    :goto_6
    return-void

    .line 242
    :cond_7
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->setCreateObjectReceivedListener(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public setFriendlyName(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "value"
    .parameter "needAnnounce"

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lcom/samsung/upnp/Device;->setFriendlyName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    invoke-static {p1}, Lcom/samsung/http/HTTP;->setDeviceName(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    .line 212
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "small"
    .parameter "macro"

    .prologue
    const/4 v4, 0x0

    .line 345
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4e20

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    .line 346
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    iget-object v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 347
    iget-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_5e

    .line 352
    :goto_18
    :try_start_18
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4e20

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    .line 353
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    iget-object v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 354
    iget-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_67

    .line 359
    :goto_2f
    :try_start_2f
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4e20

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    .line 360
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    iget-object v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 361
    iget-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_46} :catch_70

    .line 366
    :goto_46
    :try_start_46
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4e20

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    .line 367
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    iget-object v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 368
    iget-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5d} :catch_79

    .line 372
    :goto_5d
    return-void

    .line 348
    :catch_5e
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_png:Ljava/io/ByteArrayOutputStream;

    goto :goto_18

    .line 355
    .end local v0           #e:Ljava/lang/Exception;
    :catch_67
    move-exception v0

    .line 356
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_png:Ljava/io/ByteArrayOutputStream;

    goto :goto_2f

    .line 362
    .end local v0           #e:Ljava/lang/Exception;
    :catch_70
    move-exception v0

    .line 363
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->macroIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    goto :goto_46

    .line 369
    .end local v0           #e:Ljava/lang/Exception;
    :catch_79
    move-exception v0

    .line 370
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer;->smallIcon_jpeg:Ljava/io/ByteArrayOutputStream;

    goto :goto_5d
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "ifaddr"

    .prologue
    .line 286
    invoke-static {p1}, Lcom/samsung/net/HostInterface;->setInterface(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public setUploadFinishedListener(Lcom/samsung/api/UploadFinished;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 247
    .local v0, cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-nez v0, :cond_7

    .line 250
    :goto_6
    return-void

    .line 249
    :cond_7
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->setUploadFinishedListener(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public setUploadPath(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 299
    .local v0, cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-nez v0, :cond_8

    .line 300
    const/4 v1, 0x0

    .line 301
    :goto_7
    return v1

    :cond_8
    invoke-static {p1}, Lcom/samsung/http/HTTP;->setCacheDirectory(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public start()Z
    .registers 2

    .prologue
    .line 531
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/MediaServer;->start(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;)Z
    .registers 6
    .parameter "addr"

    .prologue
    const/4 v1, 0x1

    .line 536
    iget-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 537
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 538
    .local v0, cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getConnectionManager()Lcom/samsung/upnp/media/server/ConnectionManager;

    move-result-object v3

    if-nez v3, :cond_13

    .line 539
    :cond_10
    monitor-exit v2

    const/4 v1, 0x0

    .line 548
    :goto_12
    return v1

    .line 542
    :cond_13
    iget-boolean v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->isStart:Z

    if-nez v3, :cond_20

    .line 543
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->start()V

    .line 545
    invoke-super {p0}, Lcom/samsung/upnp/Device;->start()Z

    .line 546
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->isStart:Z

    .line 548
    :cond_20
    monitor-exit v2

    goto :goto_12

    .line 536
    .end local v0           #cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public stop()Z
    .registers 5

    .prologue
    .line 554
    iget-object v3, p0, Lcom/samsung/upnp/media/server/MediaServer;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 555
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/MediaServer;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 556
    .local v0, cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-eqz v0, :cond_c

    .line 557
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->stop()V

    .line 558
    :cond_c
    invoke-super {p0}, Lcom/samsung/upnp/Device;->stop()Z

    move-result v1

    .line 559
    .local v1, result:Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/upnp/media/server/MediaServer;->isStart:Z

    .line 560
    monitor-exit v3

    return v1

    .line 554
    .end local v0           #cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    .end local v1           #result:Z
    :catchall_15
    move-exception v2

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method
