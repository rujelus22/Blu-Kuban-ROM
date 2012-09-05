.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trailer"
.end annotation


# instance fields
.field private cachedSize:I

.field private duration_:Ljava/lang/String;

.field private hasDuration:Z

.field private hasThumbnailUrl:Z

.field private hasTitle:Z

.field private hasTrailerId:Z

.field private hasWatchUrl:Z

.field private thumbnailUrl_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private trailerId_:Ljava/lang/String;

.field private watchUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2724
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->trailerId_:Ljava/lang/String;

    .line 2746
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->title_:Ljava/lang/String;

    .line 2763
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->thumbnailUrl_:Ljava/lang/String;

    .line 2780
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->watchUrl_:Ljava/lang/String;

    .line 2797
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->duration_:Ljava/lang/String;

    .line 2845
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    .line 2724
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2847
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    if-gez v0, :cond_7

    .line 2849
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getSerializedSize()I

    .line 2851
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->duration_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2855
    const/4 v0, 0x0

    .line 2856
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2857
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTrailerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2860
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2861
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2864
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2865
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2868
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2869
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2872
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2873
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2876
    :cond_51
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    .line 2877
    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->thumbnailUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTrailerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->trailerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2781
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->watchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDuration()Z
    .registers 2

    .prologue
    .line 2799
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration:Z

    return v0
.end method

.method public hasThumbnailUrl()Z
    .registers 2

    .prologue
    .line 2765
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 2748
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle:Z

    return v0
.end method

.method public hasTrailerId()Z
    .registers 2

    .prologue
    .line 2731
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId:Z

    return v0
.end method

.method public hasWatchUrl()Z
    .registers 2

    .prologue
    .line 2782
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2884
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2885
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 2889
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2890
    :sswitch_d
    return-object p0

    .line 2895
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setTrailerId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 2899
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 2903
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 2907
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setWatchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 2911
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 2885
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
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
    .line 2722
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .registers 3
    .parameter "value"

    .prologue
    .line 2801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration:Z

    .line 2802
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->duration_:Ljava/lang/String;

    .line 2803
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .registers 3
    .parameter "value"

    .prologue
    .line 2767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl:Z

    .line 2768
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->thumbnailUrl_:Ljava/lang/String;

    .line 2769
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .registers 3
    .parameter "value"

    .prologue
    .line 2750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle:Z

    .line 2751
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->title_:Ljava/lang/String;

    .line 2752
    return-object p0
.end method

.method public setTrailerId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .registers 3
    .parameter "value"

    .prologue
    .line 2733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId:Z

    .line 2734
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->trailerId_:Ljava/lang/String;

    .line 2735
    return-object p0
.end method

.method public setWatchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .registers 3
    .parameter "value"

    .prologue
    .line 2784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl:Z

    .line 2785
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->watchUrl_:Ljava/lang/String;

    .line 2786
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
    .line 2828
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2829
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTrailerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2831
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2832
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2834
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2835
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2837
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2838
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2840
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2841
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2843
    :cond_46
    return-void
.end method
