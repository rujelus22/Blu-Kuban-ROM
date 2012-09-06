.class public final Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ResolveLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ResolveLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedeemGiftCard"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 461
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;->cachedSize:I

    .line 446
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 464
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;->cachedSize:I

    if-gez v0, :cond_7

    .line 466
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;->getSerializedSize()I

    .line 468
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 2

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, size:I
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;->cachedSize:I

    .line 475
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 484
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 488
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    :pswitch_d
    return-object p0

    .line 484
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
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
    .line 443
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 2
    .parameter "output"

    .prologue
    .line 459
    return-void
.end method
