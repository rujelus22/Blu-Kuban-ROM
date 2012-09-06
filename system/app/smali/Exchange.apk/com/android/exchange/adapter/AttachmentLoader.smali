.class public Lcom/android/exchange/adapter/AttachmentLoader;
.super Ljava/lang/Object;
.source "AttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/AttachmentLoader$1;,
        Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private final mAttachmentId:J

.field private final mAttachmentSize:I

.field private final mAttachmentUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private final mMessageId:J

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/PartRequest;)V
    .registers 7
    .parameter "service"
    .parameter "req"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    .line 63
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mResolver:Landroid/content/ContentResolver;

    .line 65
    iget-object v0, p2, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 66
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    .line 67
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    .line 68
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAccountId:J

    .line 69
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessageId:J

    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 71
    iget-wide v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAccountId:J

    iget-wide v2, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentUri:Landroid/net/Uri;

    .line 72
    return-void
.end method

.method private doProgressCallback(I)V
    .registers 9
    .parameter "progress"

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessageId:J

    iget-wide v3, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    const/4 v5, 0x1

    move v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 89
    :goto_d
    return-void

    .line 86
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private doStatusCallback(I)V
    .registers 9
    .parameter "status"

    .prologue
    .line 76
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessageId:J

    iget-wide v3, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 80
    :goto_d
    return-void

    .line 77
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method static encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;-><init>(Lcom/android/exchange/adapter/AttachmentLoader$1;)V

    .line 153
    .local v0, enc:Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1, p0}, Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishLoadAttachment()V
    .registers 4

    .prologue
    .line 95
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "contentUri"

    iget-object v2, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v2, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 98
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public loadAttachment()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v11, :cond_a

    .line 176
    const/16 v11, 0x10

    invoke-direct {p0, v11}, Lcom/android/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V

    .line 245
    :goto_9
    return-void

    .line 180
    :cond_a
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/exchange/adapter/AttachmentLoader;->doProgressCallback(I)V

    .line 183
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v11, v11, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/high16 v13, 0x402c

    cmpl-double v11, v11, v13

    if-ltz v11, :cond_94

    const/4 v2, 0x1

    .line 185
    .local v2, eas14:Z
    :goto_1d
    if-eqz v2, :cond_96

    .line 186
    new-instance v9, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v9}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 187
    .local v9, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v11, 0x505

    invoke-virtual {v9, v11}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    const/16 v12, 0x506

    invoke-virtual {v11, v12}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 188
    const/16 v11, 0x507

    const-string v12, "Mailbox"

    invoke-virtual {v9, v11, v12}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 189
    const/16 v11, 0x451

    iget-object v12, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 190
    invoke-virtual {v9}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 191
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v12, "ItemOperations"

    invoke-virtual {v9}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v8

    .line 204
    .end local v9           #s:Lcom/android/exchange/adapter/Serializer;
    .local v8, resp:Lcom/android/exchange/EasResponse;
    :goto_56
    :try_start_56
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v10

    .line 205
    .local v10, status:I
    const/16 v11, 0xc8

    if-ne v10, v11, :cond_f7

    .line 206
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f7

    .line 207
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_e2

    move-result-object v3

    .line 208
    .local v3, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 210
    .local v6, os:Ljava/io/OutputStream;
    :try_start_69
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mResolver:Landroid/content/ContentResolver;

    iget-object v12, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 211
    if-eqz v2, :cond_c9

    .line 212
    new-instance v7, Lcom/android/exchange/adapter/ItemOperationsParser;

    iget v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    invoke-direct {v7, p0, v3, v6, v11}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Lcom/android/exchange/adapter/AttachmentLoader;Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 214
    .local v7, p:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v7}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    .line 215
    invoke-virtual {v7}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatusCode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10b

    .line 216
    invoke-direct {p0}, Lcom/android/exchange/adapter/AttachmentLoader;->finishLoadAttachment()V
    :try_end_87
    .catchall {:try_start_69 .. :try_end_87} :catchall_101
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_87} :catch_e7

    .line 232
    if-eqz v6, :cond_8f

    .line 233
    :try_start_89
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 234
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_e2

    .line 240
    .end local v7           #p:Lcom/android/exchange/adapter/ItemOperationsParser;
    :cond_8f
    :goto_8f
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_9

    .line 183
    .end local v2           #eas14:Z
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v8           #resp:Lcom/android/exchange/EasResponse;
    .end local v10           #status:I
    :cond_94
    const/4 v2, 0x0

    goto :goto_1d

    .line 193
    .restart local v2       #eas14:Z
    :cond_96
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v5, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 196
    .local v5, location:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v11, v11, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/high16 v13, 0x4028

    cmpg-double v11, v11, v13

    if-gez v11, :cond_ac

    .line 197
    invoke-static {v5}, Lcom/android/exchange/adapter/AttachmentLoader;->encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    :cond_ac
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GetAttachment&AttachmentName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, cmd:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v12, 0x0

    const/16 v13, 0x7530

    invoke-virtual {v11, v0, v12, v13}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v8

    .restart local v8       #resp:Lcom/android/exchange/EasResponse;
    goto :goto_56

    .line 220
    .end local v0           #cmd:Ljava/lang/String;
    .end local v5           #location:Ljava/lang/String;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v10       #status:I
    :cond_c9
    :try_start_c9
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->getLength()I

    move-result v4

    .line 221
    .local v4, len:I
    if-eqz v4, :cond_10b

    .line 224
    if-gez v4, :cond_d3

    iget v4, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    .end local v4           #len:I
    :cond_d3
    invoke-virtual {p0, v3, v6, v4}, Lcom/android/exchange/adapter/AttachmentLoader;->readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 225
    invoke-direct {p0}, Lcom/android/exchange/adapter/AttachmentLoader;->finishLoadAttachment()V
    :try_end_d9
    .catchall {:try_start_c9 .. :try_end_d9} :catchall_101
    .catch Ljava/io/FileNotFoundException; {:try_start_c9 .. :try_end_d9} :catch_e7

    .line 232
    if-eqz v6, :cond_8f

    .line 233
    :try_start_db
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 234
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_e1
    .catchall {:try_start_db .. :try_end_e1} :catchall_e2

    goto :goto_8f

    .line 240
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v10           #status:I
    :catchall_e2
    move-exception v11

    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->close()V

    throw v11

    .line 229
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v10       #status:I
    :catch_e7
    move-exception v1

    .line 230
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_e8
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v12, "Can\'t get attachment; write file not found?"

    invoke-virtual {v11, v12}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_e8 .. :try_end_ef} :catchall_101

    .line 232
    if-eqz v6, :cond_f7

    .line 233
    :try_start_f1
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 234
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f7
    .catchall {:try_start_f1 .. :try_end_f7} :catchall_e2

    .line 240
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/OutputStream;
    :cond_f7
    :goto_f7
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->close()V

    .line 244
    const/16 v11, 0x11

    invoke-direct {p0, v11}, Lcom/android/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V

    goto/16 :goto_9

    .line 232
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    :catchall_101
    move-exception v11

    if-eqz v6, :cond_10a

    .line 233
    :try_start_104
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 234
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 232
    :cond_10a
    throw v11

    :cond_10b
    if-eqz v6, :cond_f7

    .line 233
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 234
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_113
    .catchall {:try_start_104 .. :try_end_113} :catchall_e2

    goto :goto_f7
.end method

.method public readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 15
    .parameter "inputStream"
    .parameter "outputStream"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x4000

    const/4 v9, 0x0

    .line 110
    new-array v0, v10, [B

    .line 111
    .local v0, bytes:[B
    move v3, p3

    .line 114
    .local v3, length:I
    const/4 v6, 0x0

    .line 115
    .local v6, totalRead:I
    const/4 v1, -0x1

    .line 116
    .local v1, lastCallbackPct:I
    const/4 v2, 0x0

    .line 117
    .local v2, lastCallbackTotalRead:I
    iget-object v7, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v8, "Expected attachment length: "

    invoke-virtual {v7, v8, p3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 119
    :cond_10
    :goto_10
    invoke-virtual {p1, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 120
    .local v5, read:I
    if-gez v5, :cond_27

    .line 122
    iget-object v7, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v8, "Attachment load reached EOF, totalRead: "

    invoke-virtual {v7, v8, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 144
    if-le v6, v3, :cond_26

    .line 146
    iget-object v7, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v8, "Read more than expected: "

    invoke-virtual {v7, v8, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 148
    :cond_26
    return-void

    .line 127
    :cond_27
    add-int/2addr v6, v5

    .line 129
    invoke-virtual {p2, v0, v9, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 132
    if-lez v3, :cond_10

    .line 133
    mul-int/lit8 v7, v6, 0x64

    div-int v4, v7, v3

    .line 136
    .local v4, pct:I
    if-le v4, v1, :cond_10

    add-int/lit16 v7, v2, 0x4000

    if-le v6, v7, :cond_10

    .line 138
    invoke-direct {p0, v4}, Lcom/android/exchange/adapter/AttachmentLoader;->doProgressCallback(I)V

    .line 139
    move v2, v6

    .line 140
    move v1, v4

    goto :goto_10
.end method
