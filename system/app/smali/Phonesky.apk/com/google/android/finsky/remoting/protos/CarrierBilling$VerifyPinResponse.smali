.class public final Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CarrierBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CarrierBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VerifyPinResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->status_:I

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->cachedSize:I

    .line 101
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 148
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->getSerializedSize()I

    .line 150
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 156
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_11
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->cachedSize:I

    .line 160
    return v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->status_:I

    return v0
.end method

.method public hasStatus()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->hasStatus:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 168
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    :sswitch_d
    return-object p0

    .line 178
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;

    goto :goto_0

    .line 168
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
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;

    move-result-object v0

    return-object v0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->hasStatus:Z

    .line 117
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->status_:I

    .line 118
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
    .line 139
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 142
    :cond_e
    return-void
.end method
