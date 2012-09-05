.class public final Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelatedSearch"
.end annotation


# instance fields
.field private backendId_:I

.field private cachedSize:I

.field private current_:Z

.field private docType_:I

.field private hasBackendId:Z

.field private hasCurrent:Z

.field private hasDocType:Z

.field private hasHeader:Z

.field private hasSearchUrl:Z

.field private header_:Ljava/lang/String;

.field private searchUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->searchUrl_:Ljava/lang/String;

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->header_:Ljava/lang/String;

    .line 345
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->backendId_:I

    .line 362
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->docType_:I

    .line 379
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->current_:Z

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->cachedSize:I

    .line 306
    return-void
.end method


# virtual methods
.method public getBackendId()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->backendId_:I

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->cachedSize:I

    if-gez v0, :cond_7

    .line 430
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getSerializedSize()I

    .line 432
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->cachedSize:I

    return v0
.end method

.method public getCurrent()Z
    .registers 2

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->current_:Z

    return v0
.end method

.method public getDocType()I
    .registers 2

    .prologue
    .line 364
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->docType_:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->searchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasSearchUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 438
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getSearchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 442
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasBackendId()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 446
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getBackendId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasDocType()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 450
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getDocType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasCurrent()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 454
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getCurrent()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    :cond_51
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->cachedSize:I

    .line 458
    return v0
.end method

.method public hasBackendId()Z
    .registers 2

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasBackendId:Z

    return v0
.end method

.method public hasCurrent()Z
    .registers 2

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasCurrent:Z

    return v0
.end method

.method public hasDocType()Z
    .registers 2

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasDocType:Z

    return v0
.end method

.method public hasHeader()Z
    .registers 2

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasHeader:Z

    return v0
.end method

.method public hasSearchUrl()Z
    .registers 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasSearchUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 466
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 470
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    :sswitch_d
    return-object p0

    .line 476
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->setSearchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    goto :goto_0

    .line 480
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    goto :goto_0

    .line 484
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->setBackendId(I)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    goto :goto_0

    .line 488
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->setDocType(I)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    goto :goto_0

    .line 492
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->setCurrent(Z)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    goto :goto_0

    .line 466
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x20 -> :sswitch_26
        0x28 -> :sswitch_2e
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
    .line 304
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    move-result-object v0

    return-object v0
.end method

.method public setBackendId(I)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .registers 3
    .parameter "value"

    .prologue
    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasBackendId:Z

    .line 350
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->backendId_:I

    .line 351
    return-object p0
.end method

.method public setCurrent(Z)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .registers 3
    .parameter "value"

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasCurrent:Z

    .line 384
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->current_:Z

    .line 385
    return-object p0
.end method

.method public setDocType(I)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .registers 3
    .parameter "value"

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasDocType:Z

    .line 367
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->docType_:I

    .line 368
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .registers 3
    .parameter "value"

    .prologue
    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasHeader:Z

    .line 333
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->header_:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public setSearchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .registers 3
    .parameter "value"

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasSearchUrl:Z

    .line 316
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->searchUrl_:Ljava/lang/String;

    .line 317
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
    .line 409
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasSearchUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 412
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 413
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 415
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasBackendId()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 416
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getBackendId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 418
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasDocType()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 419
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getDocType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 421
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 422
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getCurrent()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 424
    :cond_46
    return-void
.end method
