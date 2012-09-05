.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputValidationError"
.end annotation


# instance fields
.field private cachedSize:I

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorMessage:Z

.field private hasInputField:Z

.field private inputField_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8194
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8219
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->inputField_:I

    .line 8236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->errorMessage_:Ljava/lang/String;

    .line 8272
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->cachedSize:I

    .line 8194
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 8274
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->cachedSize:I

    if-gez v0, :cond_7

    .line 8276
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->getSerializedSize()I

    .line 8278
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->cachedSize:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8237
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputField()I
    .registers 2

    .prologue
    .line 8221
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->inputField_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 8282
    const/4 v0, 0x0

    .line 8283
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasInputField()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8284
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->getInputField()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8287
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 8288
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8291
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->cachedSize:I

    .line 8292
    return v0
.end method

.method public hasErrorMessage()Z
    .registers 2

    .prologue
    .line 8238
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasErrorMessage:Z

    return v0
.end method

.method public hasInputField()Z
    .registers 2

    .prologue
    .line 8220
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasInputField:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8299
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8300
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 8304
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8305
    :sswitch_d
    return-object p0

    .line 8310
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->setInputField(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;

    goto :goto_0

    .line 8314
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;

    goto :goto_0

    .line 8300
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
    .line 8192
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;

    move-result-object v0

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    .registers 3
    .parameter "value"

    .prologue
    .line 8240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasErrorMessage:Z

    .line 8241
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->errorMessage_:Ljava/lang/String;

    .line 8242
    return-object p0
.end method

.method public setInputField(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    .registers 3
    .parameter "value"

    .prologue
    .line 8223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasInputField:Z

    .line 8224
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->inputField_:I

    .line 8225
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
    .line 8264
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasInputField()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8265
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->getInputField()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8267
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8268
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8270
    :cond_1c
    return-void
.end method
