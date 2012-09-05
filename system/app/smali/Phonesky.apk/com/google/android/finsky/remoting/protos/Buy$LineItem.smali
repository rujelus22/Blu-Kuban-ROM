.class public final Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LineItem"
.end annotation


# instance fields
.field private amount_:Lcom/google/android/finsky/remoting/protos/Buy$Money;

.field private cachedSize:I

.field private description_:Ljava/lang/String;

.field private hasAmount:Z

.field private hasDescription:Z

.field private hasName:Z

.field private hasOffer:Z

.field private name_:Ljava/lang/String;

.field private offer_:Lcom/google/android/finsky/remoting/protos/Common$Offer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2202
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->name_:Ljava/lang/String;

    .line 2224
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->description_:Ljava/lang/String;

    .line 2241
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->offer_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 2261
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->amount_:Lcom/google/android/finsky/remoting/protos/Buy$Money;

    .line 2313
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    .line 2202
    return-void
.end method


# virtual methods
.method public getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;
    .registers 2

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->amount_:Lcom/google/android/finsky/remoting/protos/Buy$Money;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2315
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    if-gez v0, :cond_7

    .line 2317
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getSerializedSize()I

    .line 2319
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 2

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->offer_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2323
    const/4 v0, 0x0

    .line 2324
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2325
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2328
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2329
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2332
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2333
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2336
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2337
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2340
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    .line 2341
    return v0
.end method

.method public hasAmount()Z
    .registers 2

    .prologue
    .line 2262
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount:Z

    return v0
.end method

.method public hasDescription()Z
    .registers 2

    .prologue
    .line 2226
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 2209
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName:Z

    return v0
.end method

.method public hasOffer()Z
    .registers 2

    .prologue
    .line 2242
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2348
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2349
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 2353
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2354
    :sswitch_d
    return-object p0

    .line 2359
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 2363
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 2367
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 2368
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2369
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 2373
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_2a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$Money;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;-><init>()V

    .line 2374
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$Money;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2375
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setAmount(Lcom/google/android/finsky/remoting/protos/Buy$Money;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 2349
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_2a
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
    .line 2200
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/android/finsky/remoting/protos/Buy$Money;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .registers 3
    .parameter "value"

    .prologue
    .line 2265
    if-nez p1, :cond_8

    .line 2266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2268
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount:Z

    .line 2269
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->amount_:Lcom/google/android/finsky/remoting/protos/Buy$Money;

    .line 2270
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .registers 3
    .parameter "value"

    .prologue
    .line 2228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription:Z

    .line 2229
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->description_:Ljava/lang/String;

    .line 2230
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .registers 3
    .parameter "value"

    .prologue
    .line 2211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName:Z

    .line 2212
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->name_:Ljava/lang/String;

    .line 2213
    return-object p0
.end method

.method public setOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .registers 3
    .parameter "value"

    .prologue
    .line 2245
    if-nez p1, :cond_8

    .line 2246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2248
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer:Z

    .line 2249
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->offer_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 2250
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
    .line 2299
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2300
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2302
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2303
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2305
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2306
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2308
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2309
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2311
    :cond_38
    return-void
.end method
