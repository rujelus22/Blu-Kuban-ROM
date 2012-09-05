.class public final Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BuyInstruments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BuyInstruments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateInstrumentResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private checkoutTokenRequired_:Z

.field private errorInputField_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;",
            ">;"
        }
    .end annotation
.end field

.field private hasCheckoutTokenRequired:Z

.field private hasInstrumentId:Z

.field private hasResult:Z

.field private hasUserMessageHtml:Z

.field private instrumentId_:Ljava/lang/String;

.field private result_:I

.field private userMessageHtml_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 147
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->result_:I

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId_:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml_:Ljava/lang/String;

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField_:Ljava/util/List;

    .line 231
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired_:Z

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->cachedSize:I

    .line 137
    return-void
.end method


# virtual methods
.method public addErrorInputField(Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 214
    if-nez p1, :cond_8

    .line 215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 217
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField_:Ljava/util/List;

    .line 220
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 286
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getSerializedSize()I

    .line 288
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->cachedSize:I

    return v0
.end method

.method public getCheckoutTokenRequired()Z
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired_:Z

    return v0
.end method

.method public getErrorInputFieldList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField_:Ljava/util/List;

    return-object v0
.end method

.method public getInstrumentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 294
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 297
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 298
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getInstrumentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 301
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 302
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 305
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    .line 306
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 309
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 310
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 313
    :cond_5c
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->cachedSize:I

    .line 314
    return v2
.end method

.method public getUserMessageHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCheckoutTokenRequired()Z
    .registers 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired:Z

    return v0
.end method

.method public hasInstrumentId()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId:Z

    return v0
.end method

.method public hasResult()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasResult:Z

    return v0
.end method

.method public hasUserMessageHtml()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 322
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3a

    .line 326
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    :sswitch_d
    return-object p0

    .line 332
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->setResult(I)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 336
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 340
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->setUserMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 344
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;-><init>()V

    .line 345
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 346
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->addErrorInputField(Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 350
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 322
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_32
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
    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired:Z

    .line 236
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired_:Z

    .line 237
    return-object p0
.end method

.method public setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId:Z

    .line 169
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId_:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public setResult(I)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasResult:Z

    .line 152
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->result_:I

    .line 153
    return-object p0
.end method

.method public setUserMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    .line 186
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml_:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 266
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 268
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 269
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getInstrumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 271
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 272
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 274
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    .line 275
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 277
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 278
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 280
    :cond_51
    return-void
.end method
