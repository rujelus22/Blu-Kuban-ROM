.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalPaypalInstrumentProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasInstrumentKey:Z

.field private hasMultiplePaypalInstrumentsSupported:Z

.field private hasPaypalAddress:Z

.field private hasPaypalEmail:Z

.field private hasPreapprovalKey:Z

.field private instrumentKey_:Ljava/lang/String;

.field private multiplePaypalInstrumentsSupported_:Z

.field private paypalAddress_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

.field private paypalEmail_:Ljava/lang/String;

.field private preapprovalKey_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6568
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6573
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->instrumentKey_:Ljava/lang/String;

    .line 6590
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->preapprovalKey_:Ljava/lang/String;

    .line 6607
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->paypalEmail_:Ljava/lang/String;

    .line 6624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->paypalAddress_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 6644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->multiplePaypalInstrumentsSupported_:Z

    .line 6696
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->cachedSize:I

    .line 6568
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 6699
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 6701
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getSerializedSize()I

    .line 6703
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->cachedSize:I

    return v0
.end method

.method public getInstrumentKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6574
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->instrumentKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiplePaypalInstrumentsSupported()Z
    .registers 2

    .prologue
    .line 6645
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->multiplePaypalInstrumentsSupported_:Z

    return v0
.end method

.method public getPaypalAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 2

    .prologue
    .line 6626
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->paypalAddress_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    return-object v0
.end method

.method public getPaypalEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6608
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->paypalEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreapprovalKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6591
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->preapprovalKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 6708
    const/4 v0, 0x0

    .line 6709
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasInstrumentKey()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 6710
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getInstrumentKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6713
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPreapprovalKey()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 6714
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6717
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPaypalEmail()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 6718
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getPaypalEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6721
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPaypalAddress()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 6722
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getPaypalAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6725
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasMultiplePaypalInstrumentsSupported()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 6726
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getMultiplePaypalInstrumentsSupported()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6729
    :cond_51
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->cachedSize:I

    .line 6730
    return v0
.end method

.method public hasInstrumentKey()Z
    .registers 2

    .prologue
    .line 6575
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasInstrumentKey:Z

    return v0
.end method

.method public hasMultiplePaypalInstrumentsSupported()Z
    .registers 2

    .prologue
    .line 6646
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasMultiplePaypalInstrumentsSupported:Z

    return v0
.end method

.method public hasPaypalAddress()Z
    .registers 2

    .prologue
    .line 6625
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPaypalAddress:Z

    return v0
.end method

.method public hasPaypalEmail()Z
    .registers 2

    .prologue
    .line 6609
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPaypalEmail:Z

    return v0
.end method

.method public hasPreapprovalKey()Z
    .registers 2

    .prologue
    .line 6592
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPreapprovalKey:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6738
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6739
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3a

    .line 6743
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6744
    :sswitch_d
    return-object p0

    .line 6749
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->setInstrumentKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    goto :goto_0

    .line 6753
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->setPreapprovalKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    goto :goto_0

    .line 6757
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->setPaypalEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    goto :goto_0

    .line 6761
    :sswitch_26
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;-><init>()V

    .line 6762
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6763
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->setPaypalAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    goto :goto_0

    .line 6767
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->setMultiplePaypalInstrumentsSupported(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    goto :goto_0

    .line 6739
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_32
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
    .line 6566
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    move-result-object v0

    return-object v0
.end method

.method public setInstrumentKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasInstrumentKey:Z

    .line 6578
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->instrumentKey_:Ljava/lang/String;

    .line 6579
    return-object p0
.end method

.method public setMultiplePaypalInstrumentsSupported(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasMultiplePaypalInstrumentsSupported:Z

    .line 6649
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->multiplePaypalInstrumentsSupported_:Z

    .line 6650
    return-object p0
.end method

.method public setPaypalAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6628
    if-nez p1, :cond_8

    .line 6629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6631
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPaypalAddress:Z

    .line 6632
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->paypalAddress_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 6633
    return-object p0
.end method

.method public setPaypalEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPaypalEmail:Z

    .line 6612
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->paypalEmail_:Ljava/lang/String;

    .line 6613
    return-object p0
.end method

.method public setPreapprovalKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPreapprovalKey:Z

    .line 6595
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->preapprovalKey_:Ljava/lang/String;

    .line 6596
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
    .line 6679
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasInstrumentKey()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6680
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getInstrumentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6682
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPreapprovalKey()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6683
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6685
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPaypalEmail()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6686
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getPaypalEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6688
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasPaypalAddress()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6689
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getPaypalAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6691
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->hasMultiplePaypalInstrumentsSupported()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 6692
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;->getMultiplePaypalInstrumentsSupported()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 6694
    :cond_46
    return-void
.end method
