.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressProto"
.end annotation


# instance fields
.field private address1_:Ljava/lang/String;

.field private address2_:Ljava/lang/String;

.field private cachedSize:I

.field private city_:Ljava/lang/String;

.field private country_:Ljava/lang/String;

.field private hasAddress1:Z

.field private hasAddress2:Z

.field private hasCity:Z

.field private hasCountry:Z

.field private hasName:Z

.field private hasPhone:Z

.field private hasPostalCode:Z

.field private hasState:Z

.field private hasType:Z

.field private name_:Ljava/lang/String;

.field private phone_:Ljava/lang/String;

.field private postalCode_:Ljava/lang/String;

.field private state_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20425
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address1_:Ljava/lang/String;

    .line 20447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address2_:Ljava/lang/String;

    .line 20464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->city_:Ljava/lang/String;

    .line 20481
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->state_:Ljava/lang/String;

    .line 20498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->postalCode_:Ljava/lang/String;

    .line 20515
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->country_:Ljava/lang/String;

    .line 20532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->name_:Ljava/lang/String;

    .line 20549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->type_:Ljava/lang/String;

    .line 20566
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->phone_:Ljava/lang/String;

    .line 20629
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->cachedSize:I

    .line 20425
    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20431
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address1_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20448
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address2_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 20631
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 20633
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getSerializedSize()I

    .line 20635
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->cachedSize:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20465
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20516
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->country_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20533
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20567
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->phone_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20499
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->postalCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 20639
    const/4 v0, 0x0

    .line 20640
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress1()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 20641
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20644
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress2()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 20645
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20648
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 20649
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20652
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasState()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 20653
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20656
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPostalCode()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 20657
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20660
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCountry()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 20661
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20664
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 20665
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20668
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasType()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 20669
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20672
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPhone()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 20673
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20676
    :cond_93
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->cachedSize:I

    .line 20677
    return v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20482
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20550
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress1()Z
    .registers 2

    .prologue
    .line 20432
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress1:Z

    return v0
.end method

.method public hasAddress2()Z
    .registers 2

    .prologue
    .line 20449
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress2:Z

    return v0
.end method

.method public hasCity()Z
    .registers 2

    .prologue
    .line 20466
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCity:Z

    return v0
.end method

.method public hasCountry()Z
    .registers 2

    .prologue
    .line 20517
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCountry:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 20534
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasName:Z

    return v0
.end method

.method public hasPhone()Z
    .registers 2

    .prologue
    .line 20568
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPhone:Z

    return v0
.end method

.method public hasPostalCode()Z
    .registers 2

    .prologue
    .line 20500
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPostalCode:Z

    return v0
.end method

.method public hasState()Z
    .registers 2

    .prologue
    .line 20483
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasState:Z

    return v0
.end method

.method public hasType()Z
    .registers 2

    .prologue
    .line 20551
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20684
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 20685
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_56

    .line 20689
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20690
    :sswitch_d
    return-object p0

    .line 20695
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setAddress1(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 20699
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setAddress2(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 20703
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setCity(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 20707
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setState(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 20711
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setPostalCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 20715
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 20719
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 20723
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 20727
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setPhone(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 20685
    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x42 -> :sswitch_46
        0x4a -> :sswitch_4e
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
    .line 20423
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v0

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress1:Z

    .line 20435
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address1_:Ljava/lang/String;

    .line 20436
    return-object p0
.end method

.method public setAddress2(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress2:Z

    .line 20452
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address2_:Ljava/lang/String;

    .line 20453
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCity:Z

    .line 20469
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->city_:Ljava/lang/String;

    .line 20470
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCountry:Z

    .line 20520
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->country_:Ljava/lang/String;

    .line 20521
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasName:Z

    .line 20537
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->name_:Ljava/lang/String;

    .line 20538
    return-object p0
.end method

.method public setPhone(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPhone:Z

    .line 20571
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->phone_:Ljava/lang/String;

    .line 20572
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPostalCode:Z

    .line 20503
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->postalCode_:Ljava/lang/String;

    .line 20504
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasState:Z

    .line 20486
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->state_:Ljava/lang/String;

    .line 20487
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasType:Z

    .line 20554
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->type_:Ljava/lang/String;

    .line 20555
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
    .line 20600
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress1()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 20601
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20603
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress2()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 20604
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20606
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 20607
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20609
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasState()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 20610
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20612
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPostalCode()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 20613
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20615
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 20616
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20618
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 20619
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20621
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasType()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 20622
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20624
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPhone()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 20625
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20627
    :cond_80
    return-void
.end method
