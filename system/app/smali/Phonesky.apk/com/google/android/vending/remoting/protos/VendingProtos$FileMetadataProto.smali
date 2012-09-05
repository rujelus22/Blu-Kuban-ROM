.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileMetadataProto"
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

    .line 12394
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12399
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->fileType_:I

    .line 12416
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->versionCode_:I

    .line 12433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->size_:J

    .line 12450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->downloadUrl_:Ljava/lang/String;

    .line 12496
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->cachedSize:I

    .line 12394
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 12498
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 12500
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getSerializedSize()I

    .line 12502
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->cachedSize:I

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12451
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->downloadUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()I
    .registers 2

    .prologue
    .line 12401
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->fileType_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 12506
    const/4 v0, 0x0

    .line 12507
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasFileType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 12508
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getFileType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12511
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 12512
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12515
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 12516
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12519
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasDownloadUrl()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 12520
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12523
    :cond_41
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->cachedSize:I

    .line 12524
    return v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 12434
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->size_:J

    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 12417
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->versionCode_:I

    return v0
.end method

.method public hasDownloadUrl()Z
    .registers 2

    .prologue
    .line 12452
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasDownloadUrl:Z

    return v0
.end method

.method public hasFileType()Z
    .registers 2

    .prologue
    .line 12400
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasFileType:Z

    return v0
.end method

.method public hasSize()Z
    .registers 2

    .prologue
    .line 12435
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasSize:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 12418
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12531
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 12532
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 12536
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12537
    :sswitch_d
    return-object p0

    .line 12542
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->setFileType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    goto :goto_0

    .line 12546
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    goto :goto_0

    .line 12550
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->setSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    goto :goto_0

    .line 12554
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->setDownloadUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    goto :goto_0

    .line 12532
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
    .line 12392
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 12454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasDownloadUrl:Z

    .line 12455
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->downloadUrl_:Ljava/lang/String;

    .line 12456
    return-object p0
.end method

.method public setFileType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 12403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasFileType:Z

    .line 12404
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->fileType_:I

    .line 12405
    return-object p0
.end method

.method public setSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 12437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasSize:Z

    .line 12438
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->size_:J

    .line 12439
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 12420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasVersionCode:Z

    .line 12421
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->versionCode_:I

    .line 12422
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
    .line 12482
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12483
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getFileType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 12485
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 12486
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 12488
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 12489
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 12491
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasDownloadUrl()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 12492
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12494
    :cond_38
    return-void
.end method
