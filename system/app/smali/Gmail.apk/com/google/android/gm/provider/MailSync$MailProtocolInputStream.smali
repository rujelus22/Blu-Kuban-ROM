.class Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;
.super Ljava/lang/Object;
.source "MailSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MailProtocolInputStream"
.end annotation


# instance fields
.field private final mIs:Ljava/io/InputStream;

.field private mResponseVersion:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"

    .prologue
    .line 3074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3072
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->mResponseVersion:I

    .line 3075
    iput-object p1, p0, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->mIs:Ljava/io/InputStream;

    .line 3076
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3106
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->mIs:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3107
    return-void
.end method

.method public getResponseVersion()I
    .registers 2

    .prologue
    .line 3083
    iget v0, p0, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->mResponseVersion:I

    return v0
.end method

.method public readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3091
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 3092
    .local v1, innerProto:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v4, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CHUNK:Lcom/google/common/io/protocol/ProtoBufType;

    iget-object v5, p0, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->mIs:Ljava/io/InputStream;

    invoke-static {v4, v5, v1}, Lcom/google/common/io/protocol/ProtoBufUtil;->readNextProtoBuf(Lcom/google/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/google/common/io/protocol/ProtoBuf;)I

    move-result v3

    .line 3094
    .local v3, tag:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    .line 3102
    :goto_11
    return-object v2

    .line 3095
    :cond_12
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CHUNK:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 3098
    .local v2, outerProto:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_19
    invoke-virtual {v2, v3, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_11

    .line 3099
    :catch_1d
    move-exception v0

    .line 3100
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Gmail"

    const-string v5, "Response proto has an unexpected field"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_11
.end method

.method public setResponseVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 3079
    iput p1, p0, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->mResponseVersion:I

    .line 3080
    return-void
.end method
