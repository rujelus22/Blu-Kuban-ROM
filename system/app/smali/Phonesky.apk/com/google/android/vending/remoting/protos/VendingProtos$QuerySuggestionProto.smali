.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuerySuggestionProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private estimatedNumResults_:I

.field private hasEstimatedNumResults:Z

.field private hasQuery:Z

.field private hasQueryWeight:Z

.field private queryWeight_:I

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17593
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->query_:Ljava/lang/String;

    .line 17615
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->estimatedNumResults_:I

    .line 17632
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->queryWeight_:I

    .line 17672
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->cachedSize:I

    .line 17593
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 17674
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 17676
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getSerializedSize()I

    .line 17678
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->cachedSize:I

    return v0
.end method

.method public getEstimatedNumResults()I
    .registers 2

    .prologue
    .line 17616
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->estimatedNumResults_:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17599
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryWeight()I
    .registers 2

    .prologue
    .line 17633
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->queryWeight_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 17682
    const/4 v0, 0x0

    .line 17683
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17684
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17687
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasEstimatedNumResults()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 17688
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getEstimatedNumResults()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17691
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQueryWeight()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 17692
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getQueryWeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17695
    :cond_31
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->cachedSize:I

    .line 17696
    return v0
.end method

.method public hasEstimatedNumResults()Z
    .registers 2

    .prologue
    .line 17617
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasEstimatedNumResults:Z

    return v0
.end method

.method public hasQuery()Z
    .registers 2

    .prologue
    .line 17600
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQuery:Z

    return v0
.end method

.method public hasQueryWeight()Z
    .registers 2

    .prologue
    .line 17634
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQueryWeight:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17703
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17704
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 17708
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17709
    :sswitch_d
    return-object p0

    .line 17714
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    goto :goto_0

    .line 17718
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->setEstimatedNumResults(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    goto :goto_0

    .line 17722
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->setQueryWeight(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    goto :goto_0

    .line 17704
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
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
    .line 17591
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    move-result-object v0

    return-object v0
.end method

.method public setEstimatedNumResults(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasEstimatedNumResults:Z

    .line 17620
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->estimatedNumResults_:I

    .line 17621
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQuery:Z

    .line 17603
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->query_:Ljava/lang/String;

    .line 17604
    return-object p0
.end method

.method public setQueryWeight(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQueryWeight:Z

    .line 17637
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->queryWeight_:I

    .line 17638
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
    .line 17661
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17662
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17664
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasEstimatedNumResults()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 17665
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getEstimatedNumResults()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 17667
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQueryWeight()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 17668
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getQueryWeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 17670
    :cond_2a
    return-void
.end method
