.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseInformation"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPurchaseTime:Z

.field private hasRefundStartPolicy:Z

.field private hasRefundTimeoutTime:Z

.field private hasRefundWindowDuration:Z

.field private purchaseTime_:J

.field private refundStartPolicy_:I

.field private refundTimeoutTime_:J

.field private refundWindowDuration_:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1944
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1949
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->purchaseTime_:J

    .line 1966
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundTimeoutTime_:J

    .line 1983
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundStartPolicy_:I

    .line 2000
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundWindowDuration_:J

    .line 2044
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->cachedSize:I

    .line 1944
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2046
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->cachedSize:I

    if-gez v0, :cond_7

    .line 2048
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getSerializedSize()I

    .line 2050
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->cachedSize:I

    return v0
.end method

.method public getPurchaseTime()J
    .registers 3

    .prologue
    .line 1950
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->purchaseTime_:J

    return-wide v0
.end method

.method public getRefundStartPolicy()I
    .registers 2

    .prologue
    .line 1985
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundStartPolicy_:I

    return v0
.end method

.method public getRefundTimeoutTime()J
    .registers 3

    .prologue
    .line 1967
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundTimeoutTime_:J

    return-wide v0
.end method

.method public getRefundWindowDuration()J
    .registers 3

    .prologue
    .line 2001
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundWindowDuration_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 2054
    const/4 v0, 0x0

    .line 2055
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasPurchaseTime()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2056
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getPurchaseTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2059
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundTimeoutTime()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2060
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundTimeoutTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2063
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundStartPolicy()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2064
    const/16 v1, 0x2d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundStartPolicy()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2067
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundWindowDuration()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2068
    const/16 v1, 0x2e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundWindowDuration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2071
    :cond_45
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->cachedSize:I

    .line 2072
    return v0
.end method

.method public hasPurchaseTime()Z
    .registers 2

    .prologue
    .line 1951
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasPurchaseTime:Z

    return v0
.end method

.method public hasRefundStartPolicy()Z
    .registers 2

    .prologue
    .line 1984
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundStartPolicy:Z

    return v0
.end method

.method public hasRefundTimeoutTime()Z
    .registers 2

    .prologue
    .line 1968
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundTimeoutTime:Z

    return v0
.end method

.method public hasRefundWindowDuration()Z
    .registers 2

    .prologue
    .line 2002
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundWindowDuration:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2079
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2080
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 2084
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2085
    :sswitch_d
    return-object p0

    .line 2090
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->setPurchaseTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    goto :goto_0

    .line 2094
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->setRefundTimeoutTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    goto :goto_0

    .line 2098
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->setRefundStartPolicy(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    goto :goto_0

    .line 2102
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->setRefundWindowDuration(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    goto :goto_0

    .line 2080
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x50 -> :sswitch_e
        0x58 -> :sswitch_16
        0x168 -> :sswitch_1e
        0x170 -> :sswitch_26
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
    .line 1942
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    move-result-object v0

    return-object v0
.end method

.method public setPurchaseTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .registers 4
    .parameter "value"

    .prologue
    .line 1953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasPurchaseTime:Z

    .line 1954
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->purchaseTime_:J

    .line 1955
    return-object p0
.end method

.method public setRefundStartPolicy(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .registers 3
    .parameter "value"

    .prologue
    .line 1987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundStartPolicy:Z

    .line 1988
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundStartPolicy_:I

    .line 1989
    return-object p0
.end method

.method public setRefundTimeoutTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .registers 4
    .parameter "value"

    .prologue
    .line 1970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundTimeoutTime:Z

    .line 1971
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundTimeoutTime_:J

    .line 1972
    return-object p0
.end method

.method public setRefundWindowDuration(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .registers 4
    .parameter "value"

    .prologue
    .line 2004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundWindowDuration:Z

    .line 2005
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundWindowDuration_:J

    .line 2006
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
    .line 2030
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasPurchaseTime()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2031
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getPurchaseTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2033
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundTimeoutTime()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2034
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundTimeoutTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2036
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundStartPolicy()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2037
    const/16 v0, 0x2d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundStartPolicy()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2039
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundWindowDuration()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2040
    const/16 v0, 0x2e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundWindowDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2042
    :cond_3c
    return-void
.end method
