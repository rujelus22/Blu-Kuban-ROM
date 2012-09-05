.class public final Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Containers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Containers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerMetadata"
.end annotation


# instance fields
.field private analyticsCookie_:Ljava/lang/String;

.field private browseUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private estimatedResults_:J

.field private hasAnalyticsCookie:Z

.field private hasBrowseUrl:Z

.field private hasEstimatedResults:Z

.field private hasNextPageUrl:Z

.field private hasOrdered:Z

.field private hasRelevance:Z

.field private nextPageUrl_:Ljava/lang/String;

.field private ordered_:Z

.field private relevance_:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->browseUrl_:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->nextPageUrl_:Ljava/lang/String;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->relevance_:D

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->estimatedResults_:J

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->analyticsCookie_:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->ordered_:Z

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getAnalyticsCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->analyticsCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->browseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->cachedSize:I

    if-gez v0, :cond_7

    .line 154
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getSerializedSize()I

    .line 156
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->cachedSize:I

    return v0
.end method

.method public getEstimatedResults()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->estimatedResults_:J

    return-wide v0
.end method

.method public getNextPageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->nextPageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdered()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->ordered_:Z

    return v0
.end method

.method public getRelevance()D
    .registers 3

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->relevance_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 162
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasNextPageUrl()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 166
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getNextPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasRelevance()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 170
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getRelevance()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasEstimatedResults()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 174
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getEstimatedResults()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasAnalyticsCookie()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 178
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasOrdered()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 182
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getOrdered()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_61
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->cachedSize:I

    .line 186
    return v0
.end method

.method public hasAnalyticsCookie()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasAnalyticsCookie:Z

    return v0
.end method

.method public hasBrowseUrl()Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasBrowseUrl:Z

    return v0
.end method

.method public hasEstimatedResults()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasEstimatedResults:Z

    return v0
.end method

.method public hasNextPageUrl()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasNextPageUrl:Z

    return v0
.end method

.method public hasOrdered()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasOrdered:Z

    return v0
.end method

.method public hasRelevance()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasRelevance:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 194
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3e

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    :sswitch_d
    return-object p0

    .line 204
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 208
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 212
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setRelevance(D)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 216
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setEstimatedResults(J)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 220
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 224
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setOrdered(Z)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 194
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x19 -> :sswitch_1e
        0x20 -> :sswitch_26
        0x2a -> :sswitch_2e
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasAnalyticsCookie:Z

    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->analyticsCookie_:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasBrowseUrl:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->browseUrl_:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public setEstimatedResults(J)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .registers 4
    .parameter "value"

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasEstimatedResults:Z

    .line 70
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->estimatedResults_:J

    .line 71
    return-object p0
.end method

.method public setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasNextPageUrl:Z

    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->nextPageUrl_:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public setOrdered(Z)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasOrdered:Z

    .line 104
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->ordered_:Z

    .line 105
    return-object p0
.end method

.method public setRelevance(D)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .registers 4
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasRelevance:Z

    .line 53
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->relevance_:D

    .line 54
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 133
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasNextPageUrl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 134
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getNextPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 136
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasRelevance()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 137
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getRelevance()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 139
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasEstimatedResults()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 140
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getEstimatedResults()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 142
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasAnalyticsCookie()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 143
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 145
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasOrdered()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 146
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getOrdered()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 148
    :cond_54
    return-void
.end method
