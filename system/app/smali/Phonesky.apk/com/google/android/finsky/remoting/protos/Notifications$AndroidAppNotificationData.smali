.class public final Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidAppNotificationData"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAssetId:Z

.field private hasVersionCode:Z

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->versionCode_:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->assetId_:Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->cachedSize:I

    if-gez v0, :cond_7

    .line 70
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->getSerializedSize()I

    .line 72
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 82
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->cachedSize:I

    .line 86
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 15
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->versionCode_:I

    return v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->hasAssetId:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 94
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    :sswitch_d
    return-object p0

    .line 104
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->setVersionCode(I)Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    goto :goto_0

    .line 108
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->setAssetId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    goto :goto_0

    .line 94
    :sswitch_data_1e
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
    .registers 3
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->hasAssetId:Z

    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->assetId_:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->hasVersionCode:Z

    .line 19
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->versionCode_:I

    .line 20
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
    .line 58
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 61
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 64
    :cond_1c
    return-void
.end method
