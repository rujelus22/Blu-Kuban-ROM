.class public final Lcom/google/android/finsky/remoting/protos/Common$Docid;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Docid"
.end annotation


# instance fields
.field private backendDocid_:Ljava/lang/String;

.field private backend_:I

.field private cachedSize:I

.field private hasBackend:Z

.field private hasBackendDocid:Z

.field private hasType:Z

.field private type_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 338
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backendDocid_:Ljava/lang/String;

    .line 355
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->type_:I

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backend_:I

    .line 415
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    .line 333
    return-void
.end method


# virtual methods
.method public getBackend()I
    .registers 2

    .prologue
    .line 374
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backend_:I

    return v0
.end method

.method public getBackendDocid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backendDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 418
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    if-gez v0, :cond_7

    .line 420
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getSerializedSize()I

    .line 422
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 429
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 433
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 437
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    .line 441
    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 357
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->type_:I

    return v0
.end method

.method public hasBackend()Z
    .registers 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend:Z

    return v0
.end method

.method public hasBackendDocid()Z
    .registers 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid:Z

    return v0
.end method

.method public hasType()Z
    .registers 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 450
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 454
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    :sswitch_d
    return-object p0

    .line 460
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->setBackendDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    goto :goto_0

    .line 464
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->setType(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    goto :goto_0

    .line 468
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->setBackend(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    goto :goto_0

    .line 450
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
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
    .line 330
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v0

    return-object v0
.end method

.method public setBackend(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 3
    .parameter "value"

    .prologue
    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend:Z

    .line 377
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backend_:I

    .line 378
    return-object p0
.end method

.method public setBackendDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 3
    .parameter "value"

    .prologue
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid:Z

    .line 343
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backendDocid_:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public setType(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 3
    .parameter "value"

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType:Z

    .line 360
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->type_:I

    .line 361
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
    .line 404
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 405
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 407
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 408
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 410
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 411
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackend()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 413
    :cond_2a
    return-void
.end method
