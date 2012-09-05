.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefundResponseProto"
.end annotation


# instance fields
.field private asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

.field private cachedSize:I

.field private hasAsset:Z

.field private hasResult:Z

.field private hasResultDetail:Z

.field private resultDetail_:Ljava/lang/String;

.field private result_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10718
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10728
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->result_:I

    .line 10745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 10765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->resultDetail_:Ljava/lang/String;

    .line 10808
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->cachedSize:I

    .line 10718
    return-void
.end method


# virtual methods
.method public getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 2

    .prologue
    .line 10747
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 10810
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 10812
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getSerializedSize()I

    .line 10814
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->cachedSize:I

    return v0
.end method

.method public getResult()I
    .registers 2

    .prologue
    .line 10730
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->result_:I

    return v0
.end method

.method public getResultDetail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10766
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->resultDetail_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 10818
    const/4 v0, 0x0

    .line 10819
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 10820
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResult()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10823
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasAsset()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 10824
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10827
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResultDetail()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 10828
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResultDetail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10831
    :cond_31
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->cachedSize:I

    .line 10832
    return v0
.end method

.method public hasAsset()Z
    .registers 2

    .prologue
    .line 10746
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasAsset:Z

    return v0
.end method

.method public hasResult()Z
    .registers 2

    .prologue
    .line 10729
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResult:Z

    return v0
.end method

.method public hasResultDetail()Z
    .registers 2

    .prologue
    .line 10767
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResultDetail:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10839
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10840
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2a

    .line 10844
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10845
    :sswitch_d
    return-object p0

    .line 10850
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->setResult(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    goto :goto_0

    .line 10854
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;-><init>()V

    .line 10855
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 10856
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->setAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    goto :goto_0

    .line 10860
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->setResultDetail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    goto :goto_0

    .line 10840
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_22
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
    .line 10716
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 10749
    if-nez p1, :cond_8

    .line 10750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10752
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasAsset:Z

    .line 10753
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 10754
    return-object p0
.end method

.method public setResult(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 10732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResult:Z

    .line 10733
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->result_:I

    .line 10734
    return-object p0
.end method

.method public setResultDetail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 10769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResultDetail:Z

    .line 10770
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->resultDetail_:Ljava/lang/String;

    .line 10771
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
    .line 10797
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10798
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResult()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 10800
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasAsset()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 10801
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 10803
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResultDetail()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 10804
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResultDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10806
    :cond_2a
    return-void
.end method
