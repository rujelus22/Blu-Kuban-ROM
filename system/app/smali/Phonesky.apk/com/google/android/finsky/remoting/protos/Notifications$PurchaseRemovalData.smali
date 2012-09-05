.class public final Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseRemovalData"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasMalicious:Z

.field private malicious_:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->malicious_:Z

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->cachedSize:I

    .line 130
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->cachedSize:I

    if-gez v0, :cond_7

    .line 170
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->getSerializedSize()I

    .line 172
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->cachedSize:I

    return v0
.end method

.method public getMalicious()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->malicious_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->hasMalicious()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->getMalicious()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_11
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->cachedSize:I

    .line 182
    return v0
.end method

.method public hasMalicious()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->hasMalicious:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 190
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    :sswitch_d
    return-object p0

    .line 200
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->setMalicious(Z)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    goto :goto_0

    .line 190
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
    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    move-result-object v0

    return-object v0
.end method

.method public setMalicious(Z)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
    .registers 3
    .parameter "value"

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->hasMalicious:Z

    .line 140
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->malicious_:Z

    .line 141
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
    .line 161
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->hasMalicious()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->getMalicious()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 164
    :cond_e
    return-void
.end method
