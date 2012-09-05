.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseOrderResponseProto"
.end annotation


# instance fields
.field private asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

.field private cachedSize:I

.field private deprecatedResultCode_:I

.field private hasAsset:Z

.field private hasDeprecatedResultCode:Z

.field private hasPurchaseInfo:Z

.field private hasPurchaseResult:Z

.field private purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

.field private purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 8933
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8938
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->deprecatedResultCode_:I

    .line 8955
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    .line 8975
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 8995
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 9048
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->cachedSize:I

    .line 8933
    return-void
.end method


# virtual methods
.method public getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 2

    .prologue
    .line 8977
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 9050
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 9052
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getSerializedSize()I

    .line 9054
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->cachedSize:I

    return v0
.end method

.method public getDeprecatedResultCode()I
    .registers 2

    .prologue
    .line 8940
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->deprecatedResultCode_:I

    return v0
.end method

.method public getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 2

    .prologue
    .line 8957
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    return-object v0
.end method

.method public getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .registers 2

    .prologue
    .line 8997
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 9058
    const/4 v0, 0x0

    .line 9059
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasDeprecatedResultCode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 9060
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getDeprecatedResultCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9063
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseInfo()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 9064
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9067
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasAsset()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 9068
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9071
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseResult()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 9072
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9075
    :cond_41
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->cachedSize:I

    .line 9076
    return v0
.end method

.method public hasAsset()Z
    .registers 2

    .prologue
    .line 8976
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasAsset:Z

    return v0
.end method

.method public hasDeprecatedResultCode()Z
    .registers 2

    .prologue
    .line 8939
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasDeprecatedResultCode:Z

    return v0
.end method

.method public hasPurchaseInfo()Z
    .registers 2

    .prologue
    .line 8956
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseInfo:Z

    return v0
.end method

.method public hasPurchaseResult()Z
    .registers 2

    .prologue
    .line 8996
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseResult:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9083
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9084
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3a

    .line 9088
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9089
    :sswitch_d
    return-object p0

    .line 9094
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->setDeprecatedResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    goto :goto_0

    .line 9098
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;-><init>()V

    .line 9099
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9100
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->setPurchaseInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    goto :goto_0

    .line 9104
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    :sswitch_22
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;-><init>()V

    .line 9105
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9106
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->setAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    goto :goto_0

    .line 9110
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :sswitch_2e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;-><init>()V

    .line 9111
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9112
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    goto :goto_0

    .line 9084
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2e
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
    .line 8931
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8979
    if-nez p1, :cond_8

    .line 8980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8982
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasAsset:Z

    .line 8983
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 8984
    return-object p0
.end method

.method public setDeprecatedResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasDeprecatedResultCode:Z

    .line 8943
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->deprecatedResultCode_:I

    .line 8944
    return-object p0
.end method

.method public setPurchaseInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8959
    if-nez p1, :cond_8

    .line 8960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8962
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseInfo:Z

    .line 8963
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    .line 8964
    return-object p0
.end method

.method public setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8999
    if-nez p1, :cond_8

    .line 9000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9002
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseResult:Z

    .line 9003
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 9004
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
    .line 9034
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasDeprecatedResultCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9035
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getDeprecatedResultCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9037
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseInfo()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 9038
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9040
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasAsset()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 9041
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9043
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseResult()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 9044
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9046
    :cond_38
    return-void
.end method
