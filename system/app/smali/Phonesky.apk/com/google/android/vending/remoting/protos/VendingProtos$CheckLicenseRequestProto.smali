.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckLicenseRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasNonce:Z

.field private hasPackageName:Z

.field private hasVersionCode:Z

.field private nonce_:J

.field private packageName_:Ljava/lang/String;

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 14558
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14563
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->packageName_:Ljava/lang/String;

    .line 14580
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->versionCode_:I

    .line 14597
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->nonce_:J

    .line 14639
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->cachedSize:I

    .line 14558
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 14641
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 14643
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getSerializedSize()I

    .line 14645
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->cachedSize:I

    return v0
.end method

.method public getNonce()J
    .registers 3

    .prologue
    .line 14598
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->nonce_:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14564
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 14649
    const/4 v0, 0x0

    .line 14650
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 14651
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14654
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 14655
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14658
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasNonce()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 14659
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getNonce()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14662
    :cond_31
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->cachedSize:I

    .line 14663
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 14581
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->versionCode_:I

    return v0
.end method

.method public hasNonce()Z
    .registers 2

    .prologue
    .line 14599
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasNonce:Z

    return v0
.end method

.method public hasPackageName()Z
    .registers 2

    .prologue
    .line 14565
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasPackageName:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 14582
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14670
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 14671
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 14675
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14676
    :sswitch_d
    return-object p0

    .line 14681
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    goto :goto_0

    .line 14685
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    goto :goto_0

    .line 14689
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    goto :goto_0

    .line 14671
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
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
    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 14601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasNonce:Z

    .line 14602
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->nonce_:J

    .line 14603
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasPackageName:Z

    .line 14568
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->packageName_:Ljava/lang/String;

    .line 14569
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasVersionCode:Z

    .line 14585
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->versionCode_:I

    .line 14586
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14628
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 14629
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14631
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 14632
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 14634
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasNonce()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 14635
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getNonce()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 14637
    :cond_2a
    return-void
.end method
