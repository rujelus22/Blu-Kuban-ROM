.class Lcom/android/exchange/EasOutboxService$SendMailEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasOutboxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendMailEntity"
.end annotation


# static fields
.field private static final MODE_TAGS:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileLength:J

.field private final mFileStream:Ljava/io/FileInputStream;

.field private final mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private final mSendTag:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->MODE_TAGS:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x45t 0x5t 0x0t 0x0t
        0x47t 0x5t 0x0t 0x0t
        0x46t 0x5t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 7
    .parameter "context"
    .parameter "instream"
    .parameter "length"
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 102
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 103
    iput-object p1, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    .line 105
    iput-wide p3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    .line 106
    iput p5, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    .line 107
    iput-object p6, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 108
    return-void
.end method

.method static synthetic access$100()[I
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->MODE_TAGS:[I

    return-object v0
.end method


# virtual methods
.method public getContentLength()J
    .registers 3

    .prologue
    .line 116
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p1, :cond_a

    .line 123
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Output stream may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_a
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v1, p1}, Lcom/android/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;)V

    .line 129
    .local v1, s:Lcom/android/exchange/adapter/Serializer;
    iget v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 132
    const/16 v2, 0x551

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendMail-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 134
    const/16 v2, 0x548

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 137
    iget v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    const/16 v3, 0x545

    if-eq v2, v3, :cond_5e

    .line 138
    iget-object v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    #calls: Lcom/android/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    invoke-static {v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->access$000(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v0

    .line 139
    .local v0, info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    if-eqz v0, :cond_5e

    .line 140
    const/16 v2, 0x54b

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 143
    iget-object v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    if-eqz v2, :cond_77

    .line 144
    const/16 v2, 0x54e

    iget-object v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 149
    :goto_5b
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 154
    .end local v0           #info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_5e
    const/16 v2, 0x550

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 156
    iget-object v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    iget-wide v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    long-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->opaque(Ljava/io/InputStream;I)Lcom/android/exchange/adapter/Serializer;

    .line 158
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 159
    return-void

    .line 146
    .restart local v0       #info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_77
    const/16 v2, 0x54d

    iget-object v3, v0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 147
    const/16 v2, 0x54c

    iget-object v3, v0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_5b
.end method
