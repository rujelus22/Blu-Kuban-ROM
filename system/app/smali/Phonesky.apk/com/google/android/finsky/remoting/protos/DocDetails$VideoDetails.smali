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
.field private cachedSize:I

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

    .line 2140
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    .line 2178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->duration_:Ljava/lang/String;

    .line 2195
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->releaseDate_:Ljava/lang/String;

    .line 2212
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->contentRating_:Ljava/lang/String;

    .line 2229
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->likes_:J

    .line 2246
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->dislikes_:J

    .line 2262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    .line 2295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    .line 2328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    .line 2414
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    .line 2140
    return-void
.end method


# virtual methods
.method public addCredit(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2161
    if-nez p1, :cond_8

    .line 2162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2164
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    .line 2167
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2168
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2279
    if-nez p1, :cond_8

    .line 2280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2282
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    .line 2285
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2286
    return-object p0
.end method

.method public addRentalTerm(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2345
    if-nez p1, :cond_8

    .line 2346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2348
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    .line 2351
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2352
    return-object p0
.end method

.method public addTrailer(Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2312
    if-nez p1, :cond_8

    .line 2313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2315
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    .line 2318
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2319
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2416
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 2418
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getSerializedSize()I

    .line 2420
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    return v0
.end method

.method public getContentRating()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2213
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
    .line 2147
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    return-object v0
.end method

.method public getDislikes()J
    .registers 3

    .prologue
    .line 2247
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->dislikes_:J

    return-wide v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2179
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
    .line 2265
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    return-object v0
.end method

.method public getLikes()J
    .registers 3

    .prologue
    .line 2230
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->likes_:J

    return-wide v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2196
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
    .line 2331
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 2424
    const/4 v3, 0x0

    .line 2425
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

    .line 2426
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    const/4 v4, 0x1

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_9

    .line 2429
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2430
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2433
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2434
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2437
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2438
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2441
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2442
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getLikes()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2445
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2446
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDislikes()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2450
    :cond_6c
    const/4 v0, 0x0

    .line 2451
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

    .line 2452
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_75

    .line 2455
    .end local v1           #element:Ljava/lang/String;
    :cond_87
    add-int/2addr v3, v0

    .line 2456
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2458
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

    .line 2459
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_9b

    .line 2462
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

    .line 2463
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    const/16 v4, 0x9

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_b7

    .line 2466
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    :cond_cb
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    .line 2467
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
    .line 2298
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    return-object v0
.end method

.method public hasContentRating()Z
    .registers 2

    .prologue
    .line 2214
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating:Z

    return v0
.end method

.method public hasDislikes()Z
    .registers 2

    .prologue
    .line 2248
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes:Z

    return v0
.end method

.method public hasDuration()Z
    .registers 2

    .prologue
    .line 2180
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration:Z

    return v0
.end method

.method public hasLikes()Z
    .registers 2

    .prologue
    .line 2231
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .registers 2

    .prologue
    .line 2197
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
    .line 2474
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2475
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_62

    .line 2479
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2480
    :sswitch_d
    return-object p0

    .line 2485
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;-><init>()V

    .line 2486
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2487
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addCredit(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2491
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2495
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2499
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setContentRating(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2503
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setLikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2507
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setDislikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2511
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2515
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;-><init>()V

    .line 2516
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2517
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addTrailer(Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2521
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;-><init>()V

    .line 2522
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2523
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addRentalTerm(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2475
    :sswitch_data_62
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
    .line 2138
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method public setContentRating(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating:Z

    .line 2217
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->contentRating_:Ljava/lang/String;

    .line 2218
    return-object p0
.end method

.method public setDislikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 2250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes:Z

    .line 2251
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->dislikes_:J

    .line 2252
    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration:Z

    .line 2183
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->duration_:Ljava/lang/String;

    .line 2184
    return-object p0
.end method

.method public setLikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 2233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes:Z

    .line 2234
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->likes_:J

    .line 2235
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate:Z

    .line 2200
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->releaseDate_:Ljava/lang/String;

    .line 2201
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
    .line 2385
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

    .line 2386
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 2388
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2389
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2391
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2392
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2394
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2395
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2397
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2398
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getLikes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2400
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2401
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDislikes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2403
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

    .line 2404
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_67

    .line 2406
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

    .line 2407
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_80

    .line 2409
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

    .line 2410
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_9a

    .line 2412
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    :cond_ac
    return-void
.end method
