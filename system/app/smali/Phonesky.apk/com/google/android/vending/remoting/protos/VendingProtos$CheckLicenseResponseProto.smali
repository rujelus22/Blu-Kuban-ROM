.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckLicenseResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasResponseCode:Z

.field private hasSignature:Z

.field private hasSignedData:Z

.field private responseCode_:I

.field private signature_:Ljava/lang/String;

.field private signedData_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14711
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14716
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->responseCode_:I

    .line 14733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signedData_:Ljava/lang/String;

    .line 14750
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signature_:Ljava/lang/String;

    .line 14792
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->cachedSize:I

    .line 14711
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 14794
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 14796
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSerializedSize()I

    .line 14798
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->cachedSize:I

    return v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 14717
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 14802
    const/4 v0, 0x0

    .line 14803
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasResponseCode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 14804
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getResponseCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14807
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignedData()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 14808
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignedData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14811
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 14812
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14815
    :cond_31
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->cachedSize:I

    .line 14816
    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14751
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14734
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signedData_:Ljava/lang/String;

    return-object v0
.end method

.method public hasResponseCode()Z
    .registers 2

    .prologue
    .line 14718
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasResponseCode:Z

    return v0
.end method

.method public hasSignature()Z
    .registers 2

    .prologue
    .line 14752
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignature:Z

    return v0
.end method

.method public hasSignedData()Z
    .registers 2

    .prologue
    .line 14735
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignedData:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14823
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 14824
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 14828
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14829
    :sswitch_d
    return-object p0

    .line 14834
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->setResponseCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    goto :goto_0

    .line 14838
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->setSignedData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    goto :goto_0

    .line 14842
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    goto :goto_0

    .line 14824
    :sswitch_data_26
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
    .line 14709
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setResponseCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasResponseCode:Z

    .line 14721
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->responseCode_:I

    .line 14722
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignature:Z

    .line 14755
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signature_:Ljava/lang/String;

    .line 14756
    return-object p0
.end method

.method public setSignedData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignedData:Z

    .line 14738
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signedData_:Ljava/lang/String;

    .line 14739
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
    .line 14781
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 14782
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getResponseCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 14784
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignedData()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 14785
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignedData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14787
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 14788
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14790
    :cond_2a
    return-void
.end method
