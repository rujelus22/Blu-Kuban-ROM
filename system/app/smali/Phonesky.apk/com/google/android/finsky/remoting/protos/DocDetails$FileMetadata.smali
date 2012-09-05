.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileMetadata"
.end annotation


# instance fields
.field private cachedSize:I

.field private fileType_:I

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

    .line 316
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 326
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->fileType_:I

    .line 343
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->versionCode_:I

    .line 360
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->size_:J

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->cachedSize:I

    .line 316
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->cachedSize:I

    if-gez v0, :cond_7

    .line 403
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getSerializedSize()I

    .line 405
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->cachedSize:I

    return v0
.end method

.method public getFileType()I
    .registers 2

    .prologue
    .line 328
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->fileType_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasFileType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 411
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getFileType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 414
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 415
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 419
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->cachedSize:I

    .line 423
    return v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->size_:J

    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->versionCode_:I

    return v0
.end method

.method public hasFileType()Z
    .registers 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasFileType:Z

    return v0
.end method

.method public hasSize()Z
    .registers 2

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasSize:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 431
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 435
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    :sswitch_d
    return-object p0

    .line 441
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->setFileType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    goto :goto_0

    .line 445
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->setVersionCode(I)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    goto :goto_0

    .line 449
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->setSize(J)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    goto :goto_0

    .line 431
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 314
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setFileType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasFileType:Z

    .line 331
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->fileType_:I

    .line 332
    return-object p0
.end method

.method public setSize(J)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    .registers 4
    .parameter "value"

    .prologue
    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasSize:Z

    .line 365
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->size_:J

    .line 366
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasVersionCode:Z

    .line 348
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->versionCode_:I

    .line 349
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
    .line 388
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 389
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getFileType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 391
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 392
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 394
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 395
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 397
    :cond_2a
    return-void
.end method
