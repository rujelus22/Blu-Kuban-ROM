.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseProductRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasProductId:Z

.field private hasProductType:Z

.field private hasSignatureHash:Z

.field private productId_:Ljava/lang/String;

.field private productType_:I

.field private signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9134
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9139
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productType_:I

    .line 9156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productId_:Ljava/lang/String;

    .line 9173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 9220
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->cachedSize:I

    .line 9134
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 9222
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 9224
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getSerializedSize()I

    .line 9226
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->cachedSize:I

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9157
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productId_:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()I
    .registers 2

    .prologue
    .line 9141
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productType_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 9230
    const/4 v0, 0x0

    .line 9231
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 9232
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getProductType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9235
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductId()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 9236
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9239
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasSignatureHash()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 9240
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9243
    :cond_31
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->cachedSize:I

    .line 9244
    return v0
.end method

.method public getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .registers 2

    .prologue
    .line 9175
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    return-object v0
.end method

.method public hasProductId()Z
    .registers 2

    .prologue
    .line 9158
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductId:Z

    return v0
.end method

.method public hasProductType()Z
    .registers 2

    .prologue
    .line 9140
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductType:Z

    return v0
.end method

.method public hasSignatureHash()Z
    .registers 2

    .prologue
    .line 9174
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasSignatureHash:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9251
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9252
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2a

    .line 9256
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9257
    :sswitch_d
    return-object p0

    .line 9262
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    goto :goto_0

    .line 9266
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->setProductId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    goto :goto_0

    .line 9270
    :sswitch_1e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 9271
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9272
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    goto :goto_0

    .line 9252
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
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
    .line 9132
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setProductId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 9160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductId:Z

    .line 9161
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productId_:Ljava/lang/String;

    .line 9162
    return-object p0
.end method

.method public setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 9143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductType:Z

    .line 9144
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productType_:I

    .line 9145
    return-object p0
.end method

.method public setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 9177
    if-nez p1, :cond_8

    .line 9178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9180
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasSignatureHash:Z

    .line 9181
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 9182
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
    .line 9209
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9210
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getProductType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9212
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 9213
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9215
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasSignatureHash()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 9216
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9218
    :cond_2a
    return-void
.end method
