.class public final Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Details.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BulkDetailsEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private doc_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

.field private hasDoc:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->doc_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 509
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->cachedSize:I

    .line 467
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 511
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->cachedSize:I

    if-gez v0, :cond_7

    .line 513
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getSerializedSize()I

    .line 515
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->cachedSize:I

    return v0
.end method

.method public getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->doc_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->hasDoc()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 521
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 524
    :cond_11
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->cachedSize:I

    .line 525
    return v0
.end method

.method public hasDoc()Z
    .registers 2

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->hasDoc:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 533
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1a

    .line 537
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    :sswitch_d
    return-object p0

    .line 543
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;-><init>()V

    .line 544
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 545
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->setDoc(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    goto :goto_0

    .line 533
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
    .line 465
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    move-result-object v0

    return-object v0
.end method

.method public setDoc(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    .registers 3
    .parameter "value"

    .prologue
    .line 476
    if-nez p1, :cond_8

    .line 477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 479
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->hasDoc:Z

    .line 480
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->doc_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 481
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
    .line 504
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->hasDoc()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 507
    :cond_e
    return-void
.end method
