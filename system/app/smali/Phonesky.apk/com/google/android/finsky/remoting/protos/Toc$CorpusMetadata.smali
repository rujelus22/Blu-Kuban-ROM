.class public final Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CorpusMetadata"
.end annotation


# instance fields
.field private backend_:I

.field private cachedSize:I

.field private hasBackend:Z

.field private hasLandingUrl:Z

.field private hasLibraryName:Z

.field private hasLibraryUrl:Z

.field private hasName:Z

.field private landingUrl_:Ljava/lang/String;

.field private libraryName_:Ljava/lang/String;

.field private libraryUrl_:Ljava/lang/String;

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->backend_:I

    .line 357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->name_:Ljava/lang/String;

    .line 374
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->landingUrl_:Ljava/lang/String;

    .line 391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryName_:Ljava/lang/String;

    .line 408
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryUrl_:Ljava/lang/String;

    .line 456
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    .line 335
    return-void
.end method


# virtual methods
.method public getBackend()I
    .registers 2

    .prologue
    .line 342
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->backend_:I

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 458
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    if-gez v0, :cond_7

    .line 460
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getSerializedSize()I

    .line 462
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    return v0
.end method

.method public getLandingUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->landingUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryName_:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 468
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 471
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 472
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 475
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 476
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 479
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 480
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 483
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryUrl()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 484
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    :cond_51
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    .line 488
    return v0
.end method

.method public hasBackend()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend:Z

    return v0
.end method

.method public hasLandingUrl()Z
    .registers 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl:Z

    return v0
.end method

.method public hasLibraryName()Z
    .registers 2

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName:Z

    return v0
.end method

.method public hasLibraryUrl()Z
    .registers 2

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryUrl:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 496
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 500
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    :sswitch_d
    return-object p0

    .line 506
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setBackend(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 510
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 514
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setLandingUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 518
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setLibraryName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 522
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setLibraryUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 496
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
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
    .line 333
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setBackend(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend:Z

    .line 345
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->backend_:I

    .line 346
    return-object p0
.end method

.method public setLandingUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl:Z

    .line 379
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->landingUrl_:Ljava/lang/String;

    .line 380
    return-object p0
.end method

.method public setLibraryName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName:Z

    .line 396
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryName_:Ljava/lang/String;

    .line 397
    return-object p0
.end method

.method public setLibraryUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryUrl:Z

    .line 413
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryUrl_:Ljava/lang/String;

    .line 414
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName:Z

    .line 362
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->name_:Ljava/lang/String;

    .line 363
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
    .line 439
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 440
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 442
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 443
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 445
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 446
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 448
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 449
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 451
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryUrl()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 452
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 454
    :cond_46
    return-void
.end method
