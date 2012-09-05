.class public final Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CarrierBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CarrierBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PasswordPrompt"
.end annotation


# instance fields
.field private cachedSize:I

.field private forgotPasswordUrl_:Ljava/lang/String;

.field private hasForgotPasswordUrl:Z

.field private hasPrompt:Z

.field private prompt_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->prompt_:Ljava/lang/String;

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->forgotPasswordUrl_:Ljava/lang/String;

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->cachedSize:I

    .line 200
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->cachedSize:I

    if-gez v0, :cond_7

    .line 261
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->getSerializedSize()I

    .line 263
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->cachedSize:I

    return v0
.end method

.method public getForgotPasswordUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->forgotPasswordUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->prompt_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->hasPrompt()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 269
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->getPrompt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->hasForgotPasswordUrl()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 273
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->getForgotPasswordUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->cachedSize:I

    .line 277
    return v0
.end method

.method public hasForgotPasswordUrl()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->hasForgotPasswordUrl:Z

    return v0
.end method

.method public hasPrompt()Z
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->hasPrompt:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 285
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    :sswitch_d
    return-object p0

    .line 295
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->setPrompt(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;

    goto :goto_0

    .line 299
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->setForgotPasswordUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;

    goto :goto_0

    .line 285
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
    .line 198
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;

    move-result-object v0

    return-object v0
.end method

.method public setForgotPasswordUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;
    .registers 3
    .parameter "value"

    .prologue
    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->hasForgotPasswordUrl:Z

    .line 227
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->forgotPasswordUrl_:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;
    .registers 3
    .parameter "value"

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->hasPrompt:Z

    .line 210
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->prompt_:Ljava/lang/String;

    .line 211
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
    .line 249
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->hasPrompt()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 252
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->hasForgotPasswordUrl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 253
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$PasswordPrompt;->getForgotPasswordUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 255
    :cond_1c
    return-void
.end method
