.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSubscriptionPeriod:Z

.field private subscriptionPeriod_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3251
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3256
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->subscriptionPeriod_:I

    .line 3287
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->cachedSize:I

    .line 3251
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 3289
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 3291
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->getSerializedSize()I

    .line 3293
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 3297
    const/4 v0, 0x0

    .line 3298
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->hasSubscriptionPeriod()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3299
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->getSubscriptionPeriod()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3302
    :cond_11
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->cachedSize:I

    .line 3303
    return v0
.end method

.method public getSubscriptionPeriod()I
    .registers 2

    .prologue
    .line 3258
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->subscriptionPeriod_:I

    return v0
.end method

.method public hasSubscriptionPeriod()Z
    .registers 2

    .prologue
    .line 3257
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->hasSubscriptionPeriod:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3310
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3311
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 3315
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3316
    :sswitch_d
    return-object p0

    .line 3321
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->setSubscriptionPeriod(I)Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    goto :goto_0

    .line 3311
    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 3249
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    move-result-object v0

    return-object v0
.end method

.method public setSubscriptionPeriod(I)Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 3260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->hasSubscriptionPeriod:Z

    .line 3261
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->subscriptionPeriod_:I

    .line 3262
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
    .line 3282
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->hasSubscriptionPeriod()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3283
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->getSubscriptionPeriod()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3285
    :cond_e
    return-void
.end method
