.class public abstract Lcom/android/task/vcal/pim/VParser;
.super Ljava/lang/Object;
.source "VParser.java"


# instance fields
.field protected final PARSE_ERROR:I

.field protected mBuffer:Ljava/lang/String;

.field protected mBuilder:Lcom/android/task/vcal/pim/VBuilder;

.field protected final mDefaultEncoding:Ljava/lang/String;

.field protected mEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    .line 39
    iput-object v0, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/task/vcal/pim/VParser;->PARSE_ERROR:I

    .line 43
    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/android/task/vcal/pim/VParser;->mDefaultEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getWord(I)Ljava/lang/String;
    .registers 5
    .parameter "offset"

    .prologue
    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v1, word:Ljava/lang/StringBuilder;
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 498
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/android/task/vcal/pim/VParser;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_15

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_1c

    .line 499
    :cond_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_18} :catch_1b

    .line 500
    add-int/lit8 p1, p1, 0x1

    .line 504
    goto :goto_5

    .line 505
    .end local v0           #ch:C
    :catch_1b
    move-exception v2

    .line 508
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected isLetter(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 484
    const/16 v0, 0x61

    if-lt p1, v0, :cond_8

    const/16 v0, 0x7a

    if-le p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_12

    .line 485
    :cond_10
    const/4 v0, 0x1

    .line 487
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isLetterOrDigit(C)Z
    .registers 4
    .parameter "ch"

    .prologue
    const/4 v0, 0x1

    .line 462
    const/16 v1, 0x30

    if-lt p1, v1, :cond_a

    const/16 v1, 0x39

    if-gt p1, v1, :cond_a

    .line 468
    :cond_9
    :goto_9
    return v0

    .line 464
    :cond_a
    const/16 v1, 0x61

    if-lt p1, v1, :cond_12

    const/16 v1, 0x7a

    if-le p1, v1, :cond_9

    .line 466
    :cond_12
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1a

    const/16 v1, 0x5a

    if-le p1, v1, :cond_9

    .line 468
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isPrintable(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 475
    const/16 v0, 0x20

    if-lt p1, v0, :cond_a

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_a

    .line 476
    const/4 v0, 0x1

    .line 477
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/task/vcal/pim/VBuilder;)Z
    .registers 8
    .parameter "is"
    .parameter "encoding"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/task/vcal/pim/VParser;->setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    iput-object p3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    .line 77
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, offset:I
    const/4 v2, 0x0

    .line 79
    .local v2, sum:I
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_11

    .line 80
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->start()V

    .line 83
    :cond_11
    :goto_11
    invoke-virtual {p0, v0}, Lcom/android/task/vcal/pim/VParser;->parseVFile(I)I

    move-result v1

    .line 84
    const/4 v3, -0x1

    if-ne v3, v1, :cond_2b

    .line 91
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_21

    .line 92
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->end()V

    .line 94
    :cond_21
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_2e

    const/4 v3, 0x1

    :goto_2a
    return v3

    .line 87
    :cond_2b
    add-int/2addr v0, v1

    .line 88
    add-int/2addr v2, v1

    goto :goto_11

    .line 94
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method protected parse8bit(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, index:I
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 300
    if-ne v0, v1, :cond_11

    move v0, v1

    .line 303
    .end local v0           #index:I
    :cond_11
    return v0
.end method

.method protected parseBase64(I)I
    .registers 8
    .parameter "offset"

    .prologue
    .line 405
    const/4 v3, 0x0

    .line 409
    .local v3, sum:I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 411
    .local v0, ch:C
    const/16 v4, 0xd

    if-ne v0, v4, :cond_17

    .line 412
    const-string v4, "\r\n\r\n"

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_11} :catch_1c

    move-result v2

    .line 413
    .local v2, ret:I
    add-int/2addr v3, v2

    .line 424
    add-int/lit8 v3, v3, -0x2

    move v4, v3

    .line 425
    .end local v0           #ch:C
    .end local v2           #ret:I
    :goto_16
    return v4

    .line 417
    .restart local v0       #ch:C
    :cond_17
    add-int/lit8 v3, v3, 0x1

    .line 418
    add-int/lit8 p1, p1, 0x1

    .line 420
    goto :goto_1

    .line 421
    .end local v0           #ch:C
    :catch_1c
    move-exception v1

    .line 422
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v4, -0x1

    goto :goto_16
.end method

.method protected parseCharsetVal(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 606
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 608
    .local v1, sum:I
    const-string v3, "us-ascii"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 609
    if-eq v0, v2, :cond_f

    .line 610
    add-int/2addr v1, v0

    move v2, v1

    .line 680
    :cond_e
    :goto_e
    return v2

    .line 614
    :cond_f
    const-string v3, "iso-8859-1"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 615
    if-eq v0, v2, :cond_1a

    .line 616
    add-int/2addr v1, v0

    move v2, v1

    .line 617
    goto :goto_e

    .line 620
    :cond_1a
    const-string v3, "iso-8859-2"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 621
    if-eq v0, v2, :cond_25

    .line 622
    add-int/2addr v1, v0

    move v2, v1

    .line 623
    goto :goto_e

    .line 626
    :cond_25
    const-string v3, "iso-8859-3"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 627
    if-eq v0, v2, :cond_30

    .line 628
    add-int/2addr v1, v0

    move v2, v1

    .line 629
    goto :goto_e

    .line 632
    :cond_30
    const-string v3, "iso-8859-4"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 633
    if-eq v0, v2, :cond_3b

    .line 634
    add-int/2addr v1, v0

    move v2, v1

    .line 635
    goto :goto_e

    .line 638
    :cond_3b
    const-string v3, "iso-8859-5"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 639
    if-eq v0, v2, :cond_46

    .line 640
    add-int/2addr v1, v0

    move v2, v1

    .line 641
    goto :goto_e

    .line 644
    :cond_46
    const-string v3, "iso-8859-6"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 645
    if-eq v0, v2, :cond_51

    .line 646
    add-int/2addr v1, v0

    move v2, v1

    .line 647
    goto :goto_e

    .line 650
    :cond_51
    const-string v3, "iso-8859-7"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 651
    if-eq v0, v2, :cond_5c

    .line 652
    add-int/2addr v1, v0

    move v2, v1

    .line 653
    goto :goto_e

    .line 656
    :cond_5c
    const-string v3, "iso-8859-8"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 657
    if-eq v0, v2, :cond_67

    .line 658
    add-int/2addr v1, v0

    move v2, v1

    .line 659
    goto :goto_e

    .line 662
    :cond_67
    const-string v3, "iso-8859-9"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 663
    if-eq v0, v2, :cond_72

    .line 664
    add-int/2addr v1, v0

    move v2, v1

    .line 665
    goto :goto_e

    .line 668
    :cond_72
    const-string v3, "utf-8"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 669
    if-eq v0, v2, :cond_7d

    .line 670
    add-int/2addr v1, v0

    move v2, v1

    .line 671
    goto :goto_e

    .line 674
    :cond_7d
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 675
    if-eq v0, v2, :cond_e

    .line 676
    add-int/2addr v1, v0

    move v2, v1

    .line 677
    goto :goto_e
.end method

.method protected parseCrlf(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 49
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_a

    .line 59
    :cond_9
    :goto_9
    return v1

    .line 51
    :cond_a
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 52
    .local v0, ch:C
    const/16 v2, 0xd

    if-ne v0, v2, :cond_9

    .line 53
    add-int/lit8 p1, p1, 0x1

    .line 54
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 55
    const/16 v2, 0xa

    if-ne v0, v2, :cond_9

    .line 56
    const/4 v1, 0x2

    goto :goto_9
.end method

.method protected parseLangVal(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 688
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 690
    .local v1, sum:I
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseTag(I)I

    move-result v0

    .line 691
    if-ne v2, v0, :cond_a

    .line 712
    :goto_9
    return v2

    .line 694
    :cond_a
    add-int/2addr p1, v0

    .line 695
    add-int/2addr v1, v0

    .line 698
    :goto_c
    const-string v3, "-"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 699
    if-ne v2, v0, :cond_17

    :cond_15
    move v2, v1

    .line 712
    goto :goto_9

    .line 702
    :cond_17
    add-int/2addr p1, v0

    .line 703
    add-int/2addr v1, v0

    .line 705
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseTag(I)I

    move-result v0

    .line 706
    if-eq v2, v0, :cond_15

    .line 709
    add-int/2addr p1, v0

    .line 710
    add-int/2addr v1, v0

    goto :goto_c
.end method

.method protected parseOctet(I)I
    .registers 12
    .parameter "offset"

    .prologue
    const/16 v9, 0x46

    const/16 v8, 0x41

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v3, -0x1

    .line 373
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 375
    .local v2, sum:I
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 376
    if-ne v3, v1, :cond_15

    .line 397
    :cond_14
    :goto_14
    return v3

    .line 378
    :cond_15
    add-int/2addr p1, v1

    .line 379
    add-int/2addr v2, v1

    .line 382
    :try_start_17
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 383
    .local v0, ch:I
    const/16 v4, 0x20

    if-eq v0, v4, :cond_25

    const/16 v4, 0x9

    if-ne v0, v4, :cond_29

    .line 384
    :cond_25
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_14

    .line 385
    :cond_29
    if-lt v0, v6, :cond_2d

    if-le v0, v7, :cond_31

    :cond_2d
    if-lt v0, v8, :cond_14

    if-gt v0, v9, :cond_14

    .line 386
    :cond_31
    add-int/lit8 p1, p1, 0x1

    .line 387
    add-int/lit8 v2, v2, 0x1

    .line 388
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C
    :try_end_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_3a} :catch_47

    move-result v0

    .line 389
    if-lt v0, v6, :cond_3f

    if-le v0, v7, :cond_43

    :cond_3f
    if-lt v0, v8, :cond_14

    if-gt v0, v9, :cond_14

    .line 390
    :cond_43
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 391
    goto :goto_14

    .line 394
    .end local v0           #ch:I
    :catch_47
    move-exception v4

    goto :goto_14
.end method

.method protected parsePEncodingVal(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 561
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 563
    .local v1, sum:I
    const-string v3, "7BIT"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 564
    if-eq v0, v2, :cond_13

    .line 565
    const-string v2, "7BIT"

    iput-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 566
    add-int/2addr v1, v0

    move v2, v1

    .line 598
    :cond_12
    :goto_12
    return v2

    .line 570
    :cond_13
    const-string v3, "8BIT"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 571
    if-eq v0, v2, :cond_22

    .line 572
    const-string v2, "8BIT"

    iput-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 573
    add-int/2addr v1, v0

    move v2, v1

    .line 574
    goto :goto_12

    .line 577
    :cond_22
    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 578
    if-eq v0, v2, :cond_31

    .line 579
    const-string v2, "QUOTED-PRINTABLE"

    iput-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 580
    add-int/2addr v1, v0

    move v2, v1

    .line 581
    goto :goto_12

    .line 584
    :cond_31
    const-string v3, "BASE64"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 585
    if-eq v0, v2, :cond_40

    .line 586
    const-string v2, "BASE64"

    iput-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 587
    add-int/2addr v1, v0

    move v2, v1

    .line 588
    goto :goto_12

    .line 591
    :cond_40
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 592
    if-eq v0, v2, :cond_12

    .line 593
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 594
    add-int/2addr v1, v0

    move v2, v1

    .line 595
    goto :goto_12
.end method

.method protected parsePValueVal(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 515
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 517
    .local v1, sum:I
    const-string v3, "INLINE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 518
    if-eq v0, v2, :cond_f

    .line 519
    add-int/2addr v1, v0

    move v2, v1

    .line 553
    :cond_e
    :goto_e
    return v2

    .line 523
    :cond_f
    const-string v3, "URL"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 524
    if-eq v0, v2, :cond_1a

    .line 525
    add-int/2addr v1, v0

    move v2, v1

    .line 526
    goto :goto_e

    .line 529
    :cond_1a
    const-string v3, "CONTENT-ID"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 530
    if-eq v0, v2, :cond_25

    .line 531
    add-int/2addr v1, v0

    move v2, v1

    .line 532
    goto :goto_e

    .line 535
    :cond_25
    const-string v3, "CID"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 536
    if-eq v0, v2, :cond_30

    .line 537
    add-int/2addr v1, v0

    move v2, v1

    .line 538
    goto :goto_e

    .line 541
    :cond_30
    const-string v3, "INLINE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 542
    if-eq v0, v2, :cond_3b

    .line 543
    add-int/2addr v1, v0

    move v2, v1

    .line 544
    goto :goto_e

    .line 547
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 548
    if-eq v0, v2, :cond_e

    .line 549
    add-int/2addr v1, v0

    move v2, v1

    .line 550
    goto :goto_e
.end method

.method protected parsePtext(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 343
    const/4 v2, 0x0

    .line 346
    .local v2, ret:I
    :try_start_2
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 347
    .local v0, ch:C
    const/16 v4, 0xd

    if-ne v0, v4, :cond_19

    .line 348
    add-int/lit8 p1, p1, 0x1

    .line 349
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_13} :catch_27

    move-result v0

    .line 350
    const/16 v4, 0xa

    if-ne v0, v4, :cond_19

    .line 365
    .end local v0           #ch:C
    :cond_18
    :goto_18
    return v3

    .line 354
    .restart local v0       #ch:C
    :cond_19
    const/16 v4, 0x3d

    if-eq v0, v4, :cond_29

    const/16 v4, 0x20

    if-eq v0, v4, :cond_29

    const/16 v4, 0x9

    if-eq v0, v4, :cond_29

    .line 355
    const/4 v3, 0x1

    goto :goto_18

    .line 357
    .end local v0           #ch:C
    :catch_27
    move-exception v1

    .line 358
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_18

    .line 361
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #ch:C
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseOctet(I)I

    move-result v2

    .line 362
    if-eq v2, v3, :cond_18

    move v3, v2

    .line 363
    goto :goto_18
.end method

.method protected parseQuotedPrintable(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 312
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 314
    .local v1, sum:I
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->removeWs(I)I

    move-result v0

    .line 315
    add-int/2addr p1, v0

    .line 316
    add-int/2addr v1, v0

    .line 319
    :goto_9
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parsePtext(I)I

    move-result v0

    .line 320
    if-ne v4, v0, :cond_1a

    .line 330
    const-string v2, "="

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 331
    if-eq v0, v4, :cond_19

    .line 333
    add-int/2addr v1, v0

    .line 336
    :cond_19
    return v1

    .line 322
    :cond_1a
    add-int/2addr p1, v0

    .line 323
    add-int/2addr v1, v0

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->removeWs(I)I

    move-result v0

    .line 326
    add-int/2addr p1, v0

    .line 327
    add-int/2addr v1, v0

    goto :goto_9
.end method

.method protected parseString(ILjava/lang/String;Z)I
    .registers 10
    .parameter "offset"
    .parameter "tar"
    .parameter "ignoreCase"

    .prologue
    const/4 v3, -0x1

    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, sum:I
    if-nez p2, :cond_5

    .line 221
    :cond_4
    :goto_4
    return v3

    .line 202
    :cond_5
    if-eqz p3, :cond_1e

    .line 203
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 205
    .local v1, len:I
    :try_start_b
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    add-int v5, p1, v1

    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_16} :catch_1c

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    move v2, v1

    .end local v1           #len:I
    :goto_1a
    move v3, v2

    .line 221
    goto :goto_4

    .line 210
    .restart local v1       #len:I
    :catch_1c
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_4

    .line 215
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #len:I
    :cond_1e
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 216
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1a
.end method

.method protected parseTag(I)I
    .registers 6
    .parameter "offset"

    .prologue
    .line 719
    const/4 v2, 0x0

    .local v2, sum:I
    const/4 v1, 0x0

    .line 722
    .local v1, i:I
    const/4 v1, 0x0

    :goto_3
    const/16 v3, 0x8

    if-ge v1, v3, :cond_13

    .line 723
    :try_start_7
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 724
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/android/task/vcal/pim/VParser;->isLetter(C)Z
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_10} :catch_1e

    move-result v3

    if-nez v3, :cond_17

    .line 733
    .end local v0           #ch:C
    :cond_13
    :goto_13
    if-nez v1, :cond_16

    .line 734
    const/4 v2, -0x1

    .line 736
    .end local v2           #sum:I
    :cond_16
    return v2

    .line 727
    .restart local v0       #ch:C
    .restart local v2       #sum:I
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 728
    add-int/lit8 p1, p1, 0x1

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 730
    .end local v0           #ch:C
    :catch_1e
    move-exception v3

    goto :goto_13
.end method

.method protected abstract parseVFile(I)I
.end method

.method protected parseValue(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, ret:I
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "7BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "8BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 267
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parse8bit(I)I

    move-result v0

    .line 268
    if-eq v0, v1, :cond_2f

    move v1, v0

    .line 289
    :cond_2f
    :goto_2f
    return v1

    .line 274
    :cond_30
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseQuotedPrintable(I)I

    move-result v0

    .line 276
    if-eq v0, v1, :cond_2f

    move v1, v0

    .line 277
    goto :goto_2f

    .line 282
    :cond_42
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "BASE64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseBase64(I)I

    move-result v0

    .line 284
    if-eq v0, v1, :cond_2f

    move v1, v0

    .line 285
    goto :goto_2f
.end method

.method protected parseWord(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/16 v4, 0x3b

    .line 432
    const/4 v1, 0x0

    .line 435
    .local v1, sum:I
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 436
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/android/task/vcal/pim/VParser;->isPrintable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 453
    .end local v0           #ch:C
    :cond_f
    :goto_f
    if-nez v1, :cond_12

    .line 454
    const/4 v1, -0x1

    .line 455
    .end local v1           #sum:I
    :cond_12
    return v1

    .line 438
    .restart local v0       #ch:C
    .restart local v1       #sum:I
    :cond_13
    const/16 v2, 0x20

    if-eq v0, v2, :cond_f

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_f

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_f

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_f

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_f

    if-eq v0, v4, :cond_f

    .line 440
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_3b

    .line 441
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_34} :catch_40

    move-result v0

    .line 442
    if-ne v0, v4, :cond_3b

    .line 443
    add-int/lit8 p1, p1, 0x1

    .line 444
    add-int/lit8 v1, v1, 0x1

    .line 447
    :cond_3b
    add-int/lit8 p1, p1, 0x1

    .line 448
    add-int/lit8 v1, v1, 0x1

    .line 449
    goto :goto_3

    .line 450
    .end local v0           #ch:C
    :catch_40
    move-exception v2

    goto :goto_f
.end method

.method protected parseWsls(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0x9

    const/4 v3, -0x1

    .line 151
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 154
    .local v2, sum:I
    :try_start_7
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 155
    .local v0, ch:C
    if-eq v0, v6, :cond_11

    if-ne v0, v5, :cond_24

    .line 156
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 157
    add-int/lit8 p1, p1, 0x1

    .line 165
    :goto_15
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 166
    if-eq v0, v6, :cond_1f

    if-ne v0, v5, :cond_2d

    .line 167
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    .line 168
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 158
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseCrlf(I)I

    move-result v1

    if-eq v1, v3, :cond_3a

    .line 159
    add-int/2addr p1, v1

    .line 160
    add-int/2addr v2, v1

    goto :goto_15

    .line 169
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseCrlf(I)I
    :try_end_30
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_30} :catch_36

    move-result v1

    if-eq v1, v3, :cond_37

    .line 170
    add-int/2addr p1, v1

    .line 171
    add-int/2addr v2, v1

    goto :goto_15

    .line 176
    .end local v0           #ch:C
    :catch_36
    move-exception v4

    .line 179
    :cond_37
    if-lez v2, :cond_3a

    move v3, v2

    .line 181
    :cond_3a
    return v3
.end method

.method protected parseXWord(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 243
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 244
    .local v1, sum:I
    const-string v3, "X-"

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 245
    if-ne v2, v0, :cond_d

    .line 255
    :cond_c
    :goto_c
    return v2

    .line 247
    :cond_d
    add-int/2addr p1, v0

    .line 248
    add-int/2addr v1, v0

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/VParser;->parseWord(I)I

    move-result v0

    .line 251
    if-eq v2, v0, :cond_c

    .line 254
    add-int/2addr v1, v0

    move v2, v1

    .line 255
    goto :goto_c
.end method

.method protected removeWs(I)I
    .registers 5
    .parameter "offset"

    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_a

    .line 229
    const/4 v1, -0x1

    .line 236
    :cond_9
    return v1

    .line 230
    :cond_a
    const/4 v1, 0x0

    .line 232
    .local v1, sum:I
    :goto_b
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ch:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_19

    const/16 v2, 0x9

    if-ne v0, v2, :cond_9

    .line 233
    :cond_19
    add-int/lit8 p1, p1, 0x1

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .parameter "is"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 101
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 102
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, b:Ljava/lang/StringBuilder;
    :goto_b
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .local v1, ch:I
    if-eq v1, v5, :cond_3c

    .line 107
    const/16 v4, 0xd

    if-ne v1, v4, :cond_4f

    .line 108
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 109
    const/16 v4, 0xa

    if-ne v1, v4, :cond_4a

    .line 110
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 111
    const/16 v4, 0x20

    if-eq v1, v4, :cond_29

    const/16 v4, 0x9

    if-ne v1, v4, :cond_35

    .line 112
    :cond_29
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_54
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2d} :catch_2e

    goto :goto_b

    .line 126
    .end local v1           #ch:I
    :catch_2e
    move-exception v2

    .line 130
    .local v2, e:Ljava/lang/Exception;
    if-eqz v3, :cond_34

    .line 131
    :try_start_31
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_5b

    .line 137
    .end local v2           #e:Ljava/lang/Exception;
    :cond_34
    :goto_34
    return-void

    .line 115
    .restart local v1       #ch:I
    :cond_35
    :try_start_35
    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    if-ne v1, v5, :cond_4f

    .line 125
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_54
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_42} :catch_2e

    .line 130
    if-eqz v3, :cond_34

    .line 131
    :try_start_44
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_34

    .line 133
    :catch_48
    move-exception v2

    .line 134
    .local v2, e:Ljava/io/IOException;
    goto :goto_34

    .line 120
    .end local v2           #e:Ljava/io/IOException;
    :cond_4a
    :try_start_4a
    const-string v4, "\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_4f
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_54
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_2e

    goto :goto_b

    .line 129
    .end local v1           #ch:I
    :catchall_54
    move-exception v4

    .line 130
    if-eqz v3, :cond_5a

    .line 131
    :try_start_57
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5d

    .line 134
    :cond_5a
    throw v4

    .line 133
    .local v2, e:Ljava/lang/Exception;
    :catch_5b
    move-exception v2

    .line 134
    .local v2, e:Ljava/io/IOException;
    goto :goto_34

    .line 133
    .end local v2           #e:Ljava/io/IOException;
    :catch_5d
    move-exception v2

    .line 134
    .restart local v2       #e:Ljava/io/IOException;
    goto :goto_34
.end method
