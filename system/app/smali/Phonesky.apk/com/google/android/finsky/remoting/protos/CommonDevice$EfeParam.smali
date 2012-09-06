.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EfeParam"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasKey:Z

.field private hasValue:Z

.field private key_:I

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 510
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->key_:I

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->value_:Ljava/lang/String;

    .line 565
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->cachedSize:I

    .line 498
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 568
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->cachedSize:I

    if-gez v0, :cond_7

    .line 570
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->getSerializedSize()I

    .line 572
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->cachedSize:I

    return v0
.end method

.method public getKey()I
    .registers 2

    .prologue
    .line 512
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->key_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 579
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->getKey()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 582
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 583
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 586
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->cachedSize:I

    .line 587
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .registers 2

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasKey:Z

    return v0
.end method

.method public hasValue()Z
    .registers 2

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasValue:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 596
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 600
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    :sswitch_d
    return-object p0

    .line 606
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->setKey(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;

    goto :goto_0

    .line 610
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;

    goto :goto_0

    .line 596
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 495
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;

    move-result-object v0

    return-object v0
.end method

.method public setKey(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    .registers 3
    .parameter "value"

    .prologue
    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasKey:Z

    .line 515
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->key_:I

    .line 516
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    .registers 3
    .parameter "value"

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasValue:Z

    .line 532
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->value_:Ljava/lang/String;

    .line 533
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
    .line 557
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->getKey()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 560
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 561
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 563
    :cond_1c
    return-void
.end method
