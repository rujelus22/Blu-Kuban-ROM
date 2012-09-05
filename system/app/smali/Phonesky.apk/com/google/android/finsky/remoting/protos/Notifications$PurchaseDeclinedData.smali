.class public final Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseDeclinedData"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasReason:Z

.field private hasShowNotification:Z

.field private reason_:I

.field private showNotification_:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->reason_:I

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->showNotification_:Z

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->cachedSize:I

    .line 222
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->cachedSize:I

    if-gez v0, :cond_7

    .line 290
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getSerializedSize()I

    .line 292
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->cachedSize:I

    return v0
.end method

.method public getReason()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 298
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getReason()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasShowNotification()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 302
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getShowNotification()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->cachedSize:I

    .line 306
    return v0
.end method

.method public getShowNotification()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->showNotification_:Z

    return v0
.end method

.method public hasReason()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasReason:Z

    return v0
.end method

.method public hasShowNotification()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasShowNotification:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 314
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    :sswitch_d
    return-object p0

    .line 324
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->setReason(I)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    goto :goto_0

    .line 328
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->setShowNotification(Z)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    goto :goto_0

    .line 314
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
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
    .line 220
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    move-result-object v0

    return-object v0
.end method

.method public setReason(I)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    .registers 3
    .parameter "value"

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasReason:Z

    .line 239
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->reason_:I

    .line 240
    return-object p0
.end method

.method public setShowNotification(Z)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    .registers 3
    .parameter "value"

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasShowNotification:Z

    .line 256
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->showNotification_:Z

    .line 257
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
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getReason()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 281
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasShowNotification()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 282
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getShowNotification()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 284
    :cond_1c
    return-void
.end method
