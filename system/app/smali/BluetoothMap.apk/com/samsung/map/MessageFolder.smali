.class public Lcom/samsung/map/MessageFolder;
.super Ljava/lang/Object;
.source "MessageFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/map/MessageFolder$PushMessageResponse;,
        Lcom/samsung/map/MessageFolder$GetMessageResponse;,
        Lcom/samsung/map/MessageFolder$MessageListingResponse;,
        Lcom/samsung/map/MessageFolder$FolderListingResponse;
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected currentFolder:Lcom/samsung/map/FolderEntry;

.field protected root:Lcom/samsung/map/FolderEntry;


# direct methods
.method constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object v4, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    .line 224
    new-instance v1, Lcom/samsung/map/FolderEntry;

    const-string v2, ""

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/map/FolderEntry;-><init>(Ljava/lang/String;ILcom/samsung/map/FolderEntry;)V

    iput-object v1, p0, Lcom/samsung/map/MessageFolder;->root:Lcom/samsung/map/FolderEntry;

    .line 225
    iget-object v1, p0, Lcom/samsung/map/MessageFolder;->root:Lcom/samsung/map/FolderEntry;

    const-string v2, "TELECOM"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/map/FolderEntry;->addFolder(Ljava/lang/String;I)Lcom/samsung/map/FolderEntry;

    move-result-object v0

    .line 226
    .local v0, tmpfolder:Lcom/samsung/map/FolderEntry;
    const-string v1, "MSG"

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/FolderEntry;->addFolder(Ljava/lang/String;I)Lcom/samsung/map/FolderEntry;

    move-result-object v0

    .line 227
    const-string v1, "INBOX"

    const/4 v2, -0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/FolderEntry;->addFolder(Ljava/lang/String;I)Lcom/samsung/map/FolderEntry;

    .line 228
    const-string v1, "OUTBOX"

    const/4 v2, -0x5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/FolderEntry;->addFolder(Ljava/lang/String;I)Lcom/samsung/map/FolderEntry;

    .line 229
    const-string v1, "SENT"

    const/4 v2, -0x6

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/FolderEntry;->addFolder(Ljava/lang/String;I)Lcom/samsung/map/FolderEntry;

    .line 230
    const-string v1, "DELETED"

    const/4 v2, -0x7

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/FolderEntry;->addFolder(Ljava/lang/String;I)Lcom/samsung/map/FolderEntry;

    .line 231
    const-string v1, "DRAFT"

    const/4 v2, -0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/FolderEntry;->addFolder(Ljava/lang/String;I)Lcom/samsung/map/FolderEntry;

    .line 232
    iget-object v1, p0, Lcom/samsung/map/MessageFolder;->root:Lcom/samsung/map/FolderEntry;

    iput-object v1, p0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    .line 233
    return-void
.end method

.method public static baseToMapID(II)I
    .registers 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 391
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 394
    :cond_9
    shl-int/lit8 p0, p0, 0x4

    .line 400
    .end local p0
    :cond_b
    :goto_b
    return p0

    .line 395
    .restart local p0
    :cond_c
    const/16 v0, 0x8

    if-ne p1, v0, :cond_15

    .line 396
    shl-int/lit8 v0, p0, 0x4

    add-int/lit8 p0, v0, 0x1

    goto :goto_b

    .line 397
    :cond_15
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 398
    shl-int/lit8 v0, p0, 0x4

    add-int/lit8 p0, v0, 0x2

    goto :goto_b
.end method

.method public static getMsgType(I)I
    .registers 3
    .parameter "Handle"

    .prologue
    .line 409
    and-int/lit8 v0, p0, 0xf

    .line 411
    .local v0, type:I
    packed-switch v0, :pswitch_data_e

    .line 419
    const/4 v1, -0x1

    :goto_6
    return v1

    .line 413
    :pswitch_7
    const/4 v1, 0x3

    goto :goto_6

    .line 415
    :pswitch_9
    const/16 v1, 0x8

    goto :goto_6

    .line 417
    :pswitch_c
    const/4 v1, 0x4

    goto :goto_6

    .line 411
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static mapIdToBase(I)I
    .registers 2
    .parameter "msgId"

    .prologue
    .line 405
    shr-int/lit8 v0, p0, 0x4

    return v0
.end method


# virtual methods
.method public GetMessage(IZII)Lcom/samsung/map/MessageFolder$GetMessageResponse;
    .registers 6
    .parameter "Handle"
    .parameter "Attachment"
    .parameter "Charset"
    .parameter "FractionRequest"

    .prologue
    .line 356
    new-instance v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;

    invoke-direct {v0, p0}, Lcom/samsung/map/MessageFolder$GetMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    return-object v0
.end method

.method public PushMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;
    .registers 7
    .parameter "folder"
    .parameter "Transparent"
    .parameter "Retry"
    .parameter "Charset"
    .parameter "bMessage"

    .prologue
    .line 381
    new-instance v0, Lcom/samsung/map/MessageFolder$PushMessageResponse;

    invoke-direct {v0, p0}, Lcom/samsung/map/MessageFolder$PushMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    return-object v0
.end method

.method public SetFolder(Ljava/lang/String;)I
    .registers 7
    .parameter "name"

    .prologue
    const/16 v3, 0xc4

    const/16 v2, 0xa0

    .line 245
    if-nez p1, :cond_7

    .line 267
    :goto_6
    return v2

    .line 248
    :cond_7
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 249
    :cond_17
    iget-object v3, p0, Lcom/samsung/map/MessageFolder;->root:Lcom/samsung/map/FolderEntry;

    iput-object v3, p0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    goto :goto_6

    .line 253
    :cond_1c
    const-string v4, ".."

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 254
    iget-object v4, p0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    invoke-virtual {v4}, Lcom/samsung/map/FolderEntry;->getParent()Lcom/samsung/map/FolderEntry;

    move-result-object v1

    .line 255
    .local v1, parent:Lcom/samsung/map/FolderEntry;
    if-nez v1, :cond_2e

    move v2, v3

    .line 256
    goto :goto_6

    .line 258
    :cond_2e
    iput-object v1, p0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    goto :goto_6

    .line 261
    .end local v1           #parent:Lcom/samsung/map/FolderEntry;
    :cond_31
    iget-object v4, p0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    invoke-virtual {v4, p1}, Lcom/samsung/map/FolderEntry;->cd(Ljava/lang/String;)Lcom/samsung/map/FolderEntry;

    move-result-object v0

    .line 263
    .local v0, folder:Lcom/samsung/map/FolderEntry;
    if-nez v0, :cond_3b

    move v2, v3

    .line 264
    goto :goto_6

    .line 266
    :cond_3b
    iput-object v0, p0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    goto :goto_6
.end method

.method public SetStatus(III)I
    .registers 5
    .parameter "handle"
    .parameter "StatusIndicator"
    .parameter "StatusValue"

    .prologue
    .line 360
    const/16 v0, 0xd1

    return v0
.end method

.method public Update()I
    .registers 2

    .prologue
    .line 385
    const/16 v0, 0xd1

    return v0
.end method

.method public final getFolderListing(II)Lcom/samsung/map/MessageFolder$FolderListingResponse;
    .registers 5
    .parameter "MaxListCount"
    .parameter "ListStartOffset"

    .prologue
    .line 286
    new-instance v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;

    invoke-direct {v0, p0}, Lcom/samsung/map/MessageFolder$FolderListingResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    .line 287
    .local v0, flr:Lcom/samsung/map/MessageFolder$FolderListingResponse;
    iget-object v1, p0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/map/FolderEntry;->getListing(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->listing:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/map/FolderEntry;->getListingSize(II)I

    move-result v1

    iput v1, v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->FolderListingSize:I

    .line 290
    const/16 v1, 0xa0

    iput v1, v0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->status:I

    .line 291
    return-object v0
.end method

.method public getMessageListing(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .registers 14
    .parameter "folder"
    .parameter "MaxListCount"
    .parameter "ListStartOffset"
    .parameter "SubjectLength"
    .parameter "ParameterMask"
    .parameter "FilterMessageType"
    .parameter "FilterPeriodBegin"
    .parameter "FilterPeriodEnd"
    .parameter "FilterReadStatus"
    .parameter "FilterRecipient"
    .parameter "FilterOriginator"
    .parameter "FilterPriority"

    .prologue
    .line 318
    new-instance v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;

    invoke-direct {v0, p0}, Lcom/samsung/map/MessageFolder$MessageListingResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    .line 241
    return-void
.end method

.method writeAttachmentToBuffer(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)Z
    .registers 10
    .parameter "buffer"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 424
    if-nez p1, :cond_4

    .line 460
    :cond_3
    :goto_3
    return v5

    .line 425
    :cond_4
    const/4 v2, 0x0

    .line 427
    .local v2, is:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v4, openFrom:Ljava/io/File;
    :try_start_a
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #is:Ljava/io/FileInputStream;
    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_2c

    .line 437
    .restart local v2       #is:Ljava/io/FileInputStream;
    if-eqz v2, :cond_3

    .line 440
    const/16 v5, 0x100

    :try_start_13
    new-array v1, v5, [B

    .line 441
    .local v1, in:[B
    const/4 v3, 0x0

    .line 443
    .local v3, len:I
    :cond_16
    const/4 v5, 0x0

    const/16 v6, 0x100

    invoke-virtual {v2, v1, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 444
    if-lez v3, :cond_23

    .line 445
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_23} :catch_31

    .line 447
    :cond_23
    if-gtz v3, :cond_16

    .line 451
    if-eqz v2, :cond_2a

    .line 453
    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_41

    .line 460
    .end local v1           #in:[B
    .end local v3           #len:I
    :cond_2a
    :goto_2a
    const/4 v5, 0x1

    goto :goto_3

    .line 432
    .end local v2           #is:Ljava/io/FileInputStream;
    :catch_2c
    move-exception v0

    .line 433
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 448
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_31
    move-exception v5

    .line 451
    if-eqz v2, :cond_2a

    .line 453
    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_2a

    .line 454
    :catch_38
    move-exception v5

    goto :goto_2a

    .line 451
    :catchall_3a
    move-exception v5

    if-eqz v2, :cond_40

    .line 453
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_43

    .line 456
    :cond_40
    :goto_40
    throw v5

    .line 454
    .restart local v1       #in:[B
    .restart local v3       #len:I
    :catch_41
    move-exception v5

    goto :goto_2a

    .end local v1           #in:[B
    .end local v3           #len:I
    :catch_43
    move-exception v6

    goto :goto_40
.end method
