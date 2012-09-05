.class public Lcom/android/exchange/EasConvSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasConvSvc.java"


# instance fields
.field private mConversationId:[B

.field mIgnore:I

.field mToMailboxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ[BI)V
    .registers 10
    .parameter "_context"
    .parameter "_mailboxId"
    .parameter "_toMailboxId"
    .parameter "_conversationId"
    .parameter "_ignore"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;J)V

    .line 87
    iput-object p6, p0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    .line 89
    iput-wide p4, p0, Lcom/android/exchange/EasConvSvc;->mToMailboxId:J

    .line 91
    iput p7, p0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    .line 93
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

    .line 97
    return-void
.end method

.method private moveConvAlwaysCb([BIII)V
    .registers 6
    .parameter "convId"
    .parameter "status"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->moveConvAlwaysStatus([BIII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 113
    :goto_7
    return-void

    .line 107
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private moveConversationAlways()I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    .line 123
    const/4 v15, 0x0

    .line 127
    .local v15, result:I
    new-instance v16, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v16 .. v16}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 129
    .local v16, s:Lcom/android/exchange/adapter/Serializer;
    const/4 v6, 0x0

    .line 133
    .local v6, commandType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide/high16 v20, 0x402c

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_a7

    .line 135
    const-string v6, "ItemOperations"

    .line 137
    const/16 v18, 0x505

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 151
    sget-object v18, Lcom/android/exchange/EasConvSvc;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exchange/EasConvSvc;->mToMailboxId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 153
    .local v7, dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v7, :cond_6e

    .line 155
    const/4 v15, 0x0

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v18, v0

    const/16 v19, -0x3

    const/16 v20, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    move/from16 v18, v15

    .line 297
    .end local v7           #dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :goto_6d
    return v18

    .line 165
    .restart local v7       #dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_6e
    const/16 v18, 0x516

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    const/16 v19, 0x518

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/exchange/adapter/Serializer;->dataOpaque(I[B)Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    const/16 v19, 0x517

    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    const/16 v19, 0x508

    invoke-virtual/range {v18 .. v19}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    const/16 v19, 0x519

    invoke-virtual/range {v18 .. v19}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 173
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 175
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 185
    .end local v7           #dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_a7
    :try_start_a7
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/android/exchange/EasConvSvc;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b2} :catch_10e

    move-result-object v14

    .line 201
    .local v14, res:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .local v5, code:I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v5, v0, :cond_1bb

    .line 205
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 211
    .local v8, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .local v12, len:I
    if-lez v12, :cond_19b

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .local v11, is:Ljava/io/InputStream;
    if-eqz v11, :cond_19b

    .line 213
    const/16 v17, 0x1

    .line 217
    .local v17, successp:Z
    :try_start_d6
    new-instance v10, Lcom/android/exchange/adapter/ItemOperationsParser;

    new-instance v18, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v11, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 221
    .local v10, iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v10}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_e9} :catch_131
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d6 .. :try_end_e9} :catch_152

    move-result v17

    .line 243
    .end local v10           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    :goto_ea
    if-eqz v17, :cond_174

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    .line 267
    :cond_109
    :goto_109
    const/4 v15, 0x0

    .end local v8           #e:Lorg/apache/http/HttpEntity;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #len:I
    .end local v17           #successp:Z
    :goto_10a
    move/from16 v18, v15

    .line 297
    goto/16 :goto_6d

    .line 187
    .end local v5           #code:I
    .end local v14           #res:Lorg/apache/http/HttpResponse;
    :catch_10e
    move-exception v8

    .line 189
    .local v8, e:Ljava/lang/Exception;
    const/4 v15, 0x0

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v18, v0

    const/16 v19, -0x3

    const/16 v20, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    move/from16 v18, v15

    .line 193
    goto/16 :goto_6d

    .line 223
    .restart local v5       #code:I
    .local v8, e:Lorg/apache/http/HttpEntity;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v12       #len:I
    .restart local v14       #res:Lorg/apache/http/HttpResponse;
    .restart local v17       #successp:Z
    :catch_131
    move-exception v9

    .line 225
    .local v9, ioe:Ljava/io/IOException;
    const/16 v17, 0x0

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v18, v0

    const/high16 v19, 0x8

    const/16 v20, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    goto :goto_ea

    .line 231
    .end local v9           #ioe:Ljava/io/IOException;
    :catch_152
    move-exception v13

    .line 233
    .local v13, ome:Ljava/lang/OutOfMemoryError;
    const/16 v17, 0x0

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v18, v0

    const/high16 v19, 0x9

    const/16 v20, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    goto/16 :goto_ea

    .line 255
    .end local v13           #ome:Ljava/lang/OutOfMemoryError;
    :cond_174
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/EasConvSvc;->isProvisionError(I)Z

    move-result v18

    if-eqz v18, :cond_109

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v18, v0

    const/16 v19, 0x17

    const/16 v20, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    goto/16 :goto_109

    .line 271
    .end local v11           #is:Ljava/io/InputStream;
    .end local v17           #successp:Z
    :cond_19b
    const/4 v15, 0x0

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v18, v0

    const/16 v19, 0x15

    const/16 v20, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    goto/16 :goto_10a

    .line 279
    .end local v8           #e:Lorg/apache/http/HttpEntity;
    .end local v12           #len:I
    :cond_1bb
    const/16 v15, 0x15

    .line 283
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/EasConvSvc;->isAuthError(I)Z

    move-result v18

    if-eqz v18, :cond_1c7

    .line 285
    const/16 v15, 0x16

    .line 289
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v18, v0

    const/16 v19, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    .line 291
    const/4 v15, 0x0

    goto/16 :goto_10a
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/android/exchange/EasConvSvc;->setupService()Z

    .line 311
    const/4 v2, 0x0

    :try_start_7
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Lcom/android/exchange/EasConvSvc;->moveConversationAlways()I

    move-result v1

    .line 317
    .local v1, result:I
    packed-switch v1, :pswitch_data_b6

    .line 333
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_a2
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_7 .. :try_end_17} :catch_2e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_75
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_89

    .line 363
    :goto_17
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v3, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasConvSvc;->userLog([Ljava/lang/String;)V

    .line 365
    .end local v1           #result:I
    :goto_26
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 369
    return-void

    .line 321
    .restart local v1       #result:I
    :pswitch_2a
    const/4 v2, 0x2

    :try_start_2b
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_a2
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_2b .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2d} :catch_75
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2d} :catch_89

    goto :goto_17

    .line 339
    .end local v1           #result:I
    :catch_2e
    move-exception v0

    .line 341
    .local v0, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :try_start_2f
    const-string v2, "DeviceAccessPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught Exceptoin, Device is blocked or quarantined "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/DeviceAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 347
    iget-object v2, p0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    const/4 v3, 0x3

    const/16 v4, 0x64

    iget v5, p0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    .line 349
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v4, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v2, v3, v4}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V
    :try_end_61
    .catchall {:try_start_2f .. :try_end_61} :catchall_a2

    .line 363
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v3, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasConvSvc;->userLog([Ljava/lang/String;)V

    goto :goto_26

    .line 327
    .end local v0           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    .restart local v1       #result:I
    :pswitch_71
    const/4 v2, 0x3

    :try_start_72
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_a2
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_72 .. :try_end_74} :catch_2e
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_74} :catch_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_74} :catch_89

    goto :goto_17

    .line 351
    .end local v1           #result:I
    :catch_75
    move-exception v0

    .line 353
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_77
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_a2

    .line 363
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v3, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasConvSvc;->userLog([Ljava/lang/String;)V

    goto :goto_26

    .line 355
    .end local v0           #e:Ljava/io/IOException;
    :catch_89
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    :try_start_8a
    const-string v2, "Exception caught in EasConvSvc"

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasConvSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 359
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_a2

    .line 363
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v3, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasConvSvc;->userLog([Ljava/lang/String;)V

    goto :goto_26

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_a2
    move-exception v2

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, ": sync finished"

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasConvSvc;->userLog([Ljava/lang/String;)V

    .line 365
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 363
    throw v2

    .line 317
    :pswitch_data_b6
    .packed-switch 0x15
        :pswitch_71
        :pswitch_2a
    .end packed-switch
.end method
