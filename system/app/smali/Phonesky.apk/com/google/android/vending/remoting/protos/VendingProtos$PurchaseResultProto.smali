.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseResultProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasResultCode:Z

.field private hasResultCodeMessage:Z

.field private resultCodeMessage_:Ljava/lang/String;

.field private resultCode_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7454
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7471
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCode_:I

    .line 7488
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCodeMessage_:Ljava/lang/String;

    .line 7523
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->cachedSize:I

    .line 7454
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 7525
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 7527
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getSerializedSize()I

    .line 7529
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->cachedSize:I

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 7473
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCode_:I

    return v0
.end method

.method public getResultCodeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7489
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCodeMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 7533
    const/4 v0, 0x0

    .line 7534
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7535
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getResultCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7538
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCodeMessage()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 7539
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getResultCodeMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7542
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->cachedSize:I

    .line 7543
    return v0
.end method

.method public hasResultCode()Z
    .registers 2

    .prologue
    .line 7472
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCode:Z

    return v0
.end method

.method public hasResultCodeMessage()Z
    .registers 2

    .prologue
    .line 7490
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCodeMessage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7550
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7551
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 7555
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7556
    :sswitch_d
    return-object p0

    .line 7561
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->setResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    goto :goto_0

    .line 7565
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->setResultCodeMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    goto :goto_0

    .line 7551
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
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
    .line 7452
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v0

    return-object v0
.end method

.method public setResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCode:Z

    .line 7476
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCode_:I

    .line 7477
    return-object p0
.end method

.method public setResultCodeMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCodeMessage:Z

    .line 7493
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCodeMessage_:Ljava/lang/String;

    .line 7494
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
    .line 7515
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7516
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getResultCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7518
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCodeMessage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7519
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getResultCodeMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7521
    :cond_1c
    return-void
.end method
