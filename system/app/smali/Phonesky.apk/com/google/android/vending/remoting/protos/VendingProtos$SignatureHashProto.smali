.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignatureHashProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasHash:Z

.field private hasPackageName:Z

.field private hasVersionCode:Z

.field private hash_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private packageName_:Ljava/lang/String;

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18485
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 18490
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->packageName_:Ljava/lang/String;

    .line 18507
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->versionCode_:I

    .line 18524
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hash_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 18566
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->cachedSize:I

    .line 18485
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 18568
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 18570
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getSerializedSize()I

    .line 18572
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->cachedSize:I

    return v0
.end method

.method public getHash()Lcom/google/protobuf/micro/ByteStringMicro;
    .registers 2

    .prologue
    .line 18525
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hash_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18491
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 18576
    const/4 v0, 0x0

    .line 18577
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 18578
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18581
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 18582
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18585
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasHash()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 18586
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getHash()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18589
    :cond_31
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->cachedSize:I

    .line 18590
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 18508
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->versionCode_:I

    return v0
.end method

.method public hasHash()Z
    .registers 2

    .prologue
    .line 18526
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasHash:Z

    return v0
.end method

.method public hasPackageName()Z
    .registers 2

    .prologue
    .line 18492
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasPackageName:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 18509
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18597
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 18598
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 18602
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18603
    :sswitch_d
    return-object p0

    .line 18608
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    goto :goto_0

    .line 18612
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    goto :goto_0

    .line 18616
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setHash(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    goto :goto_0

    .line 18598
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
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
    .line 18483
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v0

    return-object v0
.end method

.method public setHash(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasHash:Z

    .line 18529
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hash_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 18530
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasPackageName:Z

    .line 18495
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->packageName_:Ljava/lang/String;

    .line 18496
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasVersionCode:Z

    .line 18512
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->versionCode_:I

    .line 18513
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
    .line 18555
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18556
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 18558
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 18559
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 18561
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasHash()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 18562
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getHash()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 18564
    :cond_2a
    return-void
.end method
