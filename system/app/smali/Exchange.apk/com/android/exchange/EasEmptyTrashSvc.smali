.class public Lcom/android/exchange/EasEmptyTrashSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasEmptyTrashSvc.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 5
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 92
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 98
    return-void
.end method

.method private emptyTrash()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0xc8

    const/16 v12, 0x64

    .line 561
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 567
    const/4 v4, 0x0

    .line 573
    .local v4, result:I
    invoke-direct {p0, v14, v14}, Lcom/android/exchange/EasEmptyTrashSvc;->makeEmptyTrashRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 576
    .local v2, res:Lorg/apache/http/HttpResponse;
    if-nez v2, :cond_18

    .line 579
    const/4 v4, 0x0

    move v5, v4

    .line 870
    .end local v4           #result:I
    .local v5, result:I
    :goto_17
    return v5

    .line 591
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_18
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 597
    .local v0, code:I
    const-string v8, "emptyTrash(): sendHttpClientPost HTTP response code: "

    invoke-virtual {p0, v8, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 603
    if-ne v0, v13, :cond_a7

    .line 609
    invoke-direct {p0, v2}, Lcom/android/exchange/EasEmptyTrashSvc;->parseEmptyTrashResponse(Lorg/apache/http/HttpResponse;)I

    move-result v6

    .line 612
    .local v6, status:I
    sparse-switch v6, :sswitch_data_c4

    .line 798
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 801
    const/16 v4, 0x17

    .line 825
    :goto_36
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v4, v12}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .end local v6           #status:I
    :goto_3d
    move v5, v4

    .line 870
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_17

    .line 621
    .end local v5           #result:I
    .restart local v4       #result:I
    .restart local v6       #status:I
    :sswitch_3f
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/exchange/EasEmptyTrashSvc;->makeEmptyTrashRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 627
    .local v3, resSecondRequest:Lorg/apache/http/HttpResponse;
    if-nez v3, :cond_4c

    .line 630
    const/4 v4, 0x0

    move v5, v4

    .line 633
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_17

    .line 642
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_4c
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 645
    .local v1, codeSecondRequest:I
    const-string v8, "emptyTrash(): sendHttpClientPost HTTP response code: "

    invoke-virtual {p0, v8, v1}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 654
    if-ne v0, v13, :cond_80

    .line 657
    invoke-direct {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->parseEmptyTrashResponse(Lorg/apache/http/HttpResponse;)I

    move-result v7

    .line 660
    .local v7, statusSecondRequest:I
    packed-switch v7, :pswitch_data_ce

    .line 699
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 702
    const/16 v4, 0x17

    .line 726
    :goto_6a
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v4, v12}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto :goto_3d

    .line 666
    :pswitch_72
    const/4 v4, 0x0

    .line 669
    goto :goto_3d

    .line 705
    :cond_74
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 708
    const/16 v4, 0x16

    goto :goto_6a

    .line 714
    :cond_7d
    const/16 v4, 0x15

    goto :goto_6a

    .line 738
    .end local v7           #statusSecondRequest:I
    :cond_80
    const/16 v4, 0x15

    .line 744
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 747
    const/16 v4, 0x16

    .line 753
    :cond_8a
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v4, v12}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto :goto_3d

    .line 771
    .end local v1           #codeSecondRequest:I
    .end local v3           #resSecondRequest:Lorg/apache/http/HttpResponse;
    :sswitch_92
    const/4 v4, 0x0

    .line 774
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v4, v12}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto :goto_3d

    .line 804
    :cond_9b
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_a4

    .line 807
    const/16 v4, 0x16

    goto :goto_36

    .line 813
    :cond_a4
    const/16 v4, 0x15

    goto :goto_36

    .line 837
    .end local v6           #status:I
    :cond_a7
    const/16 v4, 0x15

    .line 843
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 846
    const/16 v4, 0x17

    .line 861
    :cond_b1
    :goto_b1
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v4, v12}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 864
    const/4 v4, 0x0

    goto :goto_3d

    .line 849
    :cond_ba
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 852
    const/16 v4, 0x16

    goto :goto_b1

    .line 612
    nop

    :sswitch_data_c4
    .sparse-switch
        0x0 -> :sswitch_92
        0x19 -> :sswitch_3f
    .end sparse-switch

    .line 660
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_72
    .end packed-switch
.end method

.method private emptyTrashCb(JII)V
    .registers 6
    .parameter "accId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 110
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->emptyTrashStatus(JII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 122
    :goto_7
    return-void

    .line 113
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private makeEmptyTrashRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 5
    .parameter "login"
    .parameter "pass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 540
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/exchange/EasEmptyTrashSvc;->prepareCommand(Lcom/android/exchange/adapter/Serializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-direct {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->sendCommand(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method private parseEmptyTrashResponse(Lorg/apache/http/HttpResponse;)I
    .registers 12
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 384
    const/16 v5, 0x15

    .line 390
    .local v5, ret_value:I
    if-eqz p1, :cond_57

    .line 393
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 423
    .local v0, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v4, v6

    .line 426
    .local v4, len:I
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 429
    .local v3, is:Ljava/io/InputStream;
    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentLength = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ltz v4, :cond_58

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_24
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    if-eqz v3, :cond_6e

    .line 444
    :try_start_31
    new-instance v2, Lcom/android/exchange/adapter/ItemOperationsParser;

    new-instance v6, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    invoke-direct {v6, p0}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v2, v3, v6}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 450
    .local v2, iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 453
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatus()I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_5b

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4e} :catch_6a

    move-result-wide v6

    const-wide/high16 v8, 0x402c

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_5b

    .line 459
    const/16 v5, 0x19

    .line 519
    .end local v0           #e:Lorg/apache/http/HttpEntity;
    .end local v2           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #len:I
    :cond_57
    :goto_57
    return v5

    .line 429
    .restart local v0       #e:Lorg/apache/http/HttpEntity;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #len:I
    :cond_58
    const-string v6, "Unknown"

    goto :goto_24

    .line 462
    .restart local v2       #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    :cond_5b
    :try_start_5b
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatus()I
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_6a

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_64

    .line 465
    const/4 v5, 0x0

    goto :goto_57

    .line 471
    :cond_64
    const/high16 v5, 0x1

    goto :goto_57

    .line 486
    :cond_67
    const/high16 v5, 0x1

    goto :goto_57

    .line 492
    .end local v2           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    :catch_6a
    move-exception v1

    .line 495
    .local v1, ioe:Ljava/io/IOException;
    const/high16 v5, 0x1

    .line 498
    goto :goto_57

    .line 504
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_6e
    const/16 v5, 0x15

    goto :goto_57
.end method

.method private prepareCommand(Lcom/android/exchange/adapter/Serializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "s"
    .parameter "login"
    .parameter "pass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    if-eqz p1, :cond_58

    .line 137
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_58

    .line 143
    const/16 v0, 0x505

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x512

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x508

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x513

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 155
    if-eqz p2, :cond_49

    if-eqz p3, :cond_49

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_49

    .line 158
    const/16 v0, 0x514

    invoke-virtual {p1, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 161
    const/16 v0, 0x515

    invoke-virtual {p1, v0, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 167
    :cond_49
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 182
    :cond_58
    return-void
.end method

.method private sendCommand(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpResponse;
    .registers 16
    .parameter "s"

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 191
    const/4 v5, 0x0

    .line 194
    .local v5, ret_value:Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    .line 200
    .local v2, commandType:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x4028

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_14

    .line 203
    const-string v2, "ItemOperations"

    .line 212
    :cond_14
    if-eqz p1, :cond_42

    .line 221
    :try_start_16
    sget-boolean v7, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v7, :cond_36

    .line 225
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "emptyTrash(): Wbxml:"

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    .line 231
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 234
    .local v1, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/exchange/adapter/LogAdapter;

    invoke-direct {v4, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 237
    .local v4, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 245
    .end local v0           #b:[B
    .end local v1           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v4           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_36
    if-nez v2, :cond_3a

    .line 246
    const/4 v7, 0x0

    .line 354
    :goto_39
    return-object v7

    .line 252
    :cond_3a
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lcom/android/exchange/EasEmptyTrashSvc;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    :try_end_41
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_41} :catch_44
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_6e

    move-result-object v5

    :cond_42
    :goto_42
    move-object v7, v5

    .line 354
    goto :goto_39

    .line 258
    :catch_44
    move-exception v6

    .line 279
    .local v6, ste:Ljava/net/SocketTimeoutException;
    new-array v7, v12, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "emptyTrash(): Exception obtained: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 282
    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/high16 v9, 0x6

    invoke-direct {p0, v7, v8, v9, v13}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 297
    const/4 v5, 0x0

    .line 342
    goto :goto_42

    .line 306
    .end local v6           #ste:Ljava/net/SocketTimeoutException;
    :catch_6e
    move-exception v3

    .line 318
    .local v3, e:Ljava/lang/Exception;
    new-array v7, v12, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "emptyTrash(): Exception obtained: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 321
    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, -0x3

    invoke-direct {p0, v7, v8, v9, v13}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 336
    const/4 v5, 0x0

    goto :goto_42
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 891
    invoke-virtual {p0}, Lcom/android/exchange/EasEmptyTrashSvc;->setupService()Z

    .line 900
    const/4 v3, 0x0

    :try_start_9
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 906
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4028

    cmpg-double v3, v3, v5

    if-gez v3, :cond_4b

    .line 918
    const/4 v1, 0x0

    .line 921
    .local v1, result:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, -0x2

    const/16 v6, 0x64

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 933
    :goto_26
    packed-switch v1, :pswitch_data_1e4

    .line 972
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_11d
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_9 .. :try_end_2c} :catch_54
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2c} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2c} :catch_e7

    .line 1017
    :goto_2c
    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v8

    const-string v4, ": sync finished"

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 1020
    const-string v3, "OoB exited with status "

    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 1026
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 1029
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1ee

    .line 1104
    .end local v1           #result:I
    :goto_4a
    :pswitch_4a
    return-void

    .line 927
    :cond_4b
    :try_start_4b
    invoke-direct {p0}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrash()I

    move-result v1

    .restart local v1       #result:I
    goto :goto_26

    .line 942
    :pswitch_50
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_11d
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_4b .. :try_end_53} :catch_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_53} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_53} :catch_e7

    goto :goto_2c

    .line 981
    .end local v1           #result:I
    :catch_54
    move-exception v0

    .line 984
    .local v0, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :try_start_55
    const-string v3, "DeviceAccessPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught Exceptoin, Device is blocked or quarantined "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/DeviceAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 993
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v3, v4, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V
    :try_end_7d
    .catchall {:try_start_55 .. :try_end_7d} :catchall_11d

    .line 1017
    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v8

    const-string v4, ": sync finished"

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 1020
    const-string v3, "OoB exited with status "

    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 1026
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 1029
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1f8

    :pswitch_9b
    goto :goto_4a

    .line 1035
    :pswitch_9c
    const/16 v2, 0x17

    .line 1056
    .local v2, status:I
    sget-boolean v3, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_175

    .line 1059
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    .end local v0           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :goto_a8
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    goto :goto_4a

    .line 954
    .end local v2           #status:I
    .restart local v1       #result:I
    :pswitch_ac
    const/4 v3, 0x2

    :try_start_ad
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_af
    .catchall {:try_start_ad .. :try_end_af} :catchall_11d
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_ad .. :try_end_af} :catch_54
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_af} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_af} :catch_e7

    goto/16 :goto_2c

    .line 996
    .end local v1           #result:I
    :catch_b1
    move-exception v0

    .line 999
    .local v0, e:Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_b3
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_11d

    .line 1017
    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v8

    const-string v4, ": sync finished"

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 1020
    const-string v3, "OoB exited with status "

    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 1026
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 1029
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_202

    :pswitch_d3
    goto/16 :goto_4a

    .line 1035
    :pswitch_d5
    const/16 v2, 0x17

    .line 1056
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_191

    .line 1059
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    goto :goto_a8

    .line 963
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #status:I
    .restart local v1       #result:I
    :pswitch_e2
    const/4 v3, 0x3

    :try_start_e3
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_e5
    .catchall {:try_start_e3 .. :try_end_e5} :catchall_11d
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_e3 .. :try_end_e5} :catch_54
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e5} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e5} :catch_e7

    goto/16 :goto_2c

    .line 1002
    .end local v1           #result:I
    :catch_e7
    move-exception v0

    .line 1005
    .local v0, e:Ljava/lang/Exception;
    :try_start_e8
    const-string v3, "Exception caught in EasEmptyTrashSvc"

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1008
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_f0
    .catchall {:try_start_e8 .. :try_end_f0} :catchall_11d

    .line 1017
    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v8

    const-string v4, ": sync finished"

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 1020
    const-string v3, "OoB exited with status "

    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 1026
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 1029
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_20c

    :pswitch_10e
    goto/16 :goto_4a

    .line 1035
    :pswitch_110
    const/16 v2, 0x17

    .line 1056
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_1aa

    .line 1059
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    goto :goto_a8

    .line 1014
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #status:I
    :catchall_11d
    move-exception v3

    .line 1017
    new-array v4, v9, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, ": sync finished"

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 1020
    const-string v4, "OoB exited with status "

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v4, v5}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 1026
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 1029
    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v4, :pswitch_data_216

    .line 1014
    :goto_13c
    :pswitch_13c
    throw v3

    .line 1035
    :pswitch_13d
    const/16 v2, 0x17

    .line 1056
    .restart local v2       #status:I
    sget-boolean v4, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v4, :cond_156

    .line 1059
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    goto :goto_13c

    .line 1089
    .end local v2           #status:I
    :pswitch_14d
    const/4 v2, 0x3

    .line 1092
    .restart local v2       #status:I
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v4, v5, v2, v10}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto :goto_13c

    .line 1065
    :cond_156
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 1068
    sget-object v4, Lcom/android/exchange/EasEmptyTrashSvc;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1071
    sput-boolean v7, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto :goto_13c

    .line 1089
    .end local v2           #status:I
    .local v0, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :pswitch_16b
    const/4 v2, 0x3

    .line 1092
    .restart local v2       #status:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .end local v0           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :goto_170
    invoke-direct {p0, v3, v4, v2, v10}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto/16 :goto_4a

    .line 1065
    .restart local v0       #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :cond_175
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 1068
    sget-object v3, Lcom/android/exchange/EasEmptyTrashSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1071
    .end local v0           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :goto_187
    sput-boolean v7, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto/16 :goto_4a

    .line 1089
    .end local v2           #status:I
    .local v0, e:Ljava/io/IOException;
    :pswitch_18b
    const/4 v2, 0x3

    .line 1092
    .restart local v2       #status:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto :goto_170

    .line 1065
    :cond_191
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 1068
    sget-object v3, Lcom/android/exchange/EasEmptyTrashSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_187

    .line 1089
    .end local v2           #status:I
    .local v0, e:Ljava/lang/Exception;
    :pswitch_1a4
    const/4 v2, 0x3

    .line 1092
    .restart local v2       #status:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto :goto_170

    .line 1065
    :cond_1aa
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 1068
    sget-object v3, Lcom/android/exchange/EasEmptyTrashSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_187

    .line 1035
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #status:I
    .restart local v1       #result:I
    :pswitch_1bd
    const/16 v2, 0x17

    .line 1056
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_1d1

    .line 1059
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    goto/16 :goto_a8

    .line 1089
    .end local v2           #status:I
    :pswitch_1cb
    const/4 v2, 0x3

    .line 1092
    .restart local v2       #status:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto :goto_170

    .line 1065
    :cond_1d1
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 1068
    sget-object v3, Lcom/android/exchange/EasEmptyTrashSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_187

    .line 933
    :pswitch_data_1e4
    .packed-switch 0x15
        :pswitch_e2
        :pswitch_ac
        :pswitch_50
    .end packed-switch

    .line 1029
    :pswitch_data_1ee
    .packed-switch 0x4
        :pswitch_1bd
        :pswitch_4a
        :pswitch_1cb
    .end packed-switch

    :pswitch_data_1f8
    .packed-switch 0x4
        :pswitch_9c
        :pswitch_9b
        :pswitch_16b
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x4
        :pswitch_d5
        :pswitch_d3
        :pswitch_18b
    .end packed-switch

    :pswitch_data_20c
    .packed-switch 0x4
        :pswitch_110
        :pswitch_10e
        :pswitch_1a4
    .end packed-switch

    :pswitch_data_216
    .packed-switch 0x4
        :pswitch_13d
        :pswitch_13c
        :pswitch_14d
    .end packed-switch
.end method
