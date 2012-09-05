.class public final Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseNotificationResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfo;

.field private hasDebugInfo:Z

.field private hasLocalizedErrorMessage:Z

.field private hasPurchaseId:Z

.field private hasStatus:Z

.field private localizedErrorMessage_:Ljava/lang/String;

.field private purchaseId_:Ljava/lang/String;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->status_:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->purchaseId_:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->localizedErrorMessage_:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfo;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 123
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getSerializedSize()I

    .line 125
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->cachedSize:I

    return v0
.end method

.method public getDebugInfo()Lcom/google/android/finsky/remoting/protos/DebugInfo;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfo;

    return-object v0
.end method

.method public getLocalizedErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->localizedErrorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->purchaseId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 131
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasDebugInfo()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 135
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getDebugInfo()Lcom/google/android/finsky/remoting/protos/DebugInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasLocalizedErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 139
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getLocalizedErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasPurchaseId()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 143
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getPurchaseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->cachedSize:I

    .line 147
    return v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->status_:I

    return v0
.end method

.method public hasDebugInfo()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasDebugInfo:Z

    return v0
.end method

.method public hasLocalizedErrorMessage()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasLocalizedErrorMessage:Z

    return v0
.end method

.method public hasPurchaseId()Z
    .registers 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasPurchaseId:Z

    return v0
.end method

.method public hasStatus()Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasStatus:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 155
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_32

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    :sswitch_d
    return-object p0

    .line 165
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    goto :goto_0

    .line 169
    :sswitch_16
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DebugInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DebugInfo;-><init>()V

    .line 170
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DebugInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 171
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->setDebugInfo(Lcom/google/android/finsky/remoting/protos/DebugInfo;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    goto :goto_0

    .line 175
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DebugInfo;
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->setLocalizedErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    goto :goto_0

    .line 179
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->setPurchaseId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    goto :goto_0

    .line 155
    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_22
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public setDebugInfo(Lcom/google/android/finsky/remoting/protos/DebugInfo;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 74
    if-nez p1, :cond_8

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 77
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasDebugInfo:Z

    .line 78
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfo;

    .line 79
    return-object p0
.end method

.method public setLocalizedErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasLocalizedErrorMessage:Z

    .line 58
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->localizedErrorMessage_:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public setPurchaseId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasPurchaseId:Z

    .line 41
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->purchaseId_:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasStatus:Z

    .line 24
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->status_:I

    .line 25
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
    .line 105
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 108
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 109
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getDebugInfo()Lcom/google/android/finsky/remoting/protos/DebugInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 111
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasLocalizedErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 112
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getLocalizedErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 114
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasPurchaseId()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 115
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getPurchaseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 117
    :cond_38
    return-void
.end method
