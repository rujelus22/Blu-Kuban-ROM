.class public final Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "AndroidAppDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppFileMetadata"
.end annotation


# instance fields
.field private cachedSize:I

.field private downloadUrl_:Ljava/lang/String;

.field private fileType_:I

.field private hasDownloadUrl:Z

.field private hasFileType:Z

.field private hasSize:Z

.field private hasVersionCode:Z

.field private size_:J

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->fileType_:I

    .line 32
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->versionCode_:I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->size_:J

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl_:Ljava/lang/String;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->cachedSize:I

    if-gez v0, :cond_7

    .line 116
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getSerializedSize()I

    .line 118
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->cachedSize:I

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->fileType_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasFileType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 125
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getFileType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 129
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 133
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasDownloadUrl()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 137
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->cachedSize:I

    .line 141
    return v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->size_:J

    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->versionCode_:I

    return v0
.end method

.method public hasDownloadUrl()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasDownloadUrl:Z

    return v0
.end method

.method public hasFileType()Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasFileType:Z

    return v0
.end method

.method public hasSize()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasSize:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 150
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    :sswitch_d
    return-object p0

    .line 160
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setFileType(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    goto :goto_0

    .line 164
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setVersionCode(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    goto :goto_0

    .line 168
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    goto :goto_0

    .line 172
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    goto :goto_0

    .line 150
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasDownloadUrl:Z

    .line 71
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl_:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setFileType(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasFileType:Z

    .line 20
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->fileType_:I

    .line 21
    return-object p0
.end method

.method public setSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .registers 4
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasSize:Z

    .line 54
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->size_:J

    .line 55
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasVersionCode:Z

    .line 37
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->versionCode_:I

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getFileType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 100
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 103
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 104
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 106
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->hasDownloadUrl()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 107
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 109
    :cond_38
    return-void
.end method
