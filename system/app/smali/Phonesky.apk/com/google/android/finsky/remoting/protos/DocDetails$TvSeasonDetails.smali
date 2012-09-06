.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvSeasonDetails"
.end annotation


# instance fields
.field private broadcaster_:Ljava/lang/String;

.field private cachedSize:I

.field private episodeCount_:I

.field private expectedEpisodeCount_:I

.field private hasBroadcaster:Z

.field private hasEpisodeCount:Z

.field private hasExpectedEpisodeCount:Z

.field private hasParentDetailsUrl:Z

.field private hasReleaseDate:Z

.field private hasSeasonIndex:Z

.field private parentDetailsUrl_:Ljava/lang/String;

.field private releaseDate_:Ljava/lang/String;

.field private seasonIndex_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4047
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4052
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 4069
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->seasonIndex_:I

    .line 4086
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->releaseDate_:Ljava/lang/String;

    .line 4103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->broadcaster_:Ljava/lang/String;

    .line 4120
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->episodeCount_:I

    .line 4137
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount_:I

    .line 4189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->cachedSize:I

    .line 4047
    return-void
.end method


# virtual methods
.method public getBroadcaster()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4104
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->broadcaster_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 4192
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 4194
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getSerializedSize()I

    .line 4196
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->cachedSize:I

    return v0
.end method

.method public getEpisodeCount()I
    .registers 2

    .prologue
    .line 4121
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->episodeCount_:I

    return v0
.end method

.method public getExpectedEpisodeCount()I
    .registers 2

    .prologue
    .line 4138
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount_:I

    return v0
.end method

.method public getParentDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4053
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4087
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->releaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonIndex()I
    .registers 2

    .prologue
    .line 4070
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->seasonIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 4201
    const/4 v0, 0x0

    .line 4202
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4203
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4206
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4207
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getSeasonIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4210
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasReleaseDate()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4211
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4214
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasBroadcaster()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4215
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getBroadcaster()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4218
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 4219
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getEpisodeCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4222
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 4223
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getExpectedEpisodeCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4226
    :cond_61
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->cachedSize:I

    .line 4227
    return v0
.end method

.method public hasBroadcaster()Z
    .registers 2

    .prologue
    .line 4105
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasBroadcaster:Z

    return v0
.end method

.method public hasEpisodeCount()Z
    .registers 2

    .prologue
    .line 4122
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount:Z

    return v0
.end method

.method public hasExpectedEpisodeCount()Z
    .registers 2

    .prologue
    .line 4139
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount:Z

    return v0
.end method

.method public hasParentDetailsUrl()Z
    .registers 2

    .prologue
    .line 4054
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .registers 2

    .prologue
    .line 4088
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasReleaseDate:Z

    return v0
.end method

.method public hasSeasonIndex()Z
    .registers 2

    .prologue
    .line 4071
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4235
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4236
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3e

    .line 4240
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4241
    :sswitch_d
    return-object p0

    .line 4246
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4250
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setSeasonIndex(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4254
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4258
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setBroadcaster(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4262
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setEpisodeCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4266
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setExpectedEpisodeCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4236
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_2e
        0x30 -> :sswitch_36
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
    .line 4044
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    move-result-object v0

    return-object v0
.end method

.method public setBroadcaster(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 4107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasBroadcaster:Z

    .line 4108
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->broadcaster_:Ljava/lang/String;

    .line 4109
    return-object p0
.end method

.method public setEpisodeCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 4124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount:Z

    .line 4125
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->episodeCount_:I

    .line 4126
    return-object p0
.end method

.method public setExpectedEpisodeCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 4141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount:Z

    .line 4142
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount_:I

    .line 4143
    return-object p0
.end method

.method public setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 4056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl:Z

    .line 4057
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 4058
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 4090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasReleaseDate:Z

    .line 4091
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->releaseDate_:Ljava/lang/String;

    .line 4092
    return-object p0
.end method

.method public setSeasonIndex(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 4073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex:Z

    .line 4074
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->seasonIndex_:I

    .line 4075
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
    .line 4169
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4170
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4172
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4173
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getSeasonIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4175
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasReleaseDate()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4176
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4178
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasBroadcaster()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4179
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getBroadcaster()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4181
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4182
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getEpisodeCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4184
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 4185
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getExpectedEpisodeCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4187
    :cond_54
    return-void
.end method
