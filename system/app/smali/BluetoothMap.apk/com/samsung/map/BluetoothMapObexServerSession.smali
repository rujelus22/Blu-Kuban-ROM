.class public Lcom/samsung/map/BluetoothMapObexServerSession;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothMapObexServerSession.java"


# static fields
.field private static final MAS_TARGET:[B


# instance fields
.field MASInstanceId:I

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mSession:Ljavax/obex/ServerSession;

.field private mTransport:Lcom/samsung/map/BluetoothMapObexTransport;

.field private messageFolder:Lcom/samsung/map/MessageFolder;

.field private notificationService:Lcom/samsung/map/MessageNotificationService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 299
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/map/BluetoothMapObexServerSession;->MAS_TARGET:[B

    return-void

    :array_a
    .array-data 0x1
        0xbbt
        0x58t
        0x2bt
        0x40t
        0x42t
        0xct
        0x11t
        0xdbt
        0xb0t
        0xdet
        0x8t
        0x0t
        0x20t
        0xct
        0x9at
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/map/BluetoothMapObexTransport;ILcom/samsung/map/MessageNotificationService;Lcom/samsung/map/MessageFolder;)V
    .registers 7
    .parameter "context"
    .parameter "transport"
    .parameter "MASInstanceId"
    .parameter "notificationService"
    .parameter "messageFolder"

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 309
    iput-object v0, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mCallback:Landroid/os/Handler;

    .line 311
    iput-object v0, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    .line 315
    iput-object v0, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->notificationService:Lcom/samsung/map/MessageNotificationService;

    .line 322
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mContext:Landroid/content/Context;

    .line 323
    iput-object p2, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mTransport:Lcom/samsung/map/BluetoothMapObexTransport;

    .line 324
    iput-object p4, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->notificationService:Lcom/samsung/map/MessageNotificationService;

    .line 325
    iput p3, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->MASInstanceId:I

    .line 326
    iput-object p5, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    .line 327
    invoke-virtual {p5, p1}, Lcom/samsung/map/MessageFolder;->setContext(Landroid/content/Context;)V

    .line 328
    return-void
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .registers 4
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 863
    const/16 v0, 0xa0

    return v0
.end method

.method public onClose()V
    .registers 3

    .prologue
    .line 421
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_11

    .line 422
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 424
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 428
    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->notificationService:Lcom/samsung/map/MessageNotificationService;

    if-eqz v1, :cond_1a

    .line 429
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->notificationService:Lcom/samsung/map/MessageNotificationService;

    invoke-virtual {v1}, Lcom/samsung/map/MessageNotificationService;->stopAll()V

    .line 431
    :cond_1a
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .registers 13
    .parameter "request"
    .parameter "reply"

    .prologue
    const/16 v7, 0xd0

    const/16 v9, 0x10

    const/16 v6, 0xc6

    .line 373
    const/16 v5, 0x46

    :try_start_8
    invoke-virtual {p1, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 374
    .local v4, uuid:[B
    if-nez v4, :cond_16

    move v5, v6

    .line 406
    .end local v4           #uuid:[B
    :goto_15
    return v5

    .line 379
    .restart local v4       #uuid:[B
    :cond_16
    array-length v5, v4

    if-eq v5, v9, :cond_22

    .line 380
    const-string v5, "BtMapObexServer"

    const-string v8, "Wrong UUID length"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 381
    goto :goto_15

    .line 383
    :cond_22
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    if-ge v2, v9, :cond_39

    .line 384
    aget-byte v5, v4, v2

    sget-object v8, Lcom/samsung/map/BluetoothMapObexServerSession;->MAS_TARGET:[B

    aget-byte v8, v8, v2

    if-eq v5, v8, :cond_36

    .line 385
    const-string v5, "BtMapObexServer"

    const-string v8, "Wrong UUID"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 386
    goto :goto_15

    .line 383
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 389
    :cond_39
    const/16 v5, 0x4a

    invoke-virtual {p2, v5, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3e} :catch_54

    .line 396
    const/16 v5, 0x4a

    :try_start_40
    invoke-virtual {p1, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v3, v0

    .line 397
    .local v3, remote:[B
    if-eqz v3, :cond_51

    .line 399
    const/16 v5, 0x46

    invoke-virtual {p2, v5, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_51} :catch_60

    .line 406
    :cond_51
    const/16 v5, 0xa0

    goto :goto_15

    .line 390
    .end local v2           #i:I
    .end local v3           #remote:[B
    .end local v4           #uuid:[B
    :catch_54
    move-exception v1

    .line 391
    .local v1, e:Ljava/io/IOException;
    const-string v5, "BtMapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 392
    goto :goto_15

    .line 401
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v4       #uuid:[B
    :catch_60
    move-exception v1

    .line 402
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "BtMapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 403
    goto :goto_15
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .registers 4
    .parameter "req"
    .parameter "resp"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->notificationService:Lcom/samsung/map/MessageNotificationService;

    if-eqz v0, :cond_9

    .line 413
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->notificationService:Lcom/samsung/map/MessageNotificationService;

    invoke-virtual {v0}, Lcom/samsung/map/MessageNotificationService;->stopAll()V

    .line 415
    :cond_9
    const/16 v0, 0xa0

    iput v0, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 416
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .registers 39
    .parameter "op"

    .prologue
    .line 594
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_74

    move-result-object v28

    .line 602
    .local v28, headers:Ljavax/obex/HeaderSet;
    const/16 v4, 0x42

    :try_start_6
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_78

    .line 607
    .local v34, type:Ljava/lang/String;
    const-string v4, "x-bt/message"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 608
    const/16 v20, -0x1

    .line 609
    .local v20, Handle:I
    const/16 v17, -0x1

    .line 610
    .local v17, Attachment:I
    const/16 v18, -0x1

    .line 611
    .local v18, Charset:I
    const/16 v19, -0x1

    .line 618
    .local v19, FractionRequest:I
    const/4 v4, 0x1

    :try_start_21
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v36, 0x10

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v20

    .line 619
    const/16 v4, 0x4c

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v21, v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_40} :catch_7c

    .line 625
    .local v21, ap:[B
    new-instance v30, Lcom/samsung/map/MapApplicationParameter;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/map/MapApplicationParameter;-><init>([B)V

    .line 627
    .local v30, map:Lcom/samsung/map/MapApplicationParameter;
    const/16 v4, 0xa

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v17

    .line 628
    const/16 v4, 0x14

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v18

    .line 629
    const/16 v4, 0x15

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v19

    .line 631
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_71

    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_8b

    .line 633
    :cond_71
    const/16 v4, 0xc0

    .line 815
    .end local v17           #Attachment:I
    .end local v18           #Charset:I
    .end local v19           #FractionRequest:I
    .end local v20           #Handle:I
    .end local v21           #ap:[B
    .end local v28           #headers:Ljavax/obex/HeaderSet;
    .end local v30           #map:Lcom/samsung/map/MapApplicationParameter;
    .end local v34           #type:Ljava/lang/String;
    :goto_73
    return v4

    .line 595
    :catch_74
    move-exception v23

    .line 596
    .local v23, e:Ljava/io/IOException;
    const/16 v4, 0xc0

    goto :goto_73

    .line 603
    .end local v23           #e:Ljava/io/IOException;
    .restart local v28       #headers:Ljavax/obex/HeaderSet;
    :catch_78
    move-exception v23

    .line 604
    .restart local v23       #e:Ljava/io/IOException;
    const/16 v4, 0xc0

    goto :goto_73

    .line 620
    .end local v23           #e:Ljava/io/IOException;
    .restart local v17       #Attachment:I
    .restart local v18       #Charset:I
    .restart local v19       #FractionRequest:I
    .restart local v20       #Handle:I
    .restart local v34       #type:Ljava/lang/String;
    :catch_7c
    move-exception v23

    .line 621
    .local v23, e:Ljava/lang/Exception;
    const-string v4, "BtMapObexServer"

    const-string v36, "Error parsing headers"

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    const/16 v4, 0xc0

    goto :goto_73

    .line 636
    .end local v23           #e:Ljava/lang/Exception;
    .restart local v21       #ap:[B
    .restart local v30       #map:Lcom/samsung/map/MapApplicationParameter;
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    move-object/from16 v36, v0

    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_10d

    const/4 v4, 0x1

    :goto_97
    move-object/from16 v0, v36

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/map/MessageFolder;->GetMessage(IZII)Lcom/samsung/map/MessageFolder$GetMessageResponse;

    move-result-object v26

    .line 638
    .local v26, gmr:Lcom/samsung/map/MessageFolder$GetMessageResponse;
    move-object/from16 v0, v26

    iget v4, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    const/16 v36, 0xa0

    move/from16 v0, v36

    if-ne v4, v0, :cond_107

    .line 639
    new-instance v27, Ljavax/obex/HeaderSet;

    invoke-direct/range {v27 .. v27}, Ljavax/obex/HeaderSet;-><init>()V

    .line 640
    .local v27, header:Ljavax/obex/HeaderSet;
    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_e9

    .line 641
    new-instance v33, Ljavax/obex/ApplicationParameter;

    invoke-direct/range {v33 .. v33}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 642
    .local v33, parameter:Ljavax/obex/ApplicationParameter;
    const/4 v4, 0x1

    new-array v0, v4, [B

    move-object/from16 v35, v0

    .line 643
    .local v35, value:[B
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->FractionDeliver:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v35, v4

    .line 644
    const/16 v4, 0x16

    const/16 v36, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 646
    const/16 v4, 0x4c

    invoke-virtual/range {v33 .. v33}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 649
    .end local v33           #parameter:Ljavax/obex/ApplicationParameter;
    .end local v35           #value:[B
    :cond_e9
    :try_start_e9
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 650
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v32

    .line 651
    .local v32, os:Ljava/io/OutputStream;
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->messageBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 652
    invoke-virtual/range {v32 .. v32}, Ljava/io/OutputStream;->close()V

    .line 653
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_107} :catch_10f

    .line 660
    .end local v27           #header:Ljavax/obex/HeaderSet;
    .end local v32           #os:Ljava/io/OutputStream;
    :cond_107
    move-object/from16 v0, v26

    iget v4, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    goto/16 :goto_73

    .line 636
    .end local v26           #gmr:Lcom/samsung/map/MessageFolder$GetMessageResponse;
    :cond_10d
    const/4 v4, 0x0

    goto :goto_97

    .line 654
    .restart local v26       #gmr:Lcom/samsung/map/MessageFolder$GetMessageResponse;
    .restart local v27       #header:Ljavax/obex/HeaderSet;
    :catch_10f
    move-exception v23

    .line 655
    .local v23, e:Ljava/io/IOException;
    const-string v4, "BtMapObexServer"

    const-string v36, "Headers error"

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    const/16 v4, 0xc0

    goto/16 :goto_73

    .line 662
    .end local v17           #Attachment:I
    .end local v18           #Charset:I
    .end local v19           #FractionRequest:I
    .end local v20           #Handle:I
    .end local v21           #ap:[B
    .end local v23           #e:Ljava/io/IOException;
    .end local v26           #gmr:Lcom/samsung/map/MessageFolder$GetMessageResponse;
    .end local v27           #header:Ljavax/obex/HeaderSet;
    .end local v30           #map:Lcom/samsung/map/MapApplicationParameter;
    :cond_11f
    const-string v4, "x-obex/folder-listing"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_226

    .line 663
    const/16 v6, 0x400

    .line 664
    .local v6, MaxListCount:I
    const/4 v7, 0x0

    .line 670
    .local v7, ListStartOffset:I
    const/16 v4, 0x4c

    :try_start_12e
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v21, v0
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_13b} :catch_1b2

    .line 675
    .restart local v21       #ap:[B
    :goto_13b
    if-eqz v21, :cond_154

    .line 676
    new-instance v30, Lcom/samsung/map/MapApplicationParameter;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/map/MapApplicationParameter;-><init>([B)V

    .line 677
    .restart local v30       #map:Lcom/samsung/map/MapApplicationParameter;
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v6

    .line 678
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v7}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v7

    .line 681
    .end local v30           #map:Lcom/samsung/map/MapApplicationParameter;
    :cond_154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    invoke-virtual {v4, v6, v7}, Lcom/samsung/map/MessageFolder;->getFolderListing(II)Lcom/samsung/map/MessageFolder$FolderListingResponse;

    move-result-object v25

    .line 683
    .local v25, flr:Lcom/samsung/map/MessageFolder$FolderListingResponse;
    new-instance v27, Ljavax/obex/HeaderSet;

    invoke-direct/range {v27 .. v27}, Ljavax/obex/HeaderSet;-><init>()V

    .line 684
    .restart local v27       #header:Ljavax/obex/HeaderSet;
    if-nez v6, :cond_1bb

    .line 685
    new-instance v33, Ljavax/obex/ApplicationParameter;

    invoke-direct/range {v33 .. v33}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 686
    .restart local v33       #parameter:Ljavax/obex/ApplicationParameter;
    const/4 v4, 0x2

    new-array v0, v4, [B

    move-object/from16 v35, v0

    .line 687
    .restart local v35       #value:[B
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->FolderListingSize:I

    move/from16 v36, v0

    shr-int/lit8 v36, v36, 0x8

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v35, v4

    .line 688
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iget v0, v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->FolderListingSize:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v35, v4

    .line 689
    const/16 v4, 0x11

    const/16 v36, 0x2

    move-object/from16 v0, v33

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 691
    const/16 v4, 0x4c

    invoke-virtual/range {v33 .. v33}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 693
    :try_start_1a5
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1ac} :catch_1b6

    .line 697
    move-object/from16 v0, v25

    iget v4, v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->status:I

    goto/16 :goto_73

    .line 671
    .end local v21           #ap:[B
    .end local v25           #flr:Lcom/samsung/map/MessageFolder$FolderListingResponse;
    .end local v27           #header:Ljavax/obex/HeaderSet;
    .end local v33           #parameter:Ljavax/obex/ApplicationParameter;
    .end local v35           #value:[B
    :catch_1b2
    move-exception v24

    .line 672
    .local v24, e1:Ljava/io/IOException;
    const/16 v21, 0x0

    .restart local v21       #ap:[B
    goto :goto_13b

    .line 694
    .end local v24           #e1:Ljava/io/IOException;
    .restart local v25       #flr:Lcom/samsung/map/MessageFolder$FolderListingResponse;
    .restart local v27       #header:Ljavax/obex/HeaderSet;
    .restart local v33       #parameter:Ljavax/obex/ApplicationParameter;
    .restart local v35       #value:[B
    :catch_1b6
    move-exception v23

    .line 695
    .restart local v23       #e:Ljava/io/IOException;
    const/16 v4, 0xc0

    goto/16 :goto_73

    .line 699
    .end local v23           #e:Ljava/io/IOException;
    .end local v33           #parameter:Ljavax/obex/ApplicationParameter;
    .end local v35           #value:[B
    :cond_1bb
    new-instance v33, Ljavax/obex/ApplicationParameter;

    invoke-direct/range {v33 .. v33}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 700
    .restart local v33       #parameter:Ljavax/obex/ApplicationParameter;
    const/4 v4, 0x2

    new-array v0, v4, [B

    move-object/from16 v35, v0

    .line 701
    .restart local v35       #value:[B
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->FolderListingSize:I

    move/from16 v36, v0

    shr-int/lit8 v36, v36, 0x8

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v35, v4

    .line 702
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iget v0, v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->FolderListingSize:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v35, v4

    .line 703
    const/16 v4, 0x11

    const/16 v36, 0x2

    move-object/from16 v0, v33

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 705
    const/16 v4, 0x4c

    invoke-virtual/range {v33 .. v33}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 708
    :try_start_1fd
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 709
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v32

    .line 710
    .restart local v32       #os:Ljava/io/OutputStream;
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->listing:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 711
    invoke-virtual/range {v32 .. v32}, Ljava/io/OutputStream;->close()V

    .line 712
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->close()V
    :try_end_21b
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_21b} :catch_221

    .line 717
    move-object/from16 v0, v25

    iget v4, v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->status:I

    goto/16 :goto_73

    .line 713
    .end local v32           #os:Ljava/io/OutputStream;
    :catch_221
    move-exception v23

    .line 714
    .restart local v23       #e:Ljava/io/IOException;
    const/16 v4, 0xc0

    goto/16 :goto_73

    .line 719
    .end local v6           #MaxListCount:I
    .end local v7           #ListStartOffset:I
    .end local v21           #ap:[B
    .end local v23           #e:Ljava/io/IOException;
    .end local v25           #flr:Lcom/samsung/map/MessageFolder$FolderListingResponse;
    .end local v27           #header:Ljavax/obex/HeaderSet;
    .end local v33           #parameter:Ljavax/obex/ApplicationParameter;
    .end local v35           #value:[B
    :cond_226
    const-string v4, "x-bt/MAP-msg-listing"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a7

    .line 720
    const-string v5, ""

    .line 721
    .local v5, Folder:Ljava/lang/String;
    const/16 v6, 0x400

    .line 722
    .restart local v6       #MaxListCount:I
    const/4 v7, 0x0

    .line 723
    .restart local v7       #ListStartOffset:I
    const/16 v8, 0xff

    .line 724
    .local v8, SubjectLength:I
    const v9, 0xffff

    .line 725
    .local v9, ParameterMask:I
    const/4 v10, 0x0

    .line 726
    .local v10, FilterMessageType:I
    const-string v11, ""

    .line 727
    .local v11, FilterPeriodBegin:Ljava/lang/String;
    const-string v12, ""

    .line 728
    .local v12, FilterPeriodEnd:Ljava/lang/String;
    const/4 v13, 0x0

    .line 729
    .local v13, FilterReadStatus:I
    const-string v14, ""

    .line 730
    .local v14, FilterRecipient:Ljava/lang/String;
    const-string v15, ""

    .line 731
    .local v15, FilterOriginator:Ljava/lang/String;
    const/16 v16, 0x0

    .line 738
    .local v16, FilterPriority:I
    const/4 v4, 0x1

    :try_start_247
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #Folder:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;
    :try_end_24f
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_24f} :catch_350

    .line 744
    .restart local v5       #Folder:Ljava/lang/String;
    const/16 v4, 0x4c

    :try_start_251
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v21, v0
    :try_end_25e
    .catch Ljava/io/IOException; {:try_start_251 .. :try_end_25e} :catch_355

    .line 749
    .restart local v21       #ap:[B
    :goto_25e
    if-eqz v21, :cond_2bc

    .line 750
    new-instance v30, Lcom/samsung/map/MapApplicationParameter;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/map/MapApplicationParameter;-><init>([B)V

    .line 752
    .restart local v30       #map:Lcom/samsung/map/MapApplicationParameter;
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v6

    .line 753
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v7}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v7

    .line 754
    const/16 v4, 0x13

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v8

    .line 755
    const/16 v4, 0x10

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v9}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v9

    .line 756
    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v10}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v10

    .line 758
    const/4 v4, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v11}, Lcom/samsung/map/MapApplicationParameter;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 760
    const/4 v4, 0x5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v12}, Lcom/samsung/map/MapApplicationParameter;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 762
    const/4 v4, 0x6

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v13}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v13

    .line 764
    const/4 v4, 0x7

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v14}, Lcom/samsung/map/MapApplicationParameter;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 766
    const/16 v4, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v15}, Lcom/samsung/map/MapApplicationParameter;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 768
    const/16 v4, 0x9

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v16

    .line 773
    .end local v30           #map:Lcom/samsung/map/MapApplicationParameter;
    :cond_2bc
    if-nez v9, :cond_2c1

    .line 774
    const v9, 0xffff

    .line 777
    :cond_2c1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    invoke-virtual/range {v4 .. v16}, Lcom/samsung/map/MessageFolder;->getMessageListing(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/samsung/map/MessageFolder$MessageListingResponse;

    move-result-object v31

    .line 781
    .local v31, mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    move-object/from16 v0, v31

    iget v4, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->status:I

    const/16 v36, 0xa0

    move/from16 v0, v36

    if-ne v4, v0, :cond_39c

    .line 782
    new-instance v33, Ljavax/obex/ApplicationParameter;

    invoke-direct/range {v33 .. v33}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 783
    .restart local v33       #parameter:Ljavax/obex/ApplicationParameter;
    new-instance v27, Ljavax/obex/HeaderSet;

    invoke-direct/range {v27 .. v27}, Ljavax/obex/HeaderSet;-><init>()V

    .line 784
    .restart local v27       #header:Ljavax/obex/HeaderSet;
    const/16 v4, 0x20

    new-array v0, v4, [B

    move-object/from16 v35, v0

    .line 786
    .restart local v35       #value:[B
    const/16 v36, 0x0

    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->NewMessage:Z

    if-eqz v4, :cond_35a

    const/4 v4, 0x1

    :goto_2ec
    int-to-byte v4, v4

    aput-byte v4, v35, v36

    .line 787
    const/16 v4, 0xd

    const/16 v36, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 789
    const/4 v4, 0x0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->MessageListingSize:I

    move/from16 v36, v0

    shr-int/lit8 v36, v36, 0x8

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v35, v4

    .line 790
    const/4 v4, 0x1

    move-object/from16 v0, v31

    iget v0, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->MessageListingSize:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v35, v4

    .line 791
    const/16 v4, 0x12

    const/16 v36, 0x2

    move-object/from16 v0, v33

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 793
    if-eqz v6, :cond_369

    .line 794
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v36, "yyyMMdd\'T\'hhmmss"

    move-object/from16 v0, v36

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v36, Ljava/util/Date;

    invoke-direct/range {v36 .. v36}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 795
    .local v22, date:Ljava/lang/String;
    const/16 v29, 0x0

    .local v29, i:I
    :goto_33f
    const/16 v4, 0xf

    move/from16 v0, v29

    if-ge v0, v4, :cond_35c

    .line 796
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aget-byte v4, v4, v29

    aput-byte v4, v35, v29

    .line 795
    add-int/lit8 v29, v29, 0x1

    goto :goto_33f

    .line 739
    .end local v5           #Folder:Ljava/lang/String;
    .end local v21           #ap:[B
    .end local v22           #date:Ljava/lang/String;
    .end local v27           #header:Ljavax/obex/HeaderSet;
    .end local v29           #i:I
    .end local v31           #mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .end local v33           #parameter:Ljavax/obex/ApplicationParameter;
    .end local v35           #value:[B
    :catch_350
    move-exception v23

    .line 740
    .restart local v23       #e:Ljava/io/IOException;
    const/16 v4, 0xc0

    goto/16 :goto_73

    .line 745
    .end local v23           #e:Ljava/io/IOException;
    .restart local v5       #Folder:Ljava/lang/String;
    :catch_355
    move-exception v24

    .line 746
    .restart local v24       #e1:Ljava/io/IOException;
    const/16 v21, 0x0

    .restart local v21       #ap:[B
    goto/16 :goto_25e

    .line 786
    .end local v24           #e1:Ljava/io/IOException;
    .restart local v27       #header:Ljavax/obex/HeaderSet;
    .restart local v31       #mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .restart local v33       #parameter:Ljavax/obex/ApplicationParameter;
    .restart local v35       #value:[B
    :cond_35a
    const/4 v4, 0x0

    goto :goto_2ec

    .line 798
    .restart local v22       #date:Ljava/lang/String;
    .restart local v29       #i:I
    :cond_35c
    const/16 v4, 0x19

    const/16 v36, 0xf

    move-object/from16 v0, v33

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 800
    .end local v22           #date:Ljava/lang/String;
    .end local v29           #i:I
    :cond_369
    const/16 v4, 0x4c

    invoke-virtual/range {v33 .. v33}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 802
    :try_start_376
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 803
    move-object/from16 v0, v31

    iget v4, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->MessageListingSize:I

    if-lez v4, :cond_399

    if-eqz v6, :cond_399

    .line 804
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v32

    .line 805
    .restart local v32       #os:Ljava/io/OutputStream;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->listing:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 806
    invoke-virtual/range {v32 .. v32}, Ljava/io/OutputStream;->close()V

    .line 808
    .end local v32           #os:Ljava/io/OutputStream;
    :cond_399
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->close()V
    :try_end_39c
    .catch Ljava/io/IOException; {:try_start_376 .. :try_end_39c} :catch_3a2

    .line 813
    .end local v27           #header:Ljavax/obex/HeaderSet;
    .end local v33           #parameter:Ljavax/obex/ApplicationParameter;
    .end local v35           #value:[B
    :cond_39c
    move-object/from16 v0, v31

    iget v4, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->status:I

    goto/16 :goto_73

    .line 809
    .restart local v27       #header:Ljavax/obex/HeaderSet;
    .restart local v33       #parameter:Ljavax/obex/ApplicationParameter;
    .restart local v35       #value:[B
    :catch_3a2
    move-exception v23

    .line 810
    .restart local v23       #e:Ljava/io/IOException;
    const/16 v4, 0xc0

    goto/16 :goto_73

    .line 815
    .end local v5           #Folder:Ljava/lang/String;
    .end local v6           #MaxListCount:I
    .end local v7           #ListStartOffset:I
    .end local v8           #SubjectLength:I
    .end local v9           #ParameterMask:I
    .end local v10           #FilterMessageType:I
    .end local v11           #FilterPeriodBegin:Ljava/lang/String;
    .end local v12           #FilterPeriodEnd:Ljava/lang/String;
    .end local v13           #FilterReadStatus:I
    .end local v14           #FilterRecipient:Ljava/lang/String;
    .end local v15           #FilterOriginator:Ljava/lang/String;
    .end local v16           #FilterPriority:I
    .end local v21           #ap:[B
    .end local v23           #e:Ljava/io/IOException;
    .end local v27           #header:Ljavax/obex/HeaderSet;
    .end local v31           #mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .end local v33           #parameter:Ljavax/obex/ApplicationParameter;
    .end local v35           #value:[B
    :cond_3a7
    const/16 v4, 0xc0

    goto/16 :goto_73
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .registers 27
    .parameter "op"

    .prologue
    .line 440
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v19

    .line 441
    .local v19, headers:Ljavax/obex/HeaderSet;
    const/16 v2, 0x42

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_59

    .line 447
    .local v23, type:Ljava/lang/String;
    const-string v2, "x-bt/message"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 449
    const-string v3, ""

    .line 450
    .local v3, Folder:Ljava/lang/String;
    const/4 v6, -0x1

    .line 451
    .local v6, Charset:I
    const/4 v9, -0x1

    .line 452
    .local v9, Retry:I
    const/4 v12, -0x1

    .line 459
    .local v12, Transparent:I
    const/4 v2, 0x1

    :try_start_1e
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #Folder:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_5d

    .line 466
    .restart local v3       #Folder:Ljava/lang/String;
    const/16 v2, 0x4c

    :try_start_28
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_68

    .line 472
    .local v13, ap:[B
    new-instance v20, Lcom/samsung/map/MapApplicationParameter;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lcom/samsung/map/MapApplicationParameter;-><init>([B)V

    .line 474
    .local v20, map:Lcom/samsung/map/MapApplicationParameter;
    const/16 v2, 0xb

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v12}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v12

    .line 475
    const/16 v2, 0x14

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v6

    .line 476
    const/16 v2, 0xc

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v9

    .line 478
    const/4 v2, -0x1

    if-ne v6, v2, :cond_73

    .line 480
    const/16 v2, 0xc0

    .line 585
    .end local v3           #Folder:Ljava/lang/String;
    .end local v6           #Charset:I
    .end local v9           #Retry:I
    .end local v12           #Transparent:I
    .end local v13           #ap:[B
    .end local v19           #headers:Ljavax/obex/HeaderSet;
    .end local v20           #map:Lcom/samsung/map/MapApplicationParameter;
    .end local v23           #type:Ljava/lang/String;
    :goto_58
    return v2

    .line 442
    :catch_59
    move-exception v15

    .line 444
    .local v15, e:Ljava/io/IOException;
    const/16 v2, 0xc0

    goto :goto_58

    .line 460
    .end local v15           #e:Ljava/io/IOException;
    .restart local v6       #Charset:I
    .restart local v9       #Retry:I
    .restart local v12       #Transparent:I
    .restart local v19       #headers:Ljavax/obex/HeaderSet;
    .restart local v23       #type:Ljava/lang/String;
    :catch_5d
    move-exception v15

    .line 461
    .restart local v15       #e:Ljava/io/IOException;
    const-string v2, "BtMapObexServer"

    const-string v4, "NAME header error"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    const/16 v2, 0xc0

    goto :goto_58

    .line 467
    .end local v15           #e:Ljava/io/IOException;
    .restart local v3       #Folder:Ljava/lang/String;
    :catch_68
    move-exception v15

    .line 468
    .restart local v15       #e:Ljava/io/IOException;
    const-string v2, "BtMapObexServer"

    const-string v4, "APPLICATION_PARAMETERS header error"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    const/16 v2, 0xc0

    goto :goto_58

    .line 486
    .end local v15           #e:Ljava/io/IOException;
    .restart local v13       #ap:[B
    .restart local v20       #map:Lcom/samsung/map/MapApplicationParameter;
    :cond_73
    :try_start_73
    new-instance v14, Lcom/samsung/map/parser/BMessageParser;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v2}, Lcom/samsung/map/parser/BMessageParser;-><init>(Ljava/io/Reader;)V

    .line 487
    .local v14, bmp:Lcom/samsung/map/parser/BMessageParser;
    sget-object v2, Lcom/samsung/map/parser/ParsingStatus;->OK:Lcom/samsung/map/parser/ParsingStatus;

    invoke-virtual {v14}, Lcom/samsung/map/parser/BMessageParser;->parse()Lcom/samsung/map/parser/ParsingStatus;

    move-result-object v4

    if-eq v2, v4, :cond_8c

    .line 489
    const/16 v2, 0xc0

    goto :goto_58

    .line 492
    :cond_8c
    invoke-virtual {v14}, Lcom/samsung/map/parser/BMessageParser;->getBMessage()Lcom/samsung/map/bmessage/BMessage;
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_8f} :catch_d1

    move-result-object v7

    .line 498
    .local v7, bMessage:Lcom/samsung/map/bmessage/BMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    and-int/lit8 v4, v12, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_dd

    const/4 v4, 0x1

    :goto_9a
    and-int/lit8 v5, v9, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v5, v0, :cond_df

    const/4 v5, 0x1

    :goto_a3
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/map/MessageFolder;->PushMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;

    move-result-object v21

    .line 500
    .local v21, pmr:Lcom/samsung/map/MessageFolder$PushMessageResponse;
    new-instance v18, Ljavax/obex/HeaderSet;

    invoke-direct/range {v18 .. v18}, Ljavax/obex/HeaderSet;-><init>()V

    .line 501
    .local v18, header:Ljavax/obex/HeaderSet;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/samsung/map/MessageFolder$PushMessageResponse;->status:I

    const/16 v4, 0xa0

    if-ne v2, v4, :cond_c2

    .line 502
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iget v4, v0, Lcom/samsung/map/MessageFolder$PushMessageResponse;->handle:I

    invoke-static {v4}, Lcom/samsung/map/Constants;->handleToString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 505
    :cond_c2
    :try_start_c2
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 506
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_cc} :catch_e1

    .line 510
    move-object/from16 v0, v21

    iget v2, v0, Lcom/samsung/map/MessageFolder$PushMessageResponse;->status:I

    goto :goto_58

    .line 493
    .end local v7           #bMessage:Lcom/samsung/map/bmessage/BMessage;
    .end local v14           #bmp:Lcom/samsung/map/parser/BMessageParser;
    .end local v18           #header:Ljavax/obex/HeaderSet;
    .end local v21           #pmr:Lcom/samsung/map/MessageFolder$PushMessageResponse;
    :catch_d1
    move-exception v15

    .line 494
    .restart local v15       #e:Ljava/io/IOException;
    const-string v2, "BtMapObexServer"

    const-string v4, "IO error while parsing."

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    const/16 v2, 0xc0

    goto/16 :goto_58

    .line 498
    .end local v15           #e:Ljava/io/IOException;
    .restart local v7       #bMessage:Lcom/samsung/map/bmessage/BMessage;
    .restart local v14       #bmp:Lcom/samsung/map/parser/BMessageParser;
    :cond_dd
    const/4 v4, 0x0

    goto :goto_9a

    :cond_df
    const/4 v5, 0x0

    goto :goto_a3

    .line 507
    .restart local v18       #header:Ljavax/obex/HeaderSet;
    .restart local v21       #pmr:Lcom/samsung/map/MessageFolder$PushMessageResponse;
    :catch_e1
    move-exception v15

    .line 508
    .restart local v15       #e:Ljava/io/IOException;
    const/16 v2, 0xc0

    goto/16 :goto_58

    .line 512
    .end local v3           #Folder:Ljava/lang/String;
    .end local v6           #Charset:I
    .end local v7           #bMessage:Lcom/samsung/map/bmessage/BMessage;
    .end local v9           #Retry:I
    .end local v12           #Transparent:I
    .end local v13           #ap:[B
    .end local v14           #bmp:Lcom/samsung/map/parser/BMessageParser;
    .end local v15           #e:Ljava/io/IOException;
    .end local v18           #header:Ljavax/obex/HeaderSet;
    .end local v20           #map:Lcom/samsung/map/MapApplicationParameter;
    .end local v21           #pmr:Lcom/samsung/map/MessageFolder$PushMessageResponse;
    :cond_e6
    const-string v2, "x-bt/MAP-NotificationRegistration"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 513
    const/4 v8, -0x1

    .line 519
    .local v8, NotificationStatus:I
    const/16 v2, 0x4c

    :try_start_f3
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_ff} :catch_115

    .line 525
    .restart local v13       #ap:[B
    new-instance v20, Lcom/samsung/map/MapApplicationParameter;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lcom/samsung/map/MapApplicationParameter;-><init>([B)V

    .line 527
    .restart local v20       #map:Lcom/samsung/map/MapApplicationParameter;
    const/16 v2, 0xe

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v8}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v8

    .line 530
    const/4 v2, -0x1

    if-ne v8, v2, :cond_121

    .line 532
    const/16 v2, 0xc0

    goto/16 :goto_58

    .line 520
    .end local v13           #ap:[B
    .end local v20           #map:Lcom/samsung/map/MapApplicationParameter;
    :catch_115
    move-exception v16

    .line 521
    .local v16, e1:Ljava/io/IOException;
    const-string v2, "BtMapObexServer"

    const-string v4, "No ApplicationParameters"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/16 v2, 0xc0

    goto/16 :goto_58

    .line 533
    .end local v16           #e1:Ljava/io/IOException;
    .restart local v13       #ap:[B
    .restart local v20       #map:Lcom/samsung/map/MapApplicationParameter;
    :cond_121
    and-int/lit8 v2, v8, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_140

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->notificationService:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->MASInstanceId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->mTransport:Lcom/samsung/map/BluetoothMapObexTransport;

    invoke-virtual {v5}, Lcom/samsung/map/BluetoothMapObexTransport;->getSocket()Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/map/MessageNotificationService;->start(ILandroid/bluetooth/BluetoothDevice;)I

    move-result v2

    goto/16 :goto_58

    .line 537
    :cond_140
    and-int/lit8 v2, v8, 0x1

    if-nez v2, :cond_1dc

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->notificationService:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->MASInstanceId:I

    invoke-virtual {v2, v4}, Lcom/samsung/map/MessageNotificationService;->stop(I)I

    move-result v2

    goto/16 :goto_58

    .line 542
    .end local v8           #NotificationStatus:I
    .end local v13           #ap:[B
    .end local v20           #map:Lcom/samsung/map/MapApplicationParameter;
    :cond_152
    const-string v2, "x-bt/messageStatus"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c4

    .line 543
    const/16 v17, 0x0

    .line 550
    .local v17, handle:I
    const/4 v2, 0x1

    :try_start_15f
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 551
    .local v22, str:Ljava/lang/String;
    const/16 v2, 0x10

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_16e} :catch_1a0

    move-result v17

    .line 560
    const/16 v2, 0x4c

    :try_start_171
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_17d} :catch_1ac

    .line 566
    .restart local v13       #ap:[B
    new-instance v20, Lcom/samsung/map/MapApplicationParameter;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lcom/samsung/map/MapApplicationParameter;-><init>([B)V

    .line 568
    .restart local v20       #map:Lcom/samsung/map/MapApplicationParameter;
    const/16 v2, 0x17

    const/4 v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v10

    .line 570
    .local v10, StatusIndicator:I
    const/16 v2, 0x18

    const/4 v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/samsung/map/MapApplicationParameter;->getInt(II)I

    move-result v11

    .line 572
    .local v11, StatusValue:I
    const/4 v2, -0x1

    if-eq v11, v2, :cond_19c

    const/4 v2, -0x1

    if-ne v10, v2, :cond_1b8

    .line 574
    :cond_19c
    const/16 v2, 0xc0

    goto/16 :goto_58

    .line 552
    .end local v10           #StatusIndicator:I
    .end local v11           #StatusValue:I
    .end local v13           #ap:[B
    .end local v20           #map:Lcom/samsung/map/MapApplicationParameter;
    .end local v22           #str:Ljava/lang/String;
    :catch_1a0
    move-exception v15

    .line 553
    .local v15, e:Ljava/lang/Exception;
    const-string v2, "BtMapObexServer"

    const-string v4, "NAME header error"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    const/16 v2, 0xc0

    goto/16 :goto_58

    .line 561
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v22       #str:Ljava/lang/String;
    :catch_1ac
    move-exception v16

    .line 562
    .restart local v16       #e1:Ljava/io/IOException;
    const-string v2, "BtMapObexServer"

    const-string v4, "No application parameters"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v2, 0xc0

    goto/16 :goto_58

    .line 576
    .end local v16           #e1:Ljava/io/IOException;
    .restart local v10       #StatusIndicator:I
    .restart local v11       #StatusValue:I
    .restart local v13       #ap:[B
    .restart local v20       #map:Lcom/samsung/map/MapApplicationParameter;
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v10, v11}, Lcom/samsung/map/MessageFolder;->SetStatus(III)I

    move-result v2

    goto/16 :goto_58

    .line 577
    .end local v10           #StatusIndicator:I
    .end local v11           #StatusValue:I
    .end local v13           #ap:[B
    .end local v17           #handle:I
    .end local v20           #map:Lcom/samsung/map/MapApplicationParameter;
    .end local v22           #str:Ljava/lang/String;
    :cond_1c4
    const-string v2, "x-bt/MAP-messageUpdate"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    invoke-virtual {v2}, Lcom/samsung/map/MessageFolder;->Update()I

    move-result v2

    goto/16 :goto_58

    .line 582
    :cond_1d8
    const/16 v2, 0xc0

    goto/16 :goto_58

    .line 585
    .restart local v8       #NotificationStatus:I
    .restart local v13       #ap:[B
    .restart local v20       #map:Lcom/samsung/map/MapApplicationParameter;
    :cond_1dc
    const/16 v2, 0xa0

    goto/16 :goto_58
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .registers 12
    .parameter "request"
    .parameter "reply"
    .parameter "backup"
    .parameter "create"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 824
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 827
    .local v1, folder:Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_8
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #folder:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_2e

    .line 833
    .restart local v1       #folder:Ljava/lang/String;
    :goto_e
    const/16 v4, 0xc0

    .line 835
    .local v4, response:I
    if-nez p3, :cond_32

    if-nez p4, :cond_32

    move v2, v3

    .line 836
    .local v2, go_root:Z
    :goto_15
    if-eqz p3, :cond_34

    if-nez p4, :cond_34

    .line 840
    .local v3, go_up:Z
    :goto_19
    if-eqz v2, :cond_3d

    .line 841
    if-eqz v1, :cond_25

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 842
    :cond_25
    iget-object v5, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Lcom/samsung/map/MessageFolder;->SetFolder(Ljava/lang/String;)I

    move-result v4

    .line 857
    :cond_2d
    :goto_2d
    return v4

    .line 828
    .end local v1           #folder:Ljava/lang/String;
    .end local v2           #go_root:Z
    .end local v3           #go_up:Z
    .end local v4           #response:I
    :catch_2e
    move-exception v0

    .line 829
    .local v0, e:Ljava/io/IOException;
    const-string v1, ""

    .restart local v1       #folder:Ljava/lang/String;
    goto :goto_e

    .end local v0           #e:Ljava/io/IOException;
    .restart local v4       #response:I
    :cond_32
    move v2, v5

    .line 835
    goto :goto_15

    .restart local v2       #go_root:Z
    :cond_34
    move v3, v5

    .line 836
    goto :goto_19

    .line 844
    .restart local v3       #go_up:Z
    :cond_36
    iget-object v5, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    invoke-virtual {v5, v1}, Lcom/samsung/map/MessageFolder;->SetFolder(Ljava/lang/String;)I

    move-result v4

    goto :goto_2d

    .line 846
    :cond_3d
    if-eqz v3, :cond_2d

    .line 847
    if-eqz v1, :cond_49

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 848
    :cond_49
    iget-object v5, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    const-string v6, ".."

    invoke-virtual {v5, v6}, Lcom/samsung/map/MessageFolder;->SetFolder(Ljava/lang/String;)I

    move-result v4

    goto :goto_2d

    .line 850
    :cond_52
    iget-object v5, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    const-string v6, ".."

    invoke-virtual {v5, v6}, Lcom/samsung/map/MessageFolder;->SetFolder(Ljava/lang/String;)I

    move-result v4

    .line 851
    const/16 v5, 0xa0

    if-ne v4, v5, :cond_2d

    .line 852
    iget-object v5, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->messageFolder:Lcom/samsung/map/MessageFolder;

    invoke-virtual {v5, v1}, Lcom/samsung/map/MessageFolder;->SetFolder(Ljava/lang/String;)I

    move-result v4

    goto :goto_2d
.end method

.method public preStart()V
    .registers 5

    .prologue
    .line 337
    :try_start_0
    new-instance v1, Ljavax/obex/ServerSession;

    iget-object v2, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mTransport:Lcom/samsung/map/BluetoothMapObexTransport;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v1, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mSession:Ljavax/obex/ServerSession;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 341
    :goto_a
    return-void

    .line 338
    :catch_b
    move-exception v0

    .line 339
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtMapObexServer"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public start(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mCallback:Landroid/os/Handler;

    .line 349
    return-void
.end method

.method public stop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 357
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_f

    .line 359
    :try_start_5
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 360
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mTransport:Lcom/samsung/map/BluetoothMapObexTransport;

    invoke-virtual {v1}, Lcom/samsung/map/BluetoothMapObexTransport;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_14

    .line 365
    :cond_f
    :goto_f
    iput-object v4, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mCallback:Landroid/os/Handler;

    .line 366
    iput-object v4, p0, Lcom/samsung/map/BluetoothMapObexServerSession;->mSession:Ljavax/obex/ServerSession;

    .line 367
    return-void

    .line 361
    :catch_14
    move-exception v0

    .line 362
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close mTransport error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
