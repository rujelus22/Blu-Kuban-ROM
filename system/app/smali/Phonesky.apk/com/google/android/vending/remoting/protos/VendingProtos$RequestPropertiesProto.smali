.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestPropertiesProto"
.end annotation


# instance fields
.field private aid_:Ljava/lang/String;

.field private cachedSize:I

.field private clientId_:Ljava/lang/String;

.field private hasAid:Z

.field private hasClientId:Z

.field private hasLoggingId:Z

.field private hasOperatorName:Z

.field private hasOperatorNumericName:Z

.field private hasProductNameAndVersion:Z

.field private hasSimOperatorName:Z

.field private hasSimOperatorNumericName:Z

.field private hasSoftwareVersion:Z

.field private hasUserAuthToken:Z

.field private hasUserAuthTokenSecure:Z

.field private hasUserCountry:Z

.field private hasUserLanguage:Z

.field private loggingId_:Ljava/lang/String;

.field private operatorName_:Ljava/lang/String;

.field private operatorNumericName_:Ljava/lang/String;

.field private productNameAndVersion_:Ljava/lang/String;

.field private simOperatorName_:Ljava/lang/String;

.field private simOperatorNumericName_:Ljava/lang/String;

.field private softwareVersion_:I

.field private userAuthTokenSecure_:Z

.field private userAuthToken_:Ljava/lang/String;

.field private userCountry_:Ljava/lang/String;

.field private userLanguage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16726
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 16731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthToken_:Ljava/lang/String;

    .line 16748
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure_:Z

    .line 16765
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->softwareVersion_:I

    .line 16782
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->aid_:Ljava/lang/String;

    .line 16799
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion_:Ljava/lang/String;

    .line 16816
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userLanguage_:Ljava/lang/String;

    .line 16833
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userCountry_:Ljava/lang/String;

    .line 16850
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorName_:Ljava/lang/String;

    .line 16867
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorName_:Ljava/lang/String;

    .line 16884
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName_:Ljava/lang/String;

    .line 16901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName_:Ljava/lang/String;

    .line 16918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->clientId_:Ljava/lang/String;

    .line 16935
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->loggingId_:Ljava/lang/String;

    .line 17020
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    .line 16726
    return-void
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16783
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->aid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 17023
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 17025
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSerializedSize()I

    .line 17027
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16919
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16936
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->loggingId_:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16851
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumericName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16885
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName_:Ljava/lang/String;

    return-object v0
.end method

.method public getProductNameAndVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16800
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 17032
    const/4 v0, 0x0

    .line 17033
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17034
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17037
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 17038
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthTokenSecure()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17041
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 17042
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSoftwareVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17045
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 17046
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17049
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 17050
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getProductNameAndVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17053
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 17054
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17057
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 17058
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17061
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 17062
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17065
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 17066
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17069
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 17070
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorNumericName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17073
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 17074
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorNumericName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17077
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 17078
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17081
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 17082
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getLoggingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17085
    :cond_d7
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    .line 17086
    return v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16868
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorNumericName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16902
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()I
    .registers 2

    .prologue
    .line 16766
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->softwareVersion_:I

    return v0
.end method

.method public getUserAuthToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16732
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAuthTokenSecure()Z
    .registers 2

    .prologue
    .line 16749
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure_:Z

    return v0
.end method

.method public getUserCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16834
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16817
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAid()Z
    .registers 2

    .prologue
    .line 16784
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid:Z

    return v0
.end method

.method public hasClientId()Z
    .registers 2

    .prologue
    .line 16920
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    return v0
.end method

.method public hasLoggingId()Z
    .registers 2

    .prologue
    .line 16937
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    return v0
.end method

.method public hasOperatorName()Z
    .registers 2

    .prologue
    .line 16852
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    return v0
.end method

.method public hasOperatorNumericName()Z
    .registers 2

    .prologue
    .line 16886
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    return v0
.end method

.method public hasProductNameAndVersion()Z
    .registers 2

    .prologue
    .line 16801
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion:Z

    return v0
.end method

.method public hasSimOperatorName()Z
    .registers 2

    .prologue
    .line 16869
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    return v0
.end method

.method public hasSimOperatorNumericName()Z
    .registers 2

    .prologue
    .line 16903
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    return v0
.end method

.method public hasSoftwareVersion()Z
    .registers 2

    .prologue
    .line 16767
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion:Z

    return v0
.end method

.method public hasUserAuthToken()Z
    .registers 2

    .prologue
    .line 16733
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken:Z

    return v0
.end method

.method public hasUserAuthTokenSecure()Z
    .registers 2

    .prologue
    .line 16750
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure:Z

    return v0
.end method

.method public hasUserCountry()Z
    .registers 2

    .prologue
    .line 16835
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    return v0
.end method

.method public hasUserLanguage()Z
    .registers 2

    .prologue
    .line 16818
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17094
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17095
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_76

    .line 17099
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17100
    :sswitch_d
    return-object p0

    .line 17105
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17109
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserAuthTokenSecure(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17113
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSoftwareVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17117
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setAid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17121
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setProductNameAndVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17125
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserLanguage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17129
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17133
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17137
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSimOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17141
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17145
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSimOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17149
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setClientId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17153
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setLoggingId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 17095
    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x42 -> :sswitch_46
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
    .line 16724
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-result-object v0

    return-object v0
.end method

.method public setAid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid:Z

    .line 16787
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->aid_:Ljava/lang/String;

    .line 16788
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    .line 16923
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->clientId_:Ljava/lang/String;

    .line 16924
    return-object p0
.end method

.method public setLoggingId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    .line 16940
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->loggingId_:Ljava/lang/String;

    .line 16941
    return-object p0
.end method

.method public setOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    .line 16855
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorName_:Ljava/lang/String;

    .line 16856
    return-object p0
.end method

.method public setOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    .line 16889
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName_:Ljava/lang/String;

    .line 16890
    return-object p0
.end method

.method public setProductNameAndVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion:Z

    .line 16804
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion_:Ljava/lang/String;

    .line 16805
    return-object p0
.end method

.method public setSimOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    .line 16872
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorName_:Ljava/lang/String;

    .line 16873
    return-object p0
.end method

.method public setSimOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    .line 16906
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName_:Ljava/lang/String;

    .line 16907
    return-object p0
.end method

.method public setSoftwareVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion:Z

    .line 16770
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->softwareVersion_:I

    .line 16771
    return-object p0
.end method

.method public setUserAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken:Z

    .line 16736
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthToken_:Ljava/lang/String;

    .line 16737
    return-object p0
.end method

.method public setUserAuthTokenSecure(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure:Z

    .line 16753
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure_:Z

    .line 16754
    return-object p0
.end method

.method public setUserCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    .line 16838
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userCountry_:Ljava/lang/String;

    .line 16839
    return-object p0
.end method

.method public setUserLanguage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    .line 16821
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userLanguage_:Ljava/lang/String;

    .line 16822
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
    .line 16979
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 16980
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16982
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 16983
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthTokenSecure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 16985
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 16986
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSoftwareVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 16988
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 16989
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16991
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 16992
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getProductNameAndVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16994
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 16995
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16997
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 16998
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17000
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 17001
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17003
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 17004
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17006
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 17007
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorNumericName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17009
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 17010
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorNumericName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17012
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 17013
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17015
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 17016
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getLoggingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17018
    :cond_bc
    return-void
.end method
