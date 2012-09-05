.class public final Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookDetails"
.end annotation


# instance fields
.field private acsEpubTokenUrl_:Ljava/lang/String;

.field private acsPdfTokenUrl_:Ljava/lang/String;

.field private author_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private downloadEpubUrl_:Ljava/lang/String;

.field private downloadPdfUrl_:Ljava/lang/String;

.field private epubAvailable_:Z

.field private hasAcsEpubTokenUrl:Z

.field private hasAcsPdfTokenUrl:Z

.field private hasDownloadEpubUrl:Z

.field private hasDownloadPdfUrl:Z

.field private hasEpubAvailable:Z

.field private hasIsbn:Z

.field private hasNumberOfPages:Z

.field private hasPdfAvailable:Z

.field private hasPublicationDate:Z

.field private hasPublisher:Z

.field private hasReaderUrl:Z

.field private hasSubtitle:Z

.field private isbn_:Ljava/lang/String;

.field private numberOfPages_:I

.field private pdfAvailable_:Z

.field private publicationDate_:Ljava/lang/String;

.field private publisher_:Ljava/lang/String;

.field private readerUrl_:Ljava/lang/String;

.field private subject_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    .line 332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    .line 366
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publisher_:Ljava/lang/String;

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publicationDate_:Ljava/lang/String;

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->isbn_:Ljava/lang/String;

    .line 417
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->numberOfPages_:I

    .line 434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subtitle_:Ljava/lang/String;

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->readerUrl_:Ljava/lang/String;

    .line 468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadEpubUrl_:Ljava/lang/String;

    .line 485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadPdfUrl_:Ljava/lang/String;

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsEpubTokenUrl_:Ljava/lang/String;

    .line 519
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsPdfTokenUrl_:Ljava/lang/String;

    .line 536
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->epubAvailable_:Z

    .line 553
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->pdfAvailable_:Z

    .line 642
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    .line 292
    return-void
.end method


# virtual methods
.method public addAuthor(Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 316
    if-nez p1, :cond_8

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 319
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    .line 322
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-object p0
.end method

.method public addSubject(Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 349
    if-nez p1, :cond_8

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 352
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    .line 355
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-object p0
.end method

.method public getAcsEpubTokenUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsEpubTokenUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAcsPdfTokenUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsPdfTokenUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 644
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 646
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSerializedSize()I

    .line 648
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    return v0
.end method

.method public getDownloadEpubUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadEpubUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPdfUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadPdfUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getEpubAvailable()Z
    .registers 2

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->epubAvailable_:Z

    return v0
.end method

.method public getIsbn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->isbn_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfPages()I
    .registers 2

    .prologue
    .line 418
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->numberOfPages_:I

    return v0
.end method

.method public getPdfAvailable()Z
    .registers 2

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->pdfAvailable_:Z

    return v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publicationDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publisher_:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->readerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 652
    const/4 v2, 0x0

    .line 653
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubjectList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    .line 654
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 657
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 658
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 661
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 662
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 665
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 666
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getIsbn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 669
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 670
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 673
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 674
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 677
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAuthorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    .line 678
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_75

    .line 681
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    :cond_89
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasReaderUrl()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 682
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getReaderUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 685
    :cond_9a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadEpubUrl()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 686
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getDownloadEpubUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 689
    :cond_ab
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadPdfUrl()Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 690
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getDownloadPdfUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 693
    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsEpubTokenUrl()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 694
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAcsEpubTokenUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 697
    :cond_cd
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsPdfTokenUrl()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 698
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAcsPdfTokenUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 701
    :cond_de
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasEpubAvailable()Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 702
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getEpubAvailable()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 705
    :cond_ef
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPdfAvailable()Z

    move-result v3

    if-eqz v3, :cond_100

    .line 706
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPdfAvailable()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 709
    :cond_100
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    .line 710
    return v2
.end method

.method public getSubjectList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAcsEpubTokenUrl()Z
    .registers 2

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsEpubTokenUrl:Z

    return v0
.end method

.method public hasAcsPdfTokenUrl()Z
    .registers 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsPdfTokenUrl:Z

    return v0
.end method

.method public hasDownloadEpubUrl()Z
    .registers 2

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadEpubUrl:Z

    return v0
.end method

.method public hasDownloadPdfUrl()Z
    .registers 2

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadPdfUrl:Z

    return v0
.end method

.method public hasEpubAvailable()Z
    .registers 2

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasEpubAvailable:Z

    return v0
.end method

.method public hasIsbn()Z
    .registers 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn:Z

    return v0
.end method

.method public hasNumberOfPages()Z
    .registers 2

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages:Z

    return v0
.end method

.method public hasPdfAvailable()Z
    .registers 2

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPdfAvailable:Z

    return v0
.end method

.method public hasPublicationDate()Z
    .registers 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate:Z

    return v0
.end method

.method public hasPublisher()Z
    .registers 2

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher:Z

    return v0
.end method

.method public hasReaderUrl()Z
    .registers 2

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasReaderUrl:Z

    return v0
.end method

.method public hasSubtitle()Z
    .registers 2

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 718
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_88

    .line 722
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    :sswitch_d
    return-object p0

    .line 728
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;-><init>()V

    .line 729
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 730
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->addSubject(Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 734
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setPublisher(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 738
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setPublicationDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 742
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setIsbn(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 746
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setNumberOfPages(I)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 750
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 754
    :sswitch_42
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;-><init>()V

    .line 755
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 756
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->addAuthor(Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 760
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setReaderUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 764
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setDownloadEpubUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 768
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setDownloadPdfUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 772
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setAcsEpubTokenUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 776
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setAcsPdfTokenUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 780
    :sswitch_76
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setEpubAvailable(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 784
    :sswitch_7e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setPdfAvailable(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto/16 :goto_0

    .line 718
    nop

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_d
        0x1a -> :sswitch_e
        0x22 -> :sswitch_1a
        0x2a -> :sswitch_22
        0x32 -> :sswitch_2a
        0x38 -> :sswitch_32
        0x42 -> :sswitch_3a
        0x4a -> :sswitch_42
        0x52 -> :sswitch_4e
        0x5a -> :sswitch_56
        0x62 -> :sswitch_5e
        0x6a -> :sswitch_66
        0x72 -> :sswitch_6e
        0x78 -> :sswitch_76
        0x80 -> :sswitch_7e
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
    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAcsEpubTokenUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsEpubTokenUrl:Z

    .line 507
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsEpubTokenUrl_:Ljava/lang/String;

    .line 508
    return-object p0
.end method

.method public setAcsPdfTokenUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsPdfTokenUrl:Z

    .line 524
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsPdfTokenUrl_:Ljava/lang/String;

    .line 525
    return-object p0
.end method

.method public setDownloadEpubUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadEpubUrl:Z

    .line 473
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadEpubUrl_:Ljava/lang/String;

    .line 474
    return-object p0
.end method

.method public setDownloadPdfUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadPdfUrl:Z

    .line 490
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadPdfUrl_:Ljava/lang/String;

    .line 491
    return-object p0
.end method

.method public setEpubAvailable(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasEpubAvailable:Z

    .line 541
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->epubAvailable_:Z

    .line 542
    return-object p0
.end method

.method public setIsbn(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn:Z

    .line 405
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->isbn_:Ljava/lang/String;

    .line 406
    return-object p0
.end method

.method public setNumberOfPages(I)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages:Z

    .line 422
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->numberOfPages_:I

    .line 423
    return-object p0
.end method

.method public setPdfAvailable(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPdfAvailable:Z

    .line 558
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->pdfAvailable_:Z

    .line 559
    return-object p0
.end method

.method public setPublicationDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate:Z

    .line 388
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publicationDate_:Ljava/lang/String;

    .line 389
    return-object p0
.end method

.method public setPublisher(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher:Z

    .line 371
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publisher_:Ljava/lang/String;

    .line 372
    return-object p0
.end method

.method public setReaderUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasReaderUrl:Z

    .line 456
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->readerUrl_:Ljava/lang/String;

    .line 457
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle:Z

    .line 439
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subtitle_:Ljava/lang/String;

    .line 440
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubjectList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    .line 599
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 601
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 602
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 604
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 605
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 607
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 608
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getIsbn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 610
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 611
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 613
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 614
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 616
    :cond_60
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAuthorList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    .line 617
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_68

    .line 619
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    :cond_7a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasReaderUrl()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 620
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getReaderUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 622
    :cond_89
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadEpubUrl()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 623
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getDownloadEpubUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 625
    :cond_98
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadPdfUrl()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 626
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getDownloadPdfUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 628
    :cond_a7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsEpubTokenUrl()Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 629
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAcsEpubTokenUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 631
    :cond_b6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsPdfTokenUrl()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 632
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAcsPdfTokenUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 634
    :cond_c5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasEpubAvailable()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 635
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getEpubAvailable()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 637
    :cond_d4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPdfAvailable()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 638
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPdfAvailable()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 640
    :cond_e3
    return-void
.end method
