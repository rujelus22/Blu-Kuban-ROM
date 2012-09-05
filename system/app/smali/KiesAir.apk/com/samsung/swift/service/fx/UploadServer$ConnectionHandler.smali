.class Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;
.super Ljava/lang/Object;
.source "UploadServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/fx/UploadServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;
    }
.end annotation


# instance fields
.field remoteSocketAddress:Ljava/lang/String;

.field private socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/samsung/swift/service/fx/UploadServer;

.field timeoutMonitor:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/swift/service/fx/UploadServer;Ljava/net/Socket;)V
    .registers 5
    .parameter
    .parameter "socket"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->this$0:Lcom/samsung/swift/service/fx/UploadServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;

    .line 346
    invoke-virtual {p2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->remoteSocketAddress:Ljava/lang/String;

    .line 347
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 348
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 349
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;)Ljava/net/Socket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;Ljava/net/Socket;)Ljava/net/Socket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;

    return-object p1
.end method

.method private processDiskIoError(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/lang/String;JJ)V
    .registers 29
    .parameter "os"
    .parameter "in"
    .parameter "destFilename"
    .parameter "dataSize"
    .parameter "amountWritten"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    .local v16, f:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getAvailableBlocksPath(Ljava/lang/String;)J

    move-result-wide v10

    .line 629
    .local v10, availabeSpaceBlocks:J
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getBlockSizePath(Ljava/lang/String;)J

    move-result-wide v12

    .line 630
    .local v12, blockSize:J
    div-long v14, p4, v12

    .line 631
    .local v14, block_required:J
    rem-long v3, p4, v12

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_26

    .line 632
    const-wide/16 v3, 0x1

    add-long/2addr v14, v3

    .line 634
    :cond_26
    div-long v19, p6, v12

    .line 635
    .local v19, usedBlocks:J
    rem-long v3, p6, v12

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_34

    .line 636
    const-wide/16 v3, 0x1

    add-long v19, v19, v3

    .line 638
    :cond_34
    add-long v17, v10, v19

    .line 639
    .local v17, fs:J
    const/16 v9, 0x8

    .line 640
    .local v9, rc:I
    cmp-long v3, v17, v14

    if-gtz v3, :cond_3d

    .line 642
    const/4 v9, 0x4

    .line 645
    :cond_3d
    sub-long v7, p4, p6

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->prepareResponseHeader(Ljava/lang/String;JJI)[B

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->sendErrorResponse(Ljava/io/OutputStream;Ljava/io/InputStream;[B)V

    .line 646
    return-void
.end method


# virtual methods
.method close()V
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 382
    :try_start_c
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_15

    .line 389
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;

    .line 390
    return-void

    .line 384
    :catch_15
    move-exception v0

    goto :goto_11
.end method

.method protected prepareResponseHeader(Ljava/lang/String;JJI)[B
    .registers 12
    .parameter "destFile"
    .parameter "datawritten"
    .parameter "filesize"
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 396
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "written="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errorcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 401
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 402
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 404
    .local v1, header:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 405
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    const-string v3, "SWIFTFTP"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 406
    array-length v2, v1

    .line 407
    .local v2, j:I
    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 408
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 409
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 410
    and-int/lit16 v3, v2, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 412
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 413
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public readRequest(Ljava/net/Socket;)V
    .registers 49
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->this$0:Lcom/samsung/swift/service/fx/UploadServer;

    #getter for: Lcom/samsung/swift/service/fx/UploadServer;->iob:I
    invoke-static {v4}, Lcom/samsung/swift/service/fx/UploadServer;->access$100(Lcom/samsung/swift/service/fx/UploadServer;)I

    move-result v4

    new-array v0, v4, [B

    move-object/from16 v30, v0

    .line 419
    .local v30, byteBuffer:[B
    const/16 v46, 0x0

    .line 420
    .local v46, state:I
    const/16 v40, 0x0

    .line 421
    .local v40, offset:I
    const/16 v33, 0x0

    .line 422
    .local v33, hdrMarkerIndex:I
    const/16 v35, 0x0

    .line 423
    .local v35, header:[B
    const/4 v5, 0x0

    .line 424
    .local v5, destFilename:Ljava/lang/String;
    const/16 v45, 0x0

    .line 425
    .local v45, partFilename:Ljava/lang/String;
    const/16 v43, 0x0

    .line 426
    .local v43, outfile:Ljava/io/RandomAccessFile;
    const-wide/16 v31, 0x0

    .line 427
    .local v31, dataStart:J
    const-wide/16 v15, 0x0

    .line 428
    .local v15, dataSize:J
    const-wide/16 v17, 0x0

    .line 429
    .local v17, amountWritten:J
    const/16 v28, 0x0

    .line 430
    .local v28, bufferIndex:I
    const/16 v27, 0x0

    .line 432
    .local v27, bufferEnd:I
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 433
    .end local v5           #destFilename:Ljava/lang/String;
    .local v13, in:Ljava/io/InputStream;
    :cond_27
    :goto_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->this$0:Lcom/samsung/swift/service/fx/UploadServer;

    #getter for: Lcom/samsung/swift/service/fx/UploadServer;->running:Z
    invoke-static {v4}, Lcom/samsung/swift/service/fx/UploadServer;->access$200(Lcom/samsung/swift/service/fx/UploadServer;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->this$0:Lcom/samsung/swift/service/fx/UploadServer;

    #getter for: Lcom/samsung/swift/service/fx/UploadServer;->iob:I
    invoke-static {v4}, Lcom/samsung/swift/service/fx/UploadServer;->access$100(Lcom/samsung/swift/service/fx/UploadServer;)I

    move-result v4

    sub-int v4, v4, v27

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v13, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v36

    .line 436
    .local v36, i:I
    const/4 v4, -0x1

    move/from16 v0, v36

    if-ne v0, v4, :cond_49

    .line 621
    .end local v36           #i:I
    :cond_48
    :goto_48
    return-void

    .line 439
    .restart local v36       #i:I
    :cond_49
    if-eqz v36, :cond_27

    .line 442
    add-int v27, v27, v36

    .line 443
    packed-switch v46, :pswitch_data_218

    .line 600
    :goto_50
    const/16 v33, 0x0

    move/from16 v40, v33

    move/from16 v46, v33

    move/from16 v27, v33

    move/from16 v28, v33

    .line 601
    const/16 v45, 0x0

    move-object/from16 v5, v45

    .line 602
    .local v5, destFilename:Ljava/lang/Object;
    const-wide/16 v17, 0x0

    move-wide/from16 v15, v17

    move-wide/from16 v31, v17

    .line 605
    .end local v5           #destFilename:Ljava/lang/Object;
    :cond_64
    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f2

    .line 607
    const/16 v27, 0x0

    move/from16 v28, v27

    goto :goto_27

    :cond_6f
    :pswitch_6f
    move/from16 v29, v28

    .line 447
    .end local v28           #bufferIndex:I
    .local v29, bufferIndex:I
    move/from16 v0, v29

    move/from16 v1, v27

    if-ge v0, v1, :cond_213

    .line 449
    add-int/lit8 v28, v29, 0x1

    .end local v29           #bufferIndex:I
    .restart local v28       #bufferIndex:I
    aget-byte v4, v30, v29

    const-string v6, "SWIFTFTP"

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_48

    .line 463
    add-int/lit8 v33, v33, 0x1

    .line 464
    const-string v4, "SWIFTFTP"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v33

    if-ne v0, v4, :cond_6f

    .line 466
    add-int/lit8 v46, v46, 0x1

    .line 472
    :goto_93
    if-eqz v46, :cond_64

    .line 477
    :pswitch_95
    sub-int v4, v27, v28

    const/4 v6, 0x5

    if-lt v4, v6, :cond_64

    .line 480
    const/16 v34, 0x0

    .line 481
    .local v34, headSize:I
    const/16 v38, 0x3

    .local v38, j:I
    move/from16 v29, v28

    .end local v28           #bufferIndex:I
    .restart local v29       #bufferIndex:I
    :goto_a0
    if-ltz v38, :cond_b2

    .line 482
    add-int/lit8 v28, v29, 0x1

    .end local v29           #bufferIndex:I
    .restart local v28       #bufferIndex:I
    aget-byte v4, v30, v29

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v6, v38, 0x8

    shl-int/2addr v4, v6

    or-int v34, v34, v4

    .line 481
    add-int/lit8 v38, v38, -0x1

    move/from16 v29, v28

    .end local v28           #bufferIndex:I
    .restart local v29       #bufferIndex:I
    goto :goto_a0

    .line 484
    :cond_b2
    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v35, v0

    .line 485
    add-int/lit8 v46, v46, 0x1

    move/from16 v28, v29

    .line 489
    .end local v29           #bufferIndex:I
    .end local v34           #headSize:I
    .end local v38           #j:I
    .restart local v28       #bufferIndex:I
    :pswitch_bc
    move/from16 v0, v28

    move/from16 v1, v27

    if-ge v0, v1, :cond_ee

    .line 491
    move-object/from16 v0, v35

    array-length v4, v0

    sub-int v26, v4, v40

    .line 492
    .local v26, amount:I
    sub-int v4, v36, v28

    move/from16 v0, v26

    if-le v0, v4, :cond_cf

    sub-int v26, v36, v28

    .line 493
    :cond_cf
    const/16 v38, 0x0

    .restart local v38       #j:I
    move/from16 v29, v28

    .end local v28           #bufferIndex:I
    .restart local v29       #bufferIndex:I
    move/from16 v41, v40

    .end local v40           #offset:I
    .local v41, offset:I
    :goto_d5
    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_ea

    .line 494
    add-int/lit8 v40, v41, 0x1

    .end local v41           #offset:I
    .restart local v40       #offset:I
    add-int/lit8 v28, v29, 0x1

    .end local v29           #bufferIndex:I
    .restart local v28       #bufferIndex:I
    aget-byte v4, v30, v29

    aput-byte v4, v35, v41

    .line 493
    add-int/lit8 v38, v38, 0x1

    move/from16 v29, v28

    .end local v28           #bufferIndex:I
    .restart local v29       #bufferIndex:I
    move/from16 v41, v40

    .end local v40           #offset:I
    .restart local v41       #offset:I
    goto :goto_d5

    :cond_ea
    move/from16 v28, v29

    .end local v29           #bufferIndex:I
    .restart local v28       #bufferIndex:I
    move/from16 v40, v41

    .line 497
    .end local v26           #amount:I
    .end local v38           #j:I
    .end local v41           #offset:I
    .restart local v40       #offset:I
    :cond_ee
    move-object/from16 v0, v35

    array-length v4, v0

    move/from16 v0, v40

    if-ne v0, v4, :cond_64

    .line 500
    invoke-static/range {v35 .. v35}, Lcom/samsung/swift/service/fx/Common;->load([B)Ljava/util/Properties;

    move-result-object v44

    .line 501
    .local v44, p:Ljava/util/Properties;
    const/16 v35, 0x0

    .line 502
    const-string v4, "destFile"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/swift/service/fx/Common;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, destFilename:Ljava/lang/String;
    const-string v4, "dataStart"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    .line 504
    const-string v4, "dataSize"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 505
    add-int/lit8 v46, v46, 0x1

    .line 509
    .end local v5           #destFilename:Ljava/lang/String;
    .end local v44           #p:Ljava/util/Properties;
    :pswitch_121
    const/4 v10, 0x0

    .line 511
    .local v10, rc:I
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_145

    .line 515
    const/4 v10, 0x1

    .line 533
    :cond_12e
    :goto_12e
    if-eqz v10, :cond_15a

    .line 535
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->prepareResponseHeader(Ljava/lang/String;JJI)[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v4}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->sendErrorResponse(Ljava/io/OutputStream;Ljava/io/InputStream;[B)V

    goto/16 :goto_48

    .line 521
    :cond_145
    invoke-static {v5}, Lcom/samsung/swift/service/fx/UploadServer;->getTmpFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 524
    if-eqz v45, :cond_158

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v45

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_12e

    .line 527
    :cond_158
    const/4 v10, 0x2

    goto :goto_12e

    .line 542
    :cond_15a
    new-instance v43, Ljava/io/RandomAccessFile;

    .end local v43           #outfile:Ljava/io/RandomAccessFile;
    const-string v4, "rw"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .restart local v43       #outfile:Ljava/io/RandomAccessFile;
    move-object/from16 v0, v43

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 544
    add-int/lit8 v46, v46, 0x1

    .line 548
    .end local v10           #rc:I
    :pswitch_16e
    const-wide/16 v6, 0x0

    cmp-long v4, v15, v6

    if-lez v4, :cond_191

    .line 550
    sub-int v26, v27, v28

    .line 551
    .restart local v26       #amount:I
    const/4 v4, 0x1

    move/from16 v0, v26

    if-lt v0, v4, :cond_64

    .line 556
    :try_start_17b
    move-object/from16 v0, v43

    move-object/from16 v1, v30

    move/from16 v2, v28

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_186} :catch_1e0

    .line 573
    move/from16 v0, v26

    int-to-long v6, v0

    add-long v17, v17, v6

    .line 574
    add-int v28, v28, v26

    .line 575
    cmp-long v4, v17, v15

    if-nez v4, :cond_64

    .line 579
    .end local v26           #amount:I
    :cond_191
    add-int/lit8 v46, v46, 0x1

    .line 580
    invoke-virtual/range {v43 .. v43}, Ljava/io/RandomAccessFile;->close()V

    .line 581
    const/16 v43, 0x0

    .line 585
    :pswitch_198
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v45

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 586
    add-int/lit8 v46, v46, 0x1

    .line 590
    :pswitch_1a9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->timeoutMonitor:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->setPaused(Z)V

    .line 591
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v23

    const/16 v25, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move-wide/from16 v21, v17

    invoke-virtual/range {v19 .. v25}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->prepareResponseHeader(Ljava/lang/String;JJI)[B

    move-result-object v35

    .line 592
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v42

    .line 593
    .local v42, os:Ljava/io/OutputStream;
    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 594
    invoke-virtual/range {v42 .. v42}, Ljava/io/OutputStream;->flush()V

    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->timeoutMonitor:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->setPaused(Z)V

    .line 596
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_50

    .line 558
    .end local v42           #os:Ljava/io/OutputStream;
    .restart local v26       #amount:I
    :catch_1e0
    move-exception v37

    .line 562
    .local v37, ioe:Ljava/io/IOException;
    :try_start_1e1
    invoke-virtual/range {v43 .. v43}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e4} :catch_211

    .line 568
    :goto_1e4
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    move-object/from16 v11, p0

    move-object v14, v5

    invoke-direct/range {v11 .. v18}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->processDiskIoError(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/lang/String;JJ)V

    .line 569
    const/16 v43, 0x0

    .line 570
    goto/16 :goto_48

    .line 611
    .end local v26           #amount:I
    .end local v37           #ioe:Ljava/io/IOException;
    :cond_1f2
    const/16 v38, 0x0

    .restart local v38       #j:I
    move/from16 v39, v38

    .end local v38           #j:I
    .local v39, j:I
    move/from16 v29, v28

    .line 612
    .end local v28           #bufferIndex:I
    .restart local v29       #bufferIndex:I
    :goto_1f8
    move/from16 v0, v29

    move/from16 v1, v27

    if-ge v0, v1, :cond_20b

    .line 614
    add-int/lit8 v38, v39, 0x1

    .end local v39           #j:I
    .restart local v38       #j:I
    add-int/lit8 v28, v29, 0x1

    .end local v29           #bufferIndex:I
    .restart local v28       #bufferIndex:I
    aget-byte v4, v30, v29

    aput-byte v4, v30, v39

    move/from16 v39, v38

    .end local v38           #j:I
    .restart local v39       #j:I
    move/from16 v29, v28

    .end local v28           #bufferIndex:I
    .restart local v29       #bufferIndex:I
    goto :goto_1f8

    .line 617
    :cond_20b
    const/16 v28, 0x0

    .line 618
    .end local v29           #bufferIndex:I
    .restart local v28       #bufferIndex:I
    move/from16 v27, v39

    goto/16 :goto_27

    .line 564
    .end local v39           #j:I
    .restart local v26       #amount:I
    .restart local v37       #ioe:Ljava/io/IOException;
    :catch_211
    move-exception v4

    goto :goto_1e4

    .end local v26           #amount:I
    .end local v28           #bufferIndex:I
    .end local v37           #ioe:Ljava/io/IOException;
    .restart local v29       #bufferIndex:I
    :cond_213
    move/from16 v28, v29

    .end local v29           #bufferIndex:I
    .restart local v28       #bufferIndex:I
    goto/16 :goto_93

    .line 443
    nop

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_95
        :pswitch_bc
        :pswitch_121
        :pswitch_16e
        :pswitch_198
        :pswitch_1a9
    .end packed-switch
.end method

.method public run()V
    .registers 5

    .prologue
    .line 355
    new-instance v1, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;

    invoke-direct {v1, p0}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;-><init>(Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;)V

    iput-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->timeoutMonitor:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;

    .line 356
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->timeoutMonitor:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;

    invoke-virtual {v1}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->resetRetryTimerCount()V

    .line 357
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->timeoutMonitor:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->setPaused(Z)V

    .line 358
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->timeoutMonitor:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 362
    :try_start_1c
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v1}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->readRequest(Ljava/net/Socket;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_2f

    .line 369
    :goto_21
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->timeoutMonitor:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;

    invoke-virtual {v1}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->stop()V

    .line 370
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->this$0:Lcom/samsung/swift/service/fx/UploadServer;

    #calls: Lcom/samsung/swift/service/fx/UploadServer;->connectionReleased(Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;)V
    invoke-static {v1, p0}, Lcom/samsung/swift/service/fx/UploadServer;->access$000(Lcom/samsung/swift/service/fx/UploadServer;Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;)V

    .line 373
    invoke-virtual {p0}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->close()V

    .line 374
    return-void

    .line 364
    :catch_2f
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UploadServer.ConnectionHandler.run()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### ***** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method sendErrorResponse(Ljava/io/OutputStream;Ljava/io/InputStream;[B)V
    .registers 6
    .parameter "os"
    .parameter "in"
    .parameter "header"

    .prologue
    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->timeoutMonitor:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->setPaused(Z)V

    .line 653
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 654
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 655
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 656
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 657
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->timeoutMonitor:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->setPaused(Z)V

    .line 658
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 663
    :goto_1d
    return-void

    .line 660
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method
