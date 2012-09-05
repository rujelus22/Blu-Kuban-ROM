.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalCreateAccountRequestProto"
.end annotation


# instance fields
.field private address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

.field private birthDate_:Ljava/lang/String;

.field private cachedSize:I

.field private firstName_:Ljava/lang/String;

.field private hasAddress:Z

.field private hasBirthDate:Z

.field private hasFirstName:Z

.field private hasLastName:Z

.field private lastName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9877
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9882
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->firstName_:Ljava/lang/String;

    .line 9899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->lastName_:Ljava/lang/String;

    .line 9916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 9936
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->birthDate_:Ljava/lang/String;

    .line 9982
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->cachedSize:I

    .line 9877
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .registers 2

    .prologue
    .line 9918
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    return-object v0
.end method

.method public getBirthDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9937
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->birthDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 9984
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 9986
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getSerializedSize()I

    .line 9988
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->cachedSize:I

    return v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9883
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->firstName_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9900
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->lastName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 9992
    const/4 v0, 0x0

    .line 9993
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasFirstName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 9994
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9997
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasLastName()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 9998
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10001
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 10002
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10005
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasBirthDate()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 10006
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getBirthDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10009
    :cond_41
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->cachedSize:I

    .line 10010
    return v0
.end method

.method public hasAddress()Z
    .registers 2

    .prologue
    .line 9917
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasAddress:Z

    return v0
.end method

.method public hasBirthDate()Z
    .registers 2

    .prologue
    .line 9938
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasBirthDate:Z

    return v0
.end method

.method public hasFirstName()Z
    .registers 2

    .prologue
    .line 9884
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasFirstName:Z

    return v0
.end method

.method public hasLastName()Z
    .registers 2

    .prologue
    .line 9901
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasLastName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10017
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10018
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_32

    .line 10022
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10023
    :sswitch_d
    return-object p0

    .line 10028
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->setFirstName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    goto :goto_0

    .line 10032
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->setLastName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    goto :goto_0

    .line 10036
    :sswitch_1e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;-><init>()V

    .line 10037
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 10038
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    goto :goto_0

    .line 10042
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->setBirthDate(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    goto :goto_0

    .line 10018
    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_2a
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
    .line 9875
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 9920
    if-nez p1, :cond_8

    .line 9921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9923
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasAddress:Z

    .line 9924
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 9925
    return-object p0
.end method

.method public setBirthDate(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 9940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasBirthDate:Z

    .line 9941
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->birthDate_:Ljava/lang/String;

    .line 9942
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 9886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasFirstName:Z

    .line 9887
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->firstName_:Ljava/lang/String;

    .line 9888
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 9903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasLastName:Z

    .line 9904
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->lastName_:Ljava/lang/String;

    .line 9905
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
    .line 9968
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9969
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9971
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasLastName()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 9972
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9974
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 9975
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9977
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasBirthDate()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 9978
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getBirthDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9980
    :cond_38
    return-void
.end method
