.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvEpisodeDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private episodeIndex_:I

.field private hasEpisodeIndex:Z

.field private hasParentDetailsUrl:Z

.field private hasReleaseDate:Z

.field private parentDetailsUrl_:Ljava/lang/String;

.field private releaseDate_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4289
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 4311
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->episodeIndex_:I

    .line 4328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->releaseDate_:Ljava/lang/String;

    .line 4368
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->cachedSize:I

    .line 4289
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 4371
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 4373
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getSerializedSize()I

    .line 4375
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->cachedSize:I

    return v0
.end method

.method public getEpisodeIndex()I
    .registers 2

    .prologue
    .line 4312
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->episodeIndex_:I

    return v0
.end method

.method public getParentDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4295
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->parentDetailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4329
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->releaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 4380
    const/4 v0, 0x0

    .line 4381
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasParentDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4382
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4385
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasEpisodeIndex()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4386
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getEpisodeIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4389
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasReleaseDate()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4390
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4393
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->cachedSize:I

    .line 4394
    return v0
.end method

.method public hasEpisodeIndex()Z
    .registers 2

    .prologue
    .line 4313
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasEpisodeIndex:Z

    return v0
.end method

.method public hasParentDetailsUrl()Z
    .registers 2

    .prologue
    .line 4296
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasParentDetailsUrl:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .registers 2

    .prologue
    .line 4330
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasReleaseDate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4402
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4403
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 4407
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4408
    :sswitch_d
    return-object p0

    .line 4413
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    goto :goto_0

    .line 4417
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->setEpisodeIndex(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    goto :goto_0

    .line 4421
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    goto :goto_0

    .line 4403
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x1a -> :sswitch_1e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4286
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v0

    return-object v0
.end method

.method public setEpisodeIndex(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 4315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasEpisodeIndex:Z

    .line 4316
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->episodeIndex_:I

    .line 4317
    return-object p0
.end method

.method public setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 4298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasParentDetailsUrl:Z

    .line 4299
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 4300
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 4332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasReleaseDate:Z

    .line 4333
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->releaseDate_:Ljava/lang/String;

    .line 4334
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4357
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasParentDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4358
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4360
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasEpisodeIndex()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4361
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getEpisodeIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4363
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasReleaseDate()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4364
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4366
    :cond_2a
    return-void
.end method
