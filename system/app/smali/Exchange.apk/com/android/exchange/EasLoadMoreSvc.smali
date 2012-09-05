.class public Lcom/android/exchange/EasLoadMoreSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasLoadMoreSvc.java"


# static fields
.field public static sRemoveIrmProtectionFlag:I


# instance fields
.field public eas12p:Z

.field public mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private userCancelledFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const/4 v0, -0x1

    sput v0, Lcom/android/exchange/EasLoadMoreSvc;->sRemoveIrmProtectionFlag:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 6
    .parameter "_context"
    .parameter "_msg"

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 78
    iput-boolean v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->eas12p:Z

    .line 110
    iput-object p2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 112
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 118
    iput-boolean v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    .line 122
    return-void
.end method

.method private loadMore()I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .line 588
    const/4 v14, 0x0

    .line 592
    .local v14, result:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/exchange/EasLoadMoreSvc;->makeLoadMoreRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 596
    .local v12, res:Lorg/apache/http/HttpResponse;
    if-nez v12, :cond_25

    .line 600
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    if-nez v2, :cond_22

    .line 602
    const/high16 v14, 0x4

    :goto_20
    move v15, v14

    .line 864
    .end local v14           #result:I
    .local v15, result:I
    :goto_21
    return v15

    .line 606
    .end local v15           #result:I
    .restart local v14       #result:I
    :cond_22
    const/high16 v14, 0x10

    goto :goto_20

    .line 622
    :cond_25
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 624
    .local v10, code:I
    const-string v2, "loadMore(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    .line 628
    const/16 v2, 0xc8

    if-ne v10, v2, :cond_15d

    .line 642
    :try_start_38
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exchange/EasLoadMoreSvc;->parseLoadMoreResponse(Lorg/apache/http/HttpResponse;)I
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_7f

    move-result v16

    .line 646
    .local v16, status:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasLoadMoreSvc;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 648
    :try_start_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_55

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 652
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 656
    :cond_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_43 .. :try_end_56} :catchall_187

    .line 662
    sparse-switch v16, :sswitch_data_18a

    .line 822
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/exchange/EasLoadMoreSvc;->isProvisionError(I)Z

    move-result v2

    if-eqz v2, :cond_159

    .line 824
    const/16 v14, 0x17

    .line 836
    :goto_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v14, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .line 840
    :cond_70
    :goto_70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v14, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .end local v16           #status:I
    :goto_7d
    move v15, v14

    .line 864
    .end local v14           #result:I
    .restart local v15       #result:I
    goto :goto_21

    .line 646
    .end local v15           #result:I
    .restart local v14       #result:I
    :catchall_7f
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasLoadMoreSvc;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 648
    :try_start_85
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasLoadMoreSvc;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v4, :cond_97

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasLoadMoreSvc;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 652
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exchange/EasLoadMoreSvc;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 656
    :cond_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_85 .. :try_end_98} :catchall_184

    .line 646
    throw v2

    .line 668
    .restart local v16       #status:I
    :sswitch_99
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/exchange/EasLoadMoreSvc;->makeLoadMoreRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 672
    .local v13, resSecondRequest:Lorg/apache/http/HttpResponse;
    if-nez v13, :cond_bd

    .line 674
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    if-nez v2, :cond_ba

    .line 680
    const/4 v14, 0x1

    .line 690
    :goto_aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v14, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    move v15, v14

    .line 692
    .end local v14           #result:I
    .restart local v15       #result:I
    goto/16 :goto_21

    .line 686
    .end local v15           #result:I
    .restart local v14       #result:I
    :cond_ba
    const/high16 v14, 0x10

    goto :goto_aa

    .line 700
    :cond_bd
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 702
    .local v11, codeSecondRequest:I
    const-string v2, "loadMore(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    .line 706
    const/16 v2, 0xc8

    if-ne v10, v2, :cond_70

    .line 708
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exchange/EasLoadMoreSvc;->parseLoadMoreResponse(Lorg/apache/http/HttpResponse;)I

    move-result v17

    .line 712
    .local v17, statusSecondRequest:I
    packed-switch v17, :pswitch_data_194

    .line 736
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/exchange/EasLoadMoreSvc;->isProvisionError(I)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 738
    const/16 v14, 0x17

    .line 750
    :goto_e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v14, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    move v15, v14

    .line 752
    .end local v14           #result:I
    .restart local v15       #result:I
    goto/16 :goto_21

    .line 716
    .end local v15           #result:I
    .restart local v14       #result:I
    :pswitch_f3
    const/4 v14, 0x0

    .line 718
    goto/16 :goto_70

    .line 742
    :cond_f6
    const/high16 v14, 0x3

    goto :goto_e3

    .line 770
    .end local v11           #codeSecondRequest:I
    .end local v13           #resSecondRequest:Lorg/apache/http/HttpResponse;
    .end local v17           #statusSecondRequest:I
    :sswitch_f9
    sget v2, Lcom/android/exchange/EasLoadMoreSvc;->sRemoveIrmProtectionFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_156

    .line 772
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_109

    .line 774
    const-string v2, "IRM"

    const-string v3, "EasLoadmoresvc: removing irm: done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_109
    sget-object v2, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "IRMLicenseFlag"

    aput-object v6, v4, v5

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 780
    .local v9, c:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 782
    .local v8, IRMLicenseFlag:I
    if-eqz v9, :cond_14c

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_14c

    .line 784
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 786
    const-string v2, "IRMLicenseFlag"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 790
    :cond_14c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 792
    const/4 v2, -0x1

    if-eq v8, v2, :cond_70

    .line 794
    const/16 v14, 0x27

    goto/16 :goto_70

    .line 802
    .end local v8           #IRMLicenseFlag:I
    .end local v9           #c:Landroid/database/Cursor;
    :cond_156
    const/4 v14, 0x0

    .line 804
    goto/16 :goto_70

    .line 828
    :cond_159
    const/high16 v14, 0x3

    goto/16 :goto_63

    .line 846
    .end local v16           #status:I
    :cond_15d
    const/16 v14, 0x15

    .line 848
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/exchange/EasLoadMoreSvc;->isProvisionError(I)Z

    move-result v2

    if-eqz v2, :cond_179

    .line 850
    const/16 v14, 0x17

    .line 858
    :cond_169
    :goto_169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v14, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .line 860
    const/4 v14, 0x0

    goto/16 :goto_7d

    .line 852
    :cond_179
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/exchange/EasLoadMoreSvc;->isAuthError(I)Z

    move-result v2

    if-eqz v2, :cond_169

    .line 854
    const/16 v14, 0x16

    goto :goto_169

    .line 656
    :catchall_184
    move-exception v2

    :try_start_185
    monitor-exit v3
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_184

    throw v2

    .restart local v16       #status:I
    :catchall_187
    move-exception v2

    :try_start_188
    monitor-exit v3
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_187

    throw v2

    .line 662
    :sswitch_data_18a
    .sparse-switch
        0x0 -> :sswitch_f9
        0x19 -> :sswitch_99
    .end sparse-switch

    .line 712
    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_f3
    .end packed-switch
.end method

.method private loadMoreCb(JII)V
    .registers 6
    .parameter "msgId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadMoreStatus(JII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 138
    :goto_7
    return-void

    .line 132
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private makeLoadMoreRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 5
    .parameter "username"
    .parameter "pass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 384
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/exchange/EasLoadMoreSvc;->prepareCommand(Lcom/android/exchange/adapter/Serializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->sendCommand(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method private parseLoadMoreResponse(Lorg/apache/http/HttpResponse;)I
    .registers 20
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v11, 0x0

    .line 416
    .local v11, ret_value:I
    if-eqz p1, :cond_66

    .line 418
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 426
    .local v1, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .local v8, is:Ljava/io/InputStream;
    if-eqz v8, :cond_b8

    .line 434
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v4

    .line 436
    .local v4, header:Lorg/apache/http/Header;
    const/4 v13, 0x0

    .line 438
    .local v13, value:Ljava/lang/String;
    if-eqz v4, :cond_2a

    .line 440
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 442
    if-eqz v13, :cond_2a

    const-string v14, "gzip"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2a

    .line 444
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    const/16 v14, 0x2000

    invoke-direct {v9, v8, v14}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local v8           #is:Ljava/io/InputStream;
    .local v9, is:Ljava/io/InputStream;
    move-object v8, v9

    .line 456
    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    :cond_2a
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4028

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_6b

    .line 464
    new-instance v7, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 466
    .local v7, iot:Lcom/android/exchange/adapter/ItemOperationsAdapter;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lcom/android/exchange/adapter/ItemOperationsAdapter;->setMIMERequested(Z)V

    .line 468
    new-instance v6, Lcom/android/exchange/adapter/ItemOperationsParser;

    invoke-direct {v6, v8, v7}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 474
    .local v6, iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v6}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    move-result v14

    if-eqz v14, :cond_69

    .line 476
    invoke-virtual {v6}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatus()I

    move-result v14

    const/16 v15, 0x12

    if-ne v14, v15, :cond_67

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x402c

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_67

    .line 480
    const/16 v11, 0x19

    .line 576
    .end local v1           #e:Lorg/apache/http/HttpEntity;
    .end local v4           #header:Lorg/apache/http/Header;
    .end local v6           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    .end local v7           #iot:Lcom/android/exchange/adapter/ItemOperationsAdapter;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v13           #value:Ljava/lang/String;
    :cond_66
    :goto_66
    return v11

    .line 484
    .restart local v1       #e:Lorg/apache/http/HttpEntity;
    .restart local v4       #header:Lorg/apache/http/Header;
    .restart local v6       #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    .restart local v7       #iot:Lcom/android/exchange/adapter/ItemOperationsAdapter;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v13       #value:Ljava/lang/String;
    :cond_67
    const/4 v11, 0x0

    goto :goto_66

    .line 492
    :cond_69
    const/4 v11, 0x0

    goto :goto_66

    .line 498
    .end local v6           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    .end local v7           #iot:Lcom/android/exchange/adapter/ItemOperationsAdapter;
    :cond_6b
    new-instance v3, Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_72} :catch_8b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_72} :catch_a2

    .line 504
    .local v3, esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    :try_start_72
    invoke-virtual {v3, v8}, Lcom/android/exchange/adapter/EmailSyncAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_75
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_72 .. :try_end_75} :catch_7c
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_8b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_72 .. :try_end_75} :catch_a2

    move-result v14

    if-eqz v14, :cond_7a

    .line 506
    const/4 v11, 0x0

    goto :goto_66

    .line 512
    :cond_7a
    const/4 v11, 0x0

    goto :goto_66

    .line 516
    :catch_7c
    move-exception v2

    .line 522
    .local v2, e1:Lcom/android/exchange/CommandStatusException;
    :try_start_7d
    iget v12, v2, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 524
    .local v12, status:I
    invoke-static {v12}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v14

    if-eqz v14, :cond_8f

    .line 526
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto :goto_66

    .line 552
    .end local v2           #e1:Lcom/android/exchange/CommandStatusException;
    .end local v3           #esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    .end local v12           #status:I
    :catch_8b
    move-exception v5

    .line 554
    .local v5, ioe:Ljava/io/IOException;
    const/high16 v11, 0x3

    .line 560
    goto :goto_66

    .line 528
    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v2       #e1:Lcom/android/exchange/CommandStatusException;
    .restart local v3       #esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    .restart local v12       #status:I
    :cond_8f
    invoke-static {v12}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v14

    if-eqz v14, :cond_a6

    .line 530
    invoke-static {v12}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTooManyPartnerships(I)Z

    move-result v14

    if-eqz v14, :cond_66

    .line 532
    const/16 v14, 0xb

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto :goto_66

    .line 556
    .end local v2           #e1:Lcom/android/exchange/CommandStatusException;
    .end local v3           #esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    .end local v12           #status:I
    :catch_a2
    move-exception v10

    .line 558
    .local v10, ome:Ljava/lang/OutOfMemoryError;
    const/high16 v11, 0x5

    goto :goto_66

    .line 536
    .end local v10           #ome:Ljava/lang/OutOfMemoryError;
    .restart local v2       #e1:Lcom/android/exchange/CommandStatusException;
    .restart local v3       #esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    .restart local v12       #status:I
    :cond_a6
    invoke-static {v12}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 538
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto :goto_66

    .line 542
    :cond_b2
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_b7} :catch_8b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7d .. :try_end_b7} :catch_a2

    goto :goto_66

    .line 566
    .end local v2           #e1:Lcom/android/exchange/CommandStatusException;
    .end local v3           #esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    .end local v4           #header:Lorg/apache/http/Header;
    .end local v12           #status:I
    .end local v13           #value:Ljava/lang/String;
    :cond_b8
    const/16 v11, 0x15

    goto :goto_66
.end method

.method private prepareCommand(Lcom/android/exchange/adapter/Serializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "s"
    .parameter "login"
    .parameter "pass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x12

    const/16 v8, 0xd

    const-wide v6, 0x402c333333333333L

    const/16 v5, 0x22

    const/4 v4, 0x1

    .line 162
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_117

    .line 168
    const/16 v0, 0x505

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x506

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x507

    const-string v2, "Mailbox"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 174
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_d4

    .line 176
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v9, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 178
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v8, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 190
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_52

    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    if-ne v0, v4, :cond_e5

    .line 194
    :cond_52
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "Mime Body requested "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v0, 0x508

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x445

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x446

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 224
    :goto_76
    if-eqz p2, :cond_90

    if-eqz p3, :cond_90

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_90

    .line 226
    const/16 v0, 0x514

    invoke-virtual {p1, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 228
    const/16 v0, 0x515

    invoke-virtual {p1, v0, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 234
    :cond_90
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_a1

    .line 236
    const/16 v0, 0x605

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 240
    :cond_a1
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 242
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_c6

    sget v0, Lcom/android/exchange/EasLoadMoreSvc;->sRemoveIrmProtectionFlag:I

    if-ne v0, v4, :cond_c6

    .line 244
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_bd

    .line 246
    const-string v0, "IRM"

    const-string v1, "Easloadmoresvc: removing irm, adding tag "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_bd
    const/16 v0, 0x618

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 254
    :cond_c6
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 258
    iput-boolean v4, p0, Lcom/android/exchange/EasLoadMoreSvc;->eas12p:Z

    .line 290
    :goto_d3
    return-void

    .line 180
    :cond_d4
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 182
    const/16 v0, 0x3d8

    iget-object v1, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_45

    .line 210
    :cond_e5
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "HTML Body requested "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v0, 0x508

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x445

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x446

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x447

    const/high16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_76

    .line 264
    :cond_117
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x10

    const-string v2, "Email"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v9, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x23

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    goto/16 :goto_d3
.end method

.method private sendCommand(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpResponse;
    .registers 12
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 296
    const/4 v5, 0x0

    .line 298
    .local v5, ret_value:Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    .line 302
    .local v2, commandType:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/exchange/EasLoadMoreSvc;->setGZipEnable(Z)V

    .line 304
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4028

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3d

    .line 306
    const-string v2, "ItemOperations"

    .line 320
    :goto_14
    :try_start_14
    sget-boolean v6, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v6, :cond_34

    .line 322
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "loadMore(): Wbxml:"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    .line 326
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 328
    .local v1, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/exchange/adapter/LogAdapter;

    invoke-direct {v4, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 330
    .local v4, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 338
    .end local v0           #b:[B
    .end local v1           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v4           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_34
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/android/exchange/EasLoadMoreSvc;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3b} :catch_40

    move-result-object v5

    .line 368
    :cond_3c
    :goto_3c
    return-object v5

    .line 310
    :cond_3d
    const-string v2, "Sync"

    goto :goto_14

    .line 340
    :catch_40
    move-exception v3

    .line 352
    .local v3, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 356
    iget-boolean v6, p0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    if-nez v6, :cond_3c

    .line 358
    iget-object v6, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v8, -0x3

    const/16 v9, 0x64

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto :goto_3c
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/android/exchange/EasLoadMoreSvc;->setupService()Z

    .line 886
    :try_start_3
    sget-object v0, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IRMRemovalFlag"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 890
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3a

    .line 892
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 894
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3a

    .line 896
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/exchange/EasLoadMoreSvc;->sRemoveIrmProtectionFlag:I

    .line 902
    :cond_3a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 906
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 908
    invoke-direct {p0}, Lcom/android/exchange/EasLoadMoreSvc;->loadMore()I

    move-result v8

    .line 910
    .local v8, result:I
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadMore returned the result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 912
    sparse-switch v8, :sswitch_data_2f2

    .line 958
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_147
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_3 .. :try_end_6a} :catch_9a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6a} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6a} :catch_10e

    .line 992
    :goto_6a
    :sswitch_6a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadMore finished mExitStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 993
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 995
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    sparse-switch v0, :sswitch_data_30c

    .line 1077
    const-string v0, "Sync ended due to an exception."

    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #result:I
    :goto_92
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->errorLog(Ljava/lang/String;)V

    .line 1085
    :goto_95
    return-void

    .line 918
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #result:I
    :sswitch_96
    const/4 v0, 0x4

    :try_start_97
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_99
    .catchall {:try_start_97 .. :try_end_99} :catchall_147
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_97 .. :try_end_99} :catch_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_99} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_99} :catch_10e

    goto :goto_6a

    .line 966
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #result:I
    :catch_9a
    move-exception v7

    .line 968
    .local v7, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    const/4 v0, 0x6

    :try_start_9c
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 970
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v2, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V
    :try_end_a7
    .catchall {:try_start_9c .. :try_end_a7} :catchall_147

    .line 992
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadMore finished mExitStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 993
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 995
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    sparse-switch v0, :sswitch_data_322

    .line 1077
    const-string v0, "Sync ended due to an exception."

    goto :goto_92

    .line 926
    .end local v7           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #result:I
    :sswitch_d0
    const/4 v0, 0x2

    :try_start_d1
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_d3
    .catchall {:try_start_d1 .. :try_end_d3} :catchall_147
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_d1 .. :try_end_d3} :catch_9a
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d3} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d3} :catch_10e

    goto :goto_6a

    .line 974
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #result:I
    :catch_d4
    move-exception v7

    .line 976
    .local v7, e:Ljava/io/IOException;
    :try_start_d5
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 978
    const-string v0, "IOException caught in EasLoadMoreSvc"

    invoke-virtual {p0, v0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 980
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_e0
    .catchall {:try_start_d5 .. :try_end_e0} :catchall_147

    .line 992
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadMore finished mExitStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 993
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 995
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    sparse-switch v0, :sswitch_data_338

    .line 1077
    const-string v0, "Sync ended due to an exception."

    goto :goto_92

    .line 932
    .end local v7           #e:Ljava/io/IOException;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #result:I
    :sswitch_109
    const/4 v0, 0x3

    :try_start_10a
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_10c
    .catchall {:try_start_10a .. :try_end_10c} :catchall_147
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_10a .. :try_end_10c} :catch_9a
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10c} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10c} :catch_10e

    goto/16 :goto_6a

    .line 982
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #result:I
    :catch_10e
    move-exception v7

    .line 984
    .local v7, e:Ljava/lang/Exception;
    :try_start_10f
    const-string v0, "Exception caught in EasLoadMoreSvc"

    invoke-virtual {p0, v0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 986
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_117
    .catchall {:try_start_10f .. :try_end_117} :catchall_147

    .line 992
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadMore finished mExitStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 993
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 995
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    sparse-switch v0, :sswitch_data_34e

    .line 1077
    const-string v0, "Sync ended due to an exception."

    goto/16 :goto_92

    .line 946
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #result:I
    :sswitch_141
    const/high16 v0, 0x4

    :try_start_143
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_145
    .catchall {:try_start_143 .. :try_end_145} :catchall_147
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_143 .. :try_end_145} :catch_9a
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_145} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_145} :catch_10e

    goto/16 :goto_6a

    .line 990
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #result:I
    :catchall_147
    move-exception v0

    .line 992
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadMore finished mExitStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 993
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 995
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    sparse-switch v1, :sswitch_data_364

    .line 1077
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasLoadMoreSvc;->errorLog(Ljava/lang/String;)V

    .line 990
    :goto_173
    throw v0

    .line 952
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #result:I
    :sswitch_174
    const/high16 v0, 0x3

    :try_start_176
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_178
    .catchall {:try_start_176 .. :try_end_178} :catchall_147
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_176 .. :try_end_178} :catch_9a
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_178} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_178} :catch_10e

    goto/16 :goto_6a

    .line 1001
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #result:I
    :sswitch_17a
    const/16 v9, 0x17

    .line 1015
    .local v9, status:I
    sget-boolean v1, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v1, :cond_1bc

    .line 1017
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    goto :goto_173

    .line 1039
    .end local v9           #status:I
    :sswitch_18c
    const/4 v9, 0x3

    .line 1041
    .restart local v9       #status:I
    iget-object v1, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x3

    const/16 v4, 0x64

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto :goto_173

    .line 1049
    .end local v9           #status:I
    :sswitch_198
    const/4 v9, 0x4

    .line 1051
    .restart local v9       #status:I
    iget-object v1, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x3

    const/16 v4, 0x64

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto :goto_173

    .line 1065
    .end local v9           #status:I
    :sswitch_1a4
    iget-object v1, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/high16 v3, 0x3

    const/16 v4, 0x64

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto :goto_173

    .line 1059
    :sswitch_1b0
    iget-object v1, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/high16 v3, 0x4

    const/16 v4, 0x64

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto :goto_173

    .line 1021
    .restart local v9       #status:I
    :cond_1bc
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 1023
    sget-object v1, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1025
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto :goto_173

    .line 1001
    .end local v9           #status:I
    .local v7, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :sswitch_1d5
    const/16 v9, 0x17

    .line 1015
    .restart local v9       #status:I
    sget-boolean v0, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v0, :cond_21c

    .line 1017
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v2, v0, v1

    .end local v7           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :goto_1e3
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_95

    .line 1039
    .end local v9           #status:I
    .restart local v7       #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :sswitch_1e8
    const/4 v9, 0x3

    .line 1041
    .restart local v9       #status:I
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .end local v7           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :goto_1ed
    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_95

    .line 1049
    .end local v9           #status:I
    .restart local v7       #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :sswitch_1f5
    const/4 v9, 0x4

    .line 1051
    .restart local v9       #status:I
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .end local v7           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :goto_1fa
    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_95

    .line 1065
    .end local v9           #status:I
    .restart local v7       #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :sswitch_202
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .end local v7           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :goto_206
    const/high16 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_95

    .line 1059
    .restart local v7       #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :sswitch_20f
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .end local v7           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :goto_213
    const/high16 v2, 0x4

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_95

    .line 1021
    .restart local v7       #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    .restart local v9       #status:I
    :cond_21c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 1023
    sget-object v0, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1025
    .end local v7           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :goto_231
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto/16 :goto_95

    .line 1001
    .end local v9           #status:I
    .local v7, e:Ljava/io/IOException;
    :sswitch_236
    const/16 v9, 0x17

    .line 1015
    .restart local v9       #status:I
    sget-boolean v0, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v0, :cond_25b

    .line 1017
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v2, v0, v1

    goto :goto_1e3

    .line 1039
    .end local v9           #status:I
    :sswitch_245
    const/4 v9, 0x3

    .line 1041
    .restart local v9       #status:I
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto :goto_1ed

    .line 1049
    .end local v9           #status:I
    :sswitch_24b
    const/4 v9, 0x4

    .line 1051
    .restart local v9       #status:I
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto :goto_1fa

    .line 1065
    .end local v9           #status:I
    :sswitch_251
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto :goto_206

    .line 1059
    :sswitch_256
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto :goto_213

    .line 1021
    .restart local v9       #status:I
    :cond_25b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 1023
    sget-object v0, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_231

    .line 1001
    .end local v9           #status:I
    .local v7, e:Ljava/lang/Exception;
    :sswitch_271
    const/16 v9, 0x17

    .line 1015
    .restart local v9       #status:I
    sget-boolean v0, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v0, :cond_29b

    .line 1017
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v2, v0, v1

    goto/16 :goto_1e3

    .line 1039
    .end local v9           #status:I
    :sswitch_281
    const/4 v9, 0x3

    .line 1041
    .restart local v9       #status:I
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto/16 :goto_1ed

    .line 1049
    .end local v9           #status:I
    :sswitch_288
    const/4 v9, 0x4

    .line 1051
    .restart local v9       #status:I
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto/16 :goto_1fa

    .line 1065
    .end local v9           #status:I
    :sswitch_28f
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto/16 :goto_206

    .line 1059
    :sswitch_295
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto/16 :goto_213

    .line 1021
    .restart local v9       #status:I
    :cond_29b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 1023
    sget-object v0, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_231

    .line 1001
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #status:I
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #result:I
    :sswitch_2b1
    const/16 v9, 0x17

    .line 1015
    .restart local v9       #status:I
    sget-boolean v0, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v0, :cond_2db

    .line 1017
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v2, v0, v1

    goto/16 :goto_1e3

    .line 1039
    .end local v9           #status:I
    :sswitch_2c1
    const/4 v9, 0x3

    .line 1041
    .restart local v9       #status:I
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto/16 :goto_1ed

    .line 1049
    .end local v9           #status:I
    :sswitch_2c8
    const/4 v9, 0x4

    .line 1051
    .restart local v9       #status:I
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto/16 :goto_1fa

    .line 1065
    .end local v9           #status:I
    :sswitch_2cf
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto/16 :goto_206

    .line 1059
    :sswitch_2d5
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto/16 :goto_213

    .line 1021
    .restart local v9       #status:I
    :cond_2db
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 1023
    sget-object v0, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_231

    .line 912
    :sswitch_data_2f2
    .sparse-switch
        0x15 -> :sswitch_109
        0x16 -> :sswitch_d0
        0x17 -> :sswitch_96
        0x30000 -> :sswitch_174
        0x40000 -> :sswitch_141
        0x100000 -> :sswitch_6a
    .end sparse-switch

    .line 995
    :sswitch_data_30c
    .sparse-switch
        0x4 -> :sswitch_2b1
        0x6 -> :sswitch_2c1
        0x7 -> :sswitch_2c8
        0x30000 -> :sswitch_2cf
        0x40000 -> :sswitch_2d5
    .end sparse-switch

    :sswitch_data_322
    .sparse-switch
        0x4 -> :sswitch_1d5
        0x6 -> :sswitch_1e8
        0x7 -> :sswitch_1f5
        0x30000 -> :sswitch_202
        0x40000 -> :sswitch_20f
    .end sparse-switch

    :sswitch_data_338
    .sparse-switch
        0x4 -> :sswitch_236
        0x6 -> :sswitch_245
        0x7 -> :sswitch_24b
        0x30000 -> :sswitch_251
        0x40000 -> :sswitch_256
    .end sparse-switch

    :sswitch_data_34e
    .sparse-switch
        0x4 -> :sswitch_271
        0x6 -> :sswitch_281
        0x7 -> :sswitch_288
        0x30000 -> :sswitch_28f
        0x40000 -> :sswitch_295
    .end sparse-switch

    :sswitch_data_364
    .sparse-switch
        0x4 -> :sswitch_17a
        0x6 -> :sswitch_18c
        0x7 -> :sswitch_198
        0x30000 -> :sswitch_1a4
        0x40000 -> :sswitch_1b0
    .end sparse-switch
.end method

.method public userCancelled()V
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    .line 148
    return-void
.end method
