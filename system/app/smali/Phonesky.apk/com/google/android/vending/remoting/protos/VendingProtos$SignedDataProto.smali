.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignedDataProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSignature:Z

.field private hasSignedData:Z

.field private signature_:Ljava/lang/String;

.field private signedData_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18638
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 18643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signedData_:Ljava/lang/String;

    .line 18660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signature_:Ljava/lang/String;

    .line 18697
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->cachedSize:I

    .line 18638
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 18699
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 18701
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSerializedSize()I

    .line 18703
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 18707
    const/4 v0, 0x0

    .line 18708
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignedData()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 18709
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignedData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18712
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 18713
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18716
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->cachedSize:I

    .line 18717
    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18661
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18644
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signedData_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSignature()Z
    .registers 2

    .prologue
    .line 18662
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignature:Z

    return v0
.end method

.method public hasSignedData()Z
    .registers 2

    .prologue
    .line 18645
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignedData:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18724
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 18725
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 18729
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18730
    :sswitch_d
    return-object p0

    .line 18735
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->setSignedData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    goto :goto_0

    .line 18739
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    goto :goto_0

    .line 18725
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 18636
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v0

    return-object v0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignature:Z

    .line 18665
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signature_:Ljava/lang/String;

    .line 18666
    return-object p0
.end method

.method public setSignedData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignedData:Z

    .line 18648
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signedData_:Ljava/lang/String;

    .line 18649
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
    .line 18689
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignedData()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18690
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignedData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 18692
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 18693
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 18695
    :cond_1c
    return-void
.end method
