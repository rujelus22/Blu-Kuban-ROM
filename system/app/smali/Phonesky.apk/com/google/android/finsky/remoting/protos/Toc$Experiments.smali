.class public final Lcom/google/android/finsky/remoting/protos/Toc$Experiments;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Experiments"
.end annotation


# instance fields
.field private cachedSize:I

.field private experimentId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->experimentId_:Ljava/util/List;

    .line 608
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->cachedSize:I

    .line 555
    return-void
.end method


# virtual methods
.method public addExperimentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$Experiments;
    .registers 3
    .parameter "value"

    .prologue
    .line 576
    if-nez p1, :cond_8

    .line 577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 579
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->experimentId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->experimentId_:Ljava/util/List;

    .line 582
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->experimentId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 611
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->cachedSize:I

    if-gez v0, :cond_7

    .line 613
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->getSerializedSize()I

    .line 615
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->cachedSize:I

    return v0
.end method

.method public getExperimentIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->experimentId_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 620
    const/4 v3, 0x0

    .line 622
    .local v3, size:I
    const/4 v0, 0x0

    .line 623
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->getExperimentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 624
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_a

    .line 627
    .end local v1           #element:Ljava/lang/String;
    :cond_1c
    add-int/2addr v3, v0

    .line 628
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->getExperimentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 630
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->cachedSize:I

    .line 631
    return v3
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$Experiments;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 640
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 644
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    :sswitch_d
    return-object p0

    .line 650
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->addExperimentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    goto :goto_0

    .line 640
    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 552
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    move-result-object v0

    return-object v0
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
    .line 603
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->getExperimentIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 604
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_8

    .line 606
    .end local v0           #element:Ljava/lang/String;
    :cond_19
    return-void
.end method
