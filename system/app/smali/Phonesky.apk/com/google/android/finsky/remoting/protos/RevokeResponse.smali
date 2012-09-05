.class public final Lcom/google/android/finsky/remoting/protos/RevokeResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RevokeResponse.java"


# instance fields
.field private cachedSize:I

.field private hasLibraryUpdate:Z

.field private libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->cachedSize:I

    .line 7
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 53
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->getSerializedSize()I

    .line 55
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->cachedSize:I

    return v0
.end method

.method public getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->hasLibraryUpdate()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_11
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->cachedSize:I

    .line 65
    return v0
.end method

.method public hasLibraryUpdate()Z
    .registers 2

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->hasLibraryUpdate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 73
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1a

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    :sswitch_d
    return-object p0

    .line 83
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;-><init>()V

    .line 84
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    goto :goto_0

    .line 73
    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    move-result-object v0

    return-object v0
.end method

.method public setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 16
    if-nez p1, :cond_8

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->hasLibraryUpdate:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 21
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
    .line 44
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 47
    :cond_e
    return-void
.end method
