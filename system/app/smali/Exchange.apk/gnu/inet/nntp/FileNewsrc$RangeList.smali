.class Lgnu/inet/nntp/FileNewsrc$RangeList;
.super Ljava/lang/Object;
.source "FileNewsrc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/inet/nntp/FileNewsrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeList"
.end annotation


# instance fields
.field seen:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 359
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    .line 361
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 365
    invoke-direct {p0}, Lgnu/inet/nntp/FileNewsrc$RangeList;-><init>()V

    .line 369
    const/4 v1, 0x0

    .line 370
    const/16 v0, 0x2c

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 371
    :goto_a
    if-le v0, v1, :cond_1c

    .line 373
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-direct {p0, v1}, Lgnu/inet/nntp/FileNewsrc$RangeList;->addToken(Ljava/lang/String;)V

    .line 375
    add-int/lit8 v1, v0, 0x1

    .line 376
    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_a

    .line 378
    :cond_1c
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/inet/nntp/FileNewsrc$RangeList;->addToken(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_23} :catch_24

    .line 384
    :goto_23
    return-void

    .line 380
    :catch_24
    move-exception v0

    .line 382
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: nntp: bad newsrc format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_23
.end method

.method private addToken(Ljava/lang/String;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 391
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 392
    if-le v0, v2, :cond_24

    .line 395
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 396
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 399
    if-le v1, v2, :cond_23

    if-le v0, v2, :cond_23

    .line 401
    invoke-virtual {p0, v1, v0}, Lgnu/inet/nntp/FileNewsrc$RangeList;->insert(II)V

    .line 413
    :cond_23
    :goto_23
    return-void

    .line 407
    :cond_24
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 408
    if-le v0, v2, :cond_23

    .line 410
    invoke-virtual {p0, v0}, Lgnu/inet/nntp/FileNewsrc$RangeList;->insert(I)V

    goto :goto_23
.end method


# virtual methods
.method indexOf(I)I
    .registers 7
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 455
    new-array v2, v1, [Lgnu/inet/nntp/FileNewsrc$Range;

    .line 456
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 457
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_2a

    .line 459
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Lgnu/inet/nntp/FileNewsrc$Range;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 472
    :cond_18
    :goto_18
    return v0

    .line 463
    :cond_19
    aget-object v3, v2, v0

    iget v3, v3, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    if-gt v3, p1, :cond_18

    .line 467
    aget-object v3, v2, v0

    iget v3, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    add-int/lit8 v4, p1, -0x1

    if-eq v3, v4, :cond_18

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2a
    move v0, v1

    .line 472
    goto :goto_18
.end method

.method insert(I)V
    .registers 2
    .parameter

    .prologue
    .line 515
    invoke-virtual {p0, p1, p1}, Lgnu/inet/nntp/FileNewsrc$RangeList;->insert(II)V

    .line 516
    return-void
.end method

.method insert(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 477
    new-instance v3, Lgnu/inet/nntp/FileNewsrc$Range;

    invoke-direct {v3, p1, p2}, Lgnu/inet/nntp/FileNewsrc$Range;-><init>(II)V

    .line 478
    iget v0, v3, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/FileNewsrc$RangeList;->indexOf(I)I

    move-result v4

    .line 480
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_19

    .line 482
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_18
    :goto_18
    return-void

    .line 485
    :cond_19
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/inet/nntp/FileNewsrc$Range;

    .line 487
    iget v1, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    iget v2, v0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    if-ge v1, v2, :cond_2d

    .line 489
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_18

    .line 493
    :cond_2d
    iget v1, v0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    iget v2, v3, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    if-gt v1, v2, :cond_39

    iget v1, v0, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    iget v2, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    if-ge v1, v2, :cond_18

    .line 498
    :cond_39
    iget v1, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    invoke-virtual {p0, v1}, Lgnu/inet/nntp/FileNewsrc$RangeList;->indexOf(I)I

    move-result v2

    .line 499
    iget-object v1, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/inet/nntp/FileNewsrc$Range;

    .line 500
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " i2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    :goto_69
    if-lt v2, v4, :cond_73

    .line 504
    iget-object v5, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 502
    add-int/lit8 v2, v2, -0x1

    goto :goto_69

    .line 507
    :cond_73
    iget v2, v3, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    iget v5, v0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    if-ge v2, v5, :cond_8e

    iget v0, v3, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    .line 508
    :goto_7b
    iget v2, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    iget v5, v1, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    if-le v2, v5, :cond_91

    iget v1, v3, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    .line 509
    :goto_83
    new-instance v2, Lgnu/inet/nntp/FileNewsrc$Range;

    invoke-direct {v2, v0, v1}, Lgnu/inet/nntp/FileNewsrc$Range;-><init>(II)V

    .line 510
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_18

    .line 507
    :cond_8e
    iget v0, v0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    goto :goto_7b

    .line 508
    :cond_91
    iget v1, v1, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    goto :goto_83
.end method

.method public isSeen(I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 420
    iget-object v1, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 421
    new-array v3, v2, [Lgnu/inet/nntp/FileNewsrc$Range;

    .line 422
    iget-object v1, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v1, v0

    .line 423
    :goto_f
    if-ge v1, v2, :cond_1a

    .line 425
    aget-object v4, v3, v1

    invoke-virtual {v4, p1}, Lgnu/inet/nntp/FileNewsrc$Range;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 427
    const/4 v0, 0x1

    .line 430
    :cond_1a
    return v0

    .line 423
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 543
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 544
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 545
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_29

    .line 547
    iget-object v0, p0, Lgnu/inet/nntp/FileNewsrc$RangeList;->seen:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/inet/nntp/FileNewsrc$Range;

    .line 548
    if-lez v1, :cond_1e

    .line 550
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 552
    :cond_1e
    invoke-virtual {v0}, Lgnu/inet/nntp/FileNewsrc$Range;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 554
    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
