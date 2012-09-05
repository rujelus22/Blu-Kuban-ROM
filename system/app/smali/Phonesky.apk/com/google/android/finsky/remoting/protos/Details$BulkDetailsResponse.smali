.class public final Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Details.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BulkDetailsResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private entry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->entry_:Ljava/util/List;

    .line 409
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->cachedSize:I

    .line 354
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 375
    if-nez p1, :cond_8

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 378
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->entry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->entry_:Ljava/util/List;

    .line 381
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->entry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 411
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 413
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->getSerializedSize()I

    .line 415
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->cachedSize:I

    return v0
.end method

.method public getEntryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->entry_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 419
    const/4 v2, 0x0

    .line 420
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->getEntryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    .line 421
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 424
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    :cond_1c
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->cachedSize:I

    .line 425
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 433
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1a

    .line 437
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    :sswitch_d
    return-object p0

    .line 443
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;-><init>()V

    .line 444
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 445
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->addEntry(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    goto :goto_0

    .line 433
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
    .line 352
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    move-result-object v0

    return-object v0
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
    .line 404
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->getEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    .line 405
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 407
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    :cond_19
    return-void
.end method
