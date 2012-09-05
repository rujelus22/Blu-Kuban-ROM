.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalPreapprovalCredentialsResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPaypalAccountKey:Z

.field private hasPaypalEmail:Z

.field private hasResultCode:Z

.field private paypalAccountKey_:Ljava/lang/String;

.field private paypalEmail_:Ljava/lang/String;

.field private resultCode_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10279
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10284
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->resultCode_:I

    .line 10301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalAccountKey_:Ljava/lang/String;

    .line 10318
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalEmail_:Ljava/lang/String;

    .line 10358
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->cachedSize:I

    .line 10279
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 10360
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 10362
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getSerializedSize()I

    .line 10364
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->cachedSize:I

    return v0
.end method

.method public getPaypalAccountKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10302
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalAccountKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypalEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10319
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 10286
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->resultCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 10368
    const/4 v0, 0x0

    .line 10369
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasResultCode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 10370
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getResultCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10373
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalAccountKey()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 10374
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getPaypalAccountKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10377
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalEmail()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 10378
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getPaypalEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10381
    :cond_31
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->cachedSize:I

    .line 10382
    return v0
.end method

.method public hasPaypalAccountKey()Z
    .registers 2

    .prologue
    .line 10303
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalAccountKey:Z

    return v0
.end method

.method public hasPaypalEmail()Z
    .registers 2

    .prologue
    .line 10320
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalEmail:Z

    return v0
.end method

.method public hasResultCode()Z
    .registers 2

    .prologue
    .line 10285
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasResultCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10389
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10390
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 10394
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10395
    :sswitch_d
    return-object p0

    .line 10400
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->setResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    goto :goto_0

    .line 10404
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->setPaypalAccountKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    goto :goto_0

    .line 10408
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->setPaypalEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    goto :goto_0

    .line 10390
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
    .line 10277
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setPaypalAccountKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 10305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalAccountKey:Z

    .line 10306
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalAccountKey_:Ljava/lang/String;

    .line 10307
    return-object p0
.end method

.method public setPaypalEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 10322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalEmail:Z

    .line 10323
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalEmail_:Ljava/lang/String;

    .line 10324
    return-object p0
.end method

.method public setResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 10288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasResultCode:Z

    .line 10289
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->resultCode_:I

    .line 10290
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
    .line 10347
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasResultCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10348
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getResultCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 10350
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalAccountKey()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 10351
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getPaypalAccountKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10353
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalEmail()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 10354
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getPaypalEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10356
    :cond_2a
    return-void
.end method
