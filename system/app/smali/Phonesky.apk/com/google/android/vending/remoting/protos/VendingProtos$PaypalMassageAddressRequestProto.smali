.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalMassageAddressRequestProto"
.end annotation


# instance fields
.field private address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

.field private cachedSize:I

.field private hasAddress:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10430
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 10470
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->cachedSize:I

    .line 10430
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 2

    .prologue
    .line 10437
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 10472
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 10474
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->getSerializedSize()I

    .line 10476
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 10480
    const/4 v0, 0x0

    .line 10481
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 10482
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10485
    :cond_11
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->cachedSize:I

    .line 10486
    return v0
.end method

.method public hasAddress()Z
    .registers 2

    .prologue
    .line 10436
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->hasAddress:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10493
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10494
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1a

    .line 10498
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10499
    :sswitch_d
    return-object p0

    .line 10504
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;-><init>()V

    .line 10505
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 10506
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    goto :goto_0

    .line 10494
    :sswitch_data_1a
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
    .line 10428
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 10439
    if-nez p1, :cond_8

    .line 10440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10442
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->hasAddress:Z

    .line 10443
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 10444
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
    .line 10465
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10466
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 10468
    :cond_e
    return-void
.end method
