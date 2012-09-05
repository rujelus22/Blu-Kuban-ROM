.class public final Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Delivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Delivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeliveryResponse"
.end annotation


# instance fields
.field private appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field private cachedSize:I

.field private hasAppDeliveryData:Z

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->status_:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getSerializedSize()I

    .line 84
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 90
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasAppDeliveryData()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 94
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->cachedSize:I

    .line 98
    return v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->status_:I

    return v0
.end method

.method public hasAppDeliveryData()Z
    .registers 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasAppDeliveryData:Z

    return v0
.end method

.method public hasStatus()Z
    .registers 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasStatus:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 106
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_22

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    :sswitch_d
    return-object p0

    .line 116
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    goto :goto_0

    .line 120
    :sswitch_16
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    .line 121
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    goto :goto_0

    .line 106
    :sswitch_data_22
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 41
    if-nez p1, :cond_8

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasAppDeliveryData:Z

    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 46
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasStatus:Z

    .line 25
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->status_:I

    .line 26
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
    .line 70
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 73
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasAppDeliveryData()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 76
    :cond_1c
    return-void
.end method
