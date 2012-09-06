.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoDetails"
.end annotation


# instance fields
.field private audioLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private captionLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentRating_:Ljava/lang/String;

.field private credit_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;",
            ">;"
        }
    .end annotation
.end field

.field private dislikes_:J

.field private duration_:Ljava/lang/String;

.field private genre_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasContentRating:Z

.field private hasDislikes:Z

.field private hasDuration:Z

.field private hasLikes:Z

.field private hasReleaseDate:Z

.field private likes_:J

.field private releaseDate_:Ljava/lang/String;

.field private rentalTerm_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;",
            ">;"
        }
    .end annotation
.end field

.field private trailer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 2346
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2350
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    .line 2384
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->duration_:Ljava/lang/String;

    .line 2401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->releaseDate_:Ljava/lang/String;

    .line 2418
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->contentRating_:Ljava/lang/String;

    .line 2435
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->likes_:J

    .line 2452
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->dislikes_:J

    .line 2468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    .line 2501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    .line 2534
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    .line 2567
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    .line 2600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    .line 2695
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    .line 2346
    return-void
.end method


# virtual methods
.method public addAudioLanguage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2584
    if-nez p1, :cond_8

    .line 2585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2587
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    .line 2590
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2591
    return-object p0
.end method

.method public addCaptionLanguage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2617
    if-nez p1, :cond_8

    .line 2618
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2620
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    .line 2623
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2624
    return-object p0
.end method

.method public addCredit(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2367
    if-nez p1, :cond_8

    .line 2368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2370
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    .line 2373
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2374
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2485
    if-nez p1, :cond_8

    .line 2486
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2488
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    .line 2491
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2492
    return-object p0
.end method

.method public addRentalTerm(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2551
    if-nez p1, :cond_8

    .line 2552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2554
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    .line 2557
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2558
    return-object p0
.end method

.method public addTrailer(Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2518
    if-nez p1, :cond_8

    .line 2519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2521
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    .line 2524
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2525
    return-object p0
.end method

.method public getAudioLanguageCount()I
    .registers 2

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAudioLanguageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2698
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 2700
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getSerializedSize()I

    .line 2702
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    return v0
.end method

.method public getCaptionLanguageCount()I
    .registers 2

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCaptionLanguageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getContentRating()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->contentRating_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    return-object v0
.end method

.method public getDislikes()J
    .registers 3

    .prologue
    .line 2453
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->dislikes_:J

    return-wide v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->duration_:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    return-object v0
.end method

.method public getLikes()J
    .registers 3

    .prologue
    .line 2436
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->likes_:J

    return-wide v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->releaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getRentalTermList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 2707
    const/4 v3, 0x0

    .line 2708
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCreditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    .line 2709
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    const/4 v4, 0x1

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_9

    .line 2712
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2713
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2716
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2717
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2720
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2721
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2724
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2725
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getLikes()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2728
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2729
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDislikes()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2733
    :cond_6c
    const/4 v0, 0x0

    .line 2734
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2735
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_75

    .line 2738
    .end local v1           #element:Ljava/lang/String;
    :cond_87
    add-int/2addr v3, v0

    .line 2739
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2741
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getTrailerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    .line 2742
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_9b

    .line 2745
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    :cond_af
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getRentalTermList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    .line 2746
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    const/16 v4, 0x9

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_b7

    .line 2750
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    :cond_cb
    const/4 v0, 0x0

    .line 2751
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getAudioLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2752
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_d4

    .line 2755
    .end local v1           #element:Ljava/lang/String;
    :cond_e6
    add-int/2addr v3, v0

    .line 2756
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getAudioLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2759
    const/4 v0, 0x0

    .line 2760
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCaptionLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_fb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2761
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_fb

    .line 2764
    .end local v1           #element:Ljava/lang/String;
    :cond_10d
    add-int/2addr v3, v0

    .line 2765
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCaptionLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2767
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    .line 2768
    return v3
.end method

.method public getTrailerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    return-object v0
.end method

.method public hasContentRating()Z
    .registers 2

    .prologue
    .line 2420
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating:Z

    return v0
.end method

.method public hasDislikes()Z
    .registers 2

    .prologue
    .line 2454
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes:Z

    return v0
.end method

.method public hasDuration()Z
    .registers 2

    .prologue
    .line 2386
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration:Z

    return v0
.end method

.method public hasLikes()Z
    .registers 2

    .prologue
    .line 2437
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .registers 2

    .prologue
    .line 2403
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2776
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2777
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_72

    .line 2781
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2782
    :sswitch_d
    return-object p0

    .line 2787
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;-><init>()V

    .line 2788
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2789
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addCredit(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2793
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2797
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2801
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setContentRating(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2805
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setLikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2809
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setDislikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2813
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2817
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;-><init>()V

    .line 2818
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2819
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addTrailer(Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2823
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;-><init>()V

    .line 2824
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2825
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addRentalTerm(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2829
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    :sswitch_62
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addAudioLanguage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2833
    :sswitch_6a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addCaptionLanguage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2777
    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2a
        0x28 -> :sswitch_32
        0x30 -> :sswitch_3a
        0x3a -> :sswitch_42
        0x42 -> :sswitch_4a
        0x4a -> :sswitch_56
        0x52 -> :sswitch_62
        0x5a -> :sswitch_6a
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
    .line 2343
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method public setContentRating(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating:Z

    .line 2423
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->contentRating_:Ljava/lang/String;

    .line 2424
    return-object p0
.end method

.method public setDislikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 2456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes:Z

    .line 2457
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->dislikes_:J

    .line 2458
    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration:Z

    .line 2389
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->duration_:Ljava/lang/String;

    .line 2390
    return-object p0
.end method

.method public setLikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 2439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes:Z

    .line 2440
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->likes_:J

    .line 2441
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate:Z

    .line 2406
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->releaseDate_:Ljava/lang/String;

    .line 2407
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2660
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCreditList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    .line 2661
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 2663
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2664
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2666
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2667
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2669
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2670
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2672
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2673
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getLikes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2675
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2676
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDislikes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2678
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getGenreList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2679
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_67

    .line 2681
    .end local v0           #element:Ljava/lang/String;
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getTrailerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    .line 2682
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_80

    .line 2684
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    :cond_92
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getRentalTermList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    .line 2685
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_9a

    .line 2687
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    :cond_ac
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getAudioLanguageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2688
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_b4

    .line 2690
    .end local v0           #element:Ljava/lang/String;
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCaptionLanguageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2691
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_ce

    .line 2693
    .end local v0           #element:Ljava/lang/String;
    :cond_e0
    return-void
.end method
