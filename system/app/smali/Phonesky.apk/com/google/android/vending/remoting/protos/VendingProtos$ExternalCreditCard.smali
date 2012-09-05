.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalCreditCard"
.end annotation


# instance fields
.field private address1_:Ljava/lang/String;

.field private address2_:Ljava/lang/String;

.field private cachedSize:I

.field private city_:Ljava/lang/String;

.field private countryCode_:Ljava/lang/String;

.field private expMonth_:I

.field private expYear_:I

.field private hasAddress1:Z

.field private hasAddress2:Z

.field private hasCity:Z

.field private hasCountryCode:Z

.field private hasExpMonth:Z

.field private hasExpYear:Z

.field private hasLastDigits:Z

.field private hasMakeDefault:Z

.field private hasPersonName:Z

.field private hasPhone:Z

.field private hasPostalCode:Z

.field private hasState:Z

.field private hasType:Z

.field private lastDigits_:Ljava/lang/String;

.field private makeDefault_:Z

.field private personName_:Ljava/lang/String;

.field private phone_:Ljava/lang/String;

.field private postalCode_:Ljava/lang/String;

.field private state_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5551
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->type_:Ljava/lang/String;

    .line 5573
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->lastDigits_:Ljava/lang/String;

    .line 5590
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expYear_:I

    .line 5607
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expMonth_:I

    .line 5624
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->personName_:Ljava/lang/String;

    .line 5641
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->countryCode_:Ljava/lang/String;

    .line 5658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->postalCode_:Ljava/lang/String;

    .line 5675
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->makeDefault_:Z

    .line 5692
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address1_:Ljava/lang/String;

    .line 5709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address2_:Ljava/lang/String;

    .line 5726
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->city_:Ljava/lang/String;

    .line 5743
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->state_:Ljava/lang/String;

    .line 5760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->phone_:Ljava/lang/String;

    .line 5846
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->cachedSize:I

    .line 5551
    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5693
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address1_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5710
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address2_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 5848
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->cachedSize:I

    if-gez v0, :cond_7

    .line 5850
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getSerializedSize()I

    .line 5852
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->cachedSize:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5727
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5642
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getExpMonth()I
    .registers 2

    .prologue
    .line 5608
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expMonth_:I

    return v0
.end method

.method public getExpYear()I
    .registers 2

    .prologue
    .line 5591
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expYear_:I

    return v0
.end method

.method public getLastDigits()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5574
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->lastDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getMakeDefault()Z
    .registers 2

    .prologue
    .line 5676
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->makeDefault_:Z

    return v0
.end method

.method public getPersonName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5625
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->personName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5761
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->phone_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5659
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->postalCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 5856
    const/4 v0, 0x0

    .line 5857
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5858
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5861
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasLastDigits()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5862
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getLastDigits()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5865
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpYear()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 5866
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getExpYear()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5869
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpMonth()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 5870
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getExpMonth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5873
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPersonName()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 5874
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPersonName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5877
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCountryCode()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 5878
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5881
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPostalCode()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 5882
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5885
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasMakeDefault()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 5886
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getMakeDefault()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5889
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress1()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 5890
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5893
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress2()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 5894
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5897
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 5898
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5901
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasState()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 5902
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5905
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPhone()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 5906
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5909
    :cond_d7
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->cachedSize:I

    .line 5910
    return v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5744
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5557
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress1()Z
    .registers 2

    .prologue
    .line 5694
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress1:Z

    return v0
.end method

.method public hasAddress2()Z
    .registers 2

    .prologue
    .line 5711
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress2:Z

    return v0
.end method

.method public hasCity()Z
    .registers 2

    .prologue
    .line 5728
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCity:Z

    return v0
.end method

.method public hasCountryCode()Z
    .registers 2

    .prologue
    .line 5643
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCountryCode:Z

    return v0
.end method

.method public hasExpMonth()Z
    .registers 2

    .prologue
    .line 5609
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpMonth:Z

    return v0
.end method

.method public hasExpYear()Z
    .registers 2

    .prologue
    .line 5592
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpYear:Z

    return v0
.end method

.method public hasLastDigits()Z
    .registers 2

    .prologue
    .line 5575
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasLastDigits:Z

    return v0
.end method

.method public hasMakeDefault()Z
    .registers 2

    .prologue
    .line 5677
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasMakeDefault:Z

    return v0
.end method

.method public hasPersonName()Z
    .registers 2

    .prologue
    .line 5626
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPersonName:Z

    return v0
.end method

.method public hasPhone()Z
    .registers 2

    .prologue
    .line 5762
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPhone:Z

    return v0
.end method

.method public hasPostalCode()Z
    .registers 2

    .prologue
    .line 5660
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPostalCode:Z

    return v0
.end method

.method public hasState()Z
    .registers 2

    .prologue
    .line 5745
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasState:Z

    return v0
.end method

.method public hasType()Z
    .registers 2

    .prologue
    .line 5558
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5917
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5918
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_76

    .line 5922
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5923
    :sswitch_d
    return-object p0

    .line 5928
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5932
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setLastDigits(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5936
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setExpYear(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5940
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setExpMonth(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5944
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setPersonName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5948
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setCountryCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5952
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setPostalCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5956
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setMakeDefault(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5960
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setAddress1(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5964
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setAddress2(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5968
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setCity(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5972
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setState(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5976
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setPhone(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 5918
    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x20 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x40 -> :sswitch_46
        0x4a -> :sswitch_4e
        0x52 -> :sswitch_56
        0x5a -> :sswitch_5e
        0x62 -> :sswitch_66
        0x6a -> :sswitch_6e
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
    .line 5549
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    move-result-object v0

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress1:Z

    .line 5697
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address1_:Ljava/lang/String;

    .line 5698
    return-object p0
.end method

.method public setAddress2(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress2:Z

    .line 5714
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address2_:Ljava/lang/String;

    .line 5715
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCity:Z

    .line 5731
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->city_:Ljava/lang/String;

    .line 5732
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCountryCode:Z

    .line 5646
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->countryCode_:Ljava/lang/String;

    .line 5647
    return-object p0
.end method

.method public setExpMonth(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpMonth:Z

    .line 5612
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expMonth_:I

    .line 5613
    return-object p0
.end method

.method public setExpYear(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpYear:Z

    .line 5595
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expYear_:I

    .line 5596
    return-object p0
.end method

.method public setLastDigits(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasLastDigits:Z

    .line 5578
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->lastDigits_:Ljava/lang/String;

    .line 5579
    return-object p0
.end method

.method public setMakeDefault(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasMakeDefault:Z

    .line 5680
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->makeDefault_:Z

    .line 5681
    return-object p0
.end method

.method public setPersonName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPersonName:Z

    .line 5629
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->personName_:Ljava/lang/String;

    .line 5630
    return-object p0
.end method

.method public setPhone(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPhone:Z

    .line 5765
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->phone_:Ljava/lang/String;

    .line 5766
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPostalCode:Z

    .line 5663
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->postalCode_:Ljava/lang/String;

    .line 5664
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasState:Z

    .line 5748
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->state_:Ljava/lang/String;

    .line 5749
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasType:Z

    .line 5561
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->type_:Ljava/lang/String;

    .line 5562
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
    .line 5805
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5806
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5808
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasLastDigits()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5809
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getLastDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5811
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpYear()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5812
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getExpYear()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5814
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpMonth()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5815
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getExpMonth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5817
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPersonName()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 5818
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPersonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5820
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 5821
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5823
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPostalCode()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 5824
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5826
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasMakeDefault()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 5827
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getMakeDefault()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5829
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress1()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 5830
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5832
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress2()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 5833
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5835
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 5836
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5838
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasState()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 5839
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5841
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPhone()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 5842
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5844
    :cond_bc
    return-void
.end method
