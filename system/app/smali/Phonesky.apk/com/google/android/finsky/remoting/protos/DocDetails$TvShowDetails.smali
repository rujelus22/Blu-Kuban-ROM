.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvShowDetails"
.end annotation


# instance fields
.field private broadcaster_:Ljava/lang/String;

.field private cachedSize:I

.field private endYear_:I

.field private hasBroadcaster:Z

.field private hasEndYear:Z

.field private hasSeasonCount:Z

.field private hasStartYear:Z

.field private seasonCount_:I

.field private startYear_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3863
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3868
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->seasonCount_:I

    .line 3885
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->startYear_:I

    .line 3902
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->endYear_:I

    .line 3919
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->broadcaster_:Ljava/lang/String;

    .line 3963
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->cachedSize:I

    .line 3863
    return-void
.end method


# virtual methods
.method public getBroadcaster()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3920
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->broadcaster_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 3966
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 3968
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getSerializedSize()I

    .line 3970
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->cachedSize:I

    return v0
.end method

.method public getEndYear()I
    .registers 2

    .prologue
    .line 3903
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->endYear_:I

    return v0
.end method

.method public getSeasonCount()I
    .registers 2

    .prologue
    .line 3869
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->seasonCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 3975
    const/4 v0, 0x0

    .line 3976
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasSeasonCount()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3977
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getSeasonCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3980
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasStartYear()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3981
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getStartYear()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3984
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasEndYear()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3985
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getEndYear()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3988
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasBroadcaster()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 3989
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getBroadcaster()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3992
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->cachedSize:I

    .line 3993
    return v0
.end method

.method public getStartYear()I
    .registers 2

    .prologue
    .line 3886
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->startYear_:I

    return v0
.end method

.method public hasBroadcaster()Z
    .registers 2

    .prologue
    .line 3921
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasBroadcaster:Z

    return v0
.end method

.method public hasEndYear()Z
    .registers 2

    .prologue
    .line 3904
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasEndYear:Z

    return v0
.end method

.method public hasSeasonCount()Z
    .registers 2

    .prologue
    .line 3870
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasSeasonCount:Z

    return v0
.end method

.method public hasStartYear()Z
    .registers 2

    .prologue
    .line 3887
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasStartYear:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4001
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4002
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 4006
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4007
    :sswitch_d
    return-object p0

    .line 4012
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->setSeasonCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    goto :goto_0

    .line 4016
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->setStartYear(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    goto :goto_0

    .line 4020
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->setEndYear(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    goto :goto_0

    .line 4024
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->setBroadcaster(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    goto :goto_0

    .line 4002
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
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
    .line 3860
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    move-result-object v0

    return-object v0
.end method

.method public setBroadcaster(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 3923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasBroadcaster:Z

    .line 3924
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->broadcaster_:Ljava/lang/String;

    .line 3925
    return-object p0
.end method

.method public setEndYear(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 3906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasEndYear:Z

    .line 3907
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->endYear_:I

    .line 3908
    return-object p0
.end method

.method public setSeasonCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 3872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasSeasonCount:Z

    .line 3873
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->seasonCount_:I

    .line 3874
    return-object p0
.end method

.method public setStartYear(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 3889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasStartYear:Z

    .line 3890
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->startYear_:I

    .line 3891
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
    .line 3949
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasSeasonCount()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3950
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getSeasonCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3952
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasStartYear()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3953
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getStartYear()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3955
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasEndYear()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3956
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getEndYear()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3958
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasBroadcaster()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3959
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getBroadcaster()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3961
    :cond_38
    return-void
.end method
