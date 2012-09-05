.class public final Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ResolveLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ResolveLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectPurchase"
.end annotation


# instance fields
.field private cachedSize:I

.field private detailsUrl_:Ljava/lang/String;

.field private hasDetailsUrl:Z

.field private hasOfferType:Z

.field private hasParentDocid:Z

.field private hasPurchaseDocid:Z

.field private offerType_:I

.field private parentDocid_:Ljava/lang/String;

.field private purchaseDocid_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->detailsUrl_:Ljava/lang/String;

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->purchaseDocid_:Ljava/lang/String;

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->parentDocid_:Ljava/lang/String;

    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->offerType_:I

    .line 292
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->cachedSize:I

    .line 193
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->cachedSize:I

    if-gez v0, :cond_7

    .line 296
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getSerializedSize()I

    .line 298
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->cachedSize:I

    return v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferType()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->offerType_:I

    return v0
.end method

.method public getParentDocid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->parentDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseDocid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->purchaseDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 304
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasPurchaseDocid()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 308
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getPurchaseDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasParentDocid()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 312
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getParentDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasOfferType()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 316
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getOfferType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->cachedSize:I

    .line 320
    return v0
.end method

.method public hasDetailsUrl()Z
    .registers 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasDetailsUrl:Z

    return v0
.end method

.method public hasOfferType()Z
    .registers 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasOfferType:Z

    return v0
.end method

.method public hasParentDocid()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasParentDocid:Z

    return v0
.end method

.method public hasPurchaseDocid()Z
    .registers 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasPurchaseDocid:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 328
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    :sswitch_d
    return-object p0

    .line 338
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    goto :goto_0

    .line 342
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->setPurchaseDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    goto :goto_0

    .line 346
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->setParentDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    goto :goto_0

    .line 350
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    goto :goto_0

    .line 328
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x20 -> :sswitch_26
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
    .line 191
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    move-result-object v0

    return-object v0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .registers 3
    .parameter "value"

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasDetailsUrl:Z

    .line 203
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->detailsUrl_:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .registers 3
    .parameter "value"

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasOfferType:Z

    .line 254
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->offerType_:I

    .line 255
    return-object p0
.end method

.method public setParentDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .registers 3
    .parameter "value"

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasParentDocid:Z

    .line 237
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->parentDocid_:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public setPurchaseDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .registers 3
    .parameter "value"

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasPurchaseDocid:Z

    .line 220
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->purchaseDocid_:Ljava/lang/String;

    .line 221
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
    .line 278
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 281
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasPurchaseDocid()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 282
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getPurchaseDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 284
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasParentDocid()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 285
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getParentDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 287
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasOfferType()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 288
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getOfferType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 290
    :cond_38
    return-void
.end method
