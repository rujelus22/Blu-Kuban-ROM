.class public final Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryDirtyData"
.end annotation


# instance fields
.field private backend_:I

.field private cachedSize:I

.field private hasBackend:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->backend_:I

    .line 716
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->cachedSize:I

    .line 680
    return-void
.end method


# virtual methods
.method public getBackend()I
    .registers 2

    .prologue
    .line 687
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->backend_:I

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 718
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->cachedSize:I

    if-gez v0, :cond_7

    .line 720
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->getSerializedSize()I

    .line 722
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 728
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 731
    :cond_11
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->cachedSize:I

    .line 732
    return v0
.end method

.method public hasBackend()Z
    .registers 2

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasBackend:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 739
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 740
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 744
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 745
    :sswitch_d
    return-object p0

    .line 750
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->setBackend(I)Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    goto :goto_0

    .line 740
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
    .line 678
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    move-result-object v0

    return-object v0
.end method

.method public setBackend(I)Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
    .registers 3
    .parameter "value"

    .prologue
    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasBackend:Z

    .line 690
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->backend_:I

    .line 691
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
    .line 711
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasBackend()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 712
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->getBackend()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 714
    :cond_e
    return-void
.end method
