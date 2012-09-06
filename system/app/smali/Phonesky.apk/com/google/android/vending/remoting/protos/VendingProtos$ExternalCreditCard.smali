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

    .line 5665
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->type_:Ljava/lang/String;

    .line 5687
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->lastDigits_:Ljava/lang/String;

    .line 5704
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expYear_:I

    .line 5721
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expMonth_:I

    .line 5738
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->personName_:Ljava/lang/String;

    .line 5755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->countryCode_:Ljava/lang/String;

    .line 5772
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->postalCode_:Ljava/lang/String;

    .line 5789
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->makeDefault_:Z

    .line 5806
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address1_:Ljava/lang/String;

    .line 5823
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address2_:Ljava/lang/String;

    .line 5840
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->city_:Ljava/lang/String;

    .line 5857
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->state_:Ljava/lang/String;

    .line 5874
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->phone_:Ljava/lang/String;

    .line 5961
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->cachedSize:I

    .line 5665
    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5807
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address1_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5824
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address2_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 5964
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->cachedSize:I

    if-gez v0, :cond_7

    .line 5966
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getSerializedSize()I

    .line 5968
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->cachedSize:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5841
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5756
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getExpMonth()I
    .registers 2

    .prologue
    .line 5722
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expMonth_:I

    return v0
.end method

.method public getExpYear()I
    .registers 2

    .prologue
    .line 5705
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expYear_:I

    return v0
.end method

.method public getLastDigits()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5688
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->lastDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getMakeDefault()Z
    .registers 2

    .prologue
    .line 5790
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->makeDefault_:Z

    return v0
.end method

.method public getPersonName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5739
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->personName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5875
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->phone_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5773
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->postalCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 5973
    const/4 v0, 0x0

    .line 5974
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5975
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5978
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasLastDigits()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5979
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getLastDigits()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5982
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpYear()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 5983
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getExpYear()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5986
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpMonth()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 5987
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getExpMonth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5990
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPersonName()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 5991
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPersonName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5994
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCountryCode()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 5995
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5998
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPostalCode()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 5999
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6002
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasMakeDefault()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 6003
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getMakeDefault()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6006
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress1()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 6007
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6010
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress2()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 6011
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6014
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 6015
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6018
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasState()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 6019
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6022
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPhone()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 6023
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6026
    :cond_d7
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->cachedSize:I

    .line 6027
    return v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5858
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5671
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress1()Z
    .registers 2

    .prologue
    .line 5808
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress1:Z

    return v0
.end method

.method public hasAddress2()Z
    .registers 2

    .prologue
    .line 5825
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress2:Z

    return v0
.end method

.method public hasCity()Z
    .registers 2

    .prologue
    .line 5842
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCity:Z

    return v0
.end method

.method public hasCountryCode()Z
    .registers 2

    .prologue
    .line 5757
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCountryCode:Z

    return v0
.end method

.method public hasExpMonth()Z
    .registers 2

    .prologue
    .line 5723
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpMonth:Z

    return v0
.end method

.method public hasExpYear()Z
    .registers 2

    .prologue
    .line 5706
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpYear:Z

    return v0
.end method

.method public hasLastDigits()Z
    .registers 2

    .prologue
    .line 5689
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasLastDigits:Z

    return v0
.end method

.method public hasMakeDefault()Z
    .registers 2

    .prologue
    .line 5791
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasMakeDefault:Z

    return v0
.end method

.method public hasPersonName()Z
    .registers 2

    .prologue
    .line 5740
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPersonName:Z

    return v0
.end method

.method public hasPhone()Z
    .registers 2

    .prologue
    .line 5876
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPhone:Z

    return v0
.end method

.method public hasPostalCode()Z
    .registers 2

    .prologue
    .line 5774
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPostalCode:Z

    return v0
.end method

.method public hasState()Z
    .registers 2

    .prologue
    .line 5859
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasState:Z

    return v0
.end method

.method public hasType()Z
    .registers 2

    .prologue
    .line 5672
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
    .line 6035
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6036
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_76

    .line 6040
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6041
    :sswitch_d
    return-object p0

    .line 6046
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6050
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setLastDigits(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6054
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setExpYear(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6058
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setExpMonth(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6062
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setPersonName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6066
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setCountryCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6070
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setPostalCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6074
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setMakeDefault(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6078
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setAddress1(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6082
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setAddress2(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6086
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setCity(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6090
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setState(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6094
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->setPhone(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    goto :goto_0

    .line 6036
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
    .line 5663
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    move-result-object v0

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress1:Z

    .line 5811
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address1_:Ljava/lang/String;

    .line 5812
    return-object p0
.end method

.method public setAddress2(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress2:Z

    .line 5828
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->address2_:Ljava/lang/String;

    .line 5829
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCity:Z

    .line 5845
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->city_:Ljava/lang/String;

    .line 5846
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCountryCode:Z

    .line 5760
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->countryCode_:Ljava/lang/String;

    .line 5761
    return-object p0
.end method

.method public setExpMonth(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpMonth:Z

    .line 5726
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expMonth_:I

    .line 5727
    return-object p0
.end method

.method public setExpYear(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpYear:Z

    .line 5709
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->expYear_:I

    .line 5710
    return-object p0
.end method

.method public setLastDigits(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasLastDigits:Z

    .line 5692
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->lastDigits_:Ljava/lang/String;

    .line 5693
    return-object p0
.end method

.method public setMakeDefault(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasMakeDefault:Z

    .line 5794
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->makeDefault_:Z

    .line 5795
    return-object p0
.end method

.method public setPersonName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPersonName:Z

    .line 5743
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->personName_:Ljava/lang/String;

    .line 5744
    return-object p0
.end method

.method public setPhone(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPhone:Z

    .line 5879
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->phone_:Ljava/lang/String;

    .line 5880
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPostalCode:Z

    .line 5777
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->postalCode_:Ljava/lang/String;

    .line 5778
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasState:Z

    .line 5862
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->state_:Ljava/lang/String;

    .line 5863
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 3
    .parameter "value"

    .prologue
    .line 5674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasType:Z

    .line 5675
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->type_:Ljava/lang/String;

    .line 5676
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
    .line 5920
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5921
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5923
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasLastDigits()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5924
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getLastDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5926
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpYear()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5927
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getExpYear()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5929
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasExpMonth()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5930
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getExpMonth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5932
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPersonName()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 5933
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPersonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5935
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 5936
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5938
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPostalCode()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 5939
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5941
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasMakeDefault()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 5942
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getMakeDefault()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5944
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress1()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 5945
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5947
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasAddress2()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 5948
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5950
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 5951
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5953
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasState()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 5954
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5956
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->hasPhone()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 5957
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5959
    :cond_bc
    return-void
.end method
