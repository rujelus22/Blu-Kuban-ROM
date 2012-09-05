.class public abstract Lcom/android/calendar/vcal/pim/VParser;
.super Ljava/lang/Object;
.source "VParser.java"


# instance fields
.field protected final PARSE_ERROR:I

.field protected mBuffer:Ljava/lang/String;

.field protected mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

.field protected mEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    .line 38
    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/vcal/pim/VParser;->PARSE_ERROR:I

    return-void
.end method


# virtual methods
.method protected getWord(I)Ljava/lang/String;
    .registers 5
    .parameter "offset"

    .prologue
    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v1, word:Ljava/lang/StringBuilder;
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 495
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/VParser;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_15

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_1c

    .line 496
    :cond_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_18} :catch_1b

    .line 497
    add-int/lit8 p1, p1, 0x1

    .line 501
    goto :goto_5

    .line 502
    .end local v0           #ch:C
    :catch_1b
    move-exception v2

    .line 505
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected isLetter(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 481
    const/16 v0, 0x61

    if-lt p1, v0, :cond_8

    const/16 v0, 0x7a

    if-le p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_12

    .line 482
    :cond_10
    const/4 v0, 0x1

    .line 484
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

    .line 459
    const/16 v1, 0x30

    if-lt p1, v1, :cond_a

    const/16 v1, 0x39

    if-gt p1, v1, :cond_a

    .line 465
    :cond_9
    :goto_9
    return v0

    .line 461
    :cond_a
    const/16 v1, 0x61

    if-lt p1, v1, :cond_12

    const/16 v1, 0x7a

    if-le p1, v1, :cond_9

    .line 463
    :cond_12
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1a

    const/16 v1, 0x5a

    if-le p1, v1, :cond_9

    .line 465
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isPrintable(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 472
    const/16 v0, 0x20

    if-lt p1, v0, :cond_a

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_a

    .line 473
    const/4 v0, 0x1

    .line 474
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/calendar/vcal/pim/VBuilder;)Z
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
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/vcal/pim/VParser;->setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 72
    iput-object p3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    .line 73
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, offset:I
    const/4 v2, 0x0

    .line 75
    .local v2, sum:I
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_11

    .line 76
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->start()V

    .line 79
    :cond_11
    :goto_11
    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/VParser;->parseVFile(I)I

    move-result v1

    .line 80
    const/4 v3, -0x1

    if-ne v3, v1, :cond_2b

    .line 87
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_21

    .line 88
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->end()V

    .line 90
    :cond_21
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_2e

    const/4 v3, 0x1

    :goto_2a
    return v3

    .line 83
    :cond_2b
    add-int/2addr v0, v1

    .line 84
    add-int/2addr v2, v1

    goto :goto_11

    .line 90
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method protected parse8bit(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, index:I
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 286
    if-ne v0, v1, :cond_11

    move v0, v1

    .line 289
    .end local v0           #index:I
    :cond_11
    return v0
.end method

.method protected parseBase64(I)I
    .registers 8
    .parameter "offset"

    .prologue
    .line 402
    const/4 v3, 0x0

    .line 406
    .local v3, sum:I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 408
    .local v0, ch:C
    const/16 v4, 0xd

    if-ne v0, v4, :cond_17

    .line 409
    const-string v4, "\r\n\r\n"

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_11} :catch_1c

    move-result v2

    .line 410
    .local v2, ret:I
    add-int/2addr v3, v2

    .line 421
    add-int/lit8 v3, v3, -0x2

    move v4, v3

    .line 422
    .end local v0           #ch:C
    .end local v2           #ret:I
    :goto_16
    return v4

    .line 414
    .restart local v0       #ch:C
    :cond_17
    add-int/lit8 v3, v3, 0x1

    .line 415
    add-int/lit8 p1, p1, 0x1

    .line 417
    goto :goto_1

    .line 418
    .end local v0           #ch:C
    :catch_1c
    move-exception v1

    .line 419
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

    .line 603
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 605
    .local v1, sum:I
    const-string v3, "us-ascii"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 606
    if-eq v0, v2, :cond_f

    .line 607
    add-int/2addr v1, v0

    move v2, v1

    .line 689
    :cond_e
    :goto_e
    return v2

    .line 611
    :cond_f
    const-string v3, "iso-8859-1"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 612
    if-eq v0, v2, :cond_1a

    .line 613
    add-int/2addr v1, v0

    move v2, v1

    .line 614
    goto :goto_e

    .line 617
    :cond_1a
    const-string v3, "iso-8859-2"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 618
    if-eq v0, v2, :cond_25

    .line 619
    add-int/2addr v1, v0

    move v2, v1

    .line 620
    goto :goto_e

    .line 623
    :cond_25
    const-string v3, "iso-8859-3"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 624
    if-eq v0, v2, :cond_30

    .line 625
    add-int/2addr v1, v0

    move v2, v1

    .line 626
    goto :goto_e

    .line 629
    :cond_30
    const-string v3, "iso-8859-4"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 630
    if-eq v0, v2, :cond_3b

    .line 631
    add-int/2addr v1, v0

    move v2, v1

    .line 632
    goto :goto_e

    .line 635
    :cond_3b
    const-string v3, "iso-8859-5"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 636
    if-eq v0, v2, :cond_46

    .line 637
    add-int/2addr v1, v0

    move v2, v1

    .line 638
    goto :goto_e

    .line 641
    :cond_46
    const-string v3, "iso-8859-6"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 642
    if-eq v0, v2, :cond_51

    .line 643
    add-int/2addr v1, v0

    move v2, v1

    .line 644
    goto :goto_e

    .line 647
    :cond_51
    const-string v3, "iso-8859-7"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 648
    if-eq v0, v2, :cond_5c

    .line 649
    add-int/2addr v1, v0

    move v2, v1

    .line 650
    goto :goto_e

    .line 653
    :cond_5c
    const-string v3, "iso-8859-8"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 654
    if-eq v0, v2, :cond_67

    .line 655
    add-int/2addr v1, v0

    move v2, v1

    .line 656
    goto :goto_e

    .line 659
    :cond_67
    const-string v3, "iso-8859-9"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 660
    if-eq v0, v2, :cond_72

    .line 661
    add-int/2addr v1, v0

    move v2, v1

    .line 662
    goto :goto_e

    .line 665
    :cond_72
    const-string v3, "euc-kr"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 666
    if-eq v0, v2, :cond_7d

    .line 667
    add-int/2addr v1, v0

    move v2, v1

    .line 668
    goto :goto_e

    .line 671
    :cond_7d
    const-string v3, "shift_jis"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 672
    if-eq v0, v2, :cond_88

    .line 673
    add-int/2addr v1, v0

    move v2, v1

    .line 674
    goto :goto_e

    .line 677
    :cond_88
    const-string v3, "utf-8"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 678
    if-eq v0, v2, :cond_94

    .line 679
    add-int/2addr v1, v0

    move v2, v1

    .line 680
    goto/16 :goto_e

    .line 683
    :cond_94
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 684
    if-eq v0, v2, :cond_e

    .line 685
    add-int/2addr v1, v0

    move v2, v1

    .line 686
    goto/16 :goto_e
.end method

.method protected parseCrlf(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 48
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_a

    .line 58
    :cond_9
    :goto_9
    return v1

    .line 50
    :cond_a
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 51
    .local v0, ch:C
    const/16 v2, 0xd

    if-ne v0, v2, :cond_9

    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 54
    const/16 v2, 0xa

    if-ne v0, v2, :cond_9

    .line 55
    const/4 v1, 0x2

    goto :goto_9
.end method

.method protected parseLangVal(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 697
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 699
    .local v1, sum:I
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseTag(I)I

    move-result v0

    .line 700
    if-ne v2, v0, :cond_a

    .line 721
    :goto_9
    return v2

    .line 703
    :cond_a
    add-int/2addr p1, v0

    .line 704
    add-int/2addr v1, v0

    .line 707
    :goto_c
    const-string v3, "-"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 708
    if-ne v2, v0, :cond_17

    :cond_15
    move v2, v1

    .line 721
    goto :goto_9

    .line 711
    :cond_17
    add-int/2addr p1, v0

    .line 712
    add-int/2addr v1, v0

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseTag(I)I

    move-result v0

    .line 715
    if-eq v2, v0, :cond_15

    .line 718
    add-int/2addr p1, v0

    .line 719
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

    .line 359
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 361
    .local v2, sum:I
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 362
    if-ne v3, v1, :cond_15

    .line 394
    :cond_14
    :goto_14
    return v3

    .line 364
    :cond_15
    add-int/2addr p1, v1

    .line 365
    add-int/2addr v2, v1

    .line 368
    :try_start_17
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 369
    .local v0, ch:I
    const/16 v4, 0x20

    if-eq v0, v4, :cond_25

    const/16 v4, 0x9

    if-ne v0, v4, :cond_29

    .line 370
    :cond_25
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_14

    .line 373
    :cond_29
    const/16 v4, 0xd

    if-ne v0, v4, :cond_3f

    .line 374
    add-int/lit8 p1, p1, 0x1

    .line 375
    add-int/lit8 v2, v2, 0x1

    .line 376
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 377
    const/16 v4, 0xa

    if-ne v0, v4, :cond_3f

    .line 378
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 379
    goto :goto_14

    .line 382
    :cond_3f
    if-lt v0, v6, :cond_43

    if-le v0, v7, :cond_47

    :cond_43
    if-lt v0, v8, :cond_14

    if-gt v0, v9, :cond_14

    .line 383
    :cond_47
    add-int/lit8 p1, p1, 0x1

    .line 384
    add-int/lit8 v2, v2, 0x1

    .line 385
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C
    :try_end_50
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_50} :catch_5d

    move-result v0

    .line 386
    if-lt v0, v6, :cond_55

    if-le v0, v7, :cond_59

    :cond_55
    if-lt v0, v8, :cond_14

    if-gt v0, v9, :cond_14

    .line 387
    :cond_59
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 388
    goto :goto_14

    .line 391
    .end local v0           #ch:I
    :catch_5d
    move-exception v4

    goto :goto_14
.end method

.method protected parsePEncodingVal(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 558
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 560
    .local v1, sum:I
    const-string v3, "7BIT"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 561
    if-eq v0, v2, :cond_13

    .line 562
    const-string v2, "7BIT"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 563
    add-int/2addr v1, v0

    move v2, v1

    .line 595
    :cond_12
    :goto_12
    return v2

    .line 567
    :cond_13
    const-string v3, "8BIT"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 568
    if-eq v0, v2, :cond_22

    .line 569
    const-string v2, "8BIT"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 570
    add-int/2addr v1, v0

    move v2, v1

    .line 571
    goto :goto_12

    .line 574
    :cond_22
    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 575
    if-eq v0, v2, :cond_31

    .line 576
    const-string v2, "QUOTED-PRINTABLE"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 577
    add-int/2addr v1, v0

    move v2, v1

    .line 578
    goto :goto_12

    .line 581
    :cond_31
    const-string v3, "BASE64"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 582
    if-eq v0, v2, :cond_40

    .line 583
    const-string v2, "BASE64"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 584
    add-int/2addr v1, v0

    move v2, v1

    .line 585
    goto :goto_12

    .line 588
    :cond_40
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 589
    if-eq v0, v2, :cond_12

    .line 590
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 591
    add-int/2addr v1, v0

    move v2, v1

    .line 592
    goto :goto_12
.end method

.method protected parsePValueVal(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 512
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 514
    .local v1, sum:I
    const-string v3, "INLINE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 515
    if-eq v0, v2, :cond_f

    .line 516
    add-int/2addr v1, v0

    move v2, v1

    .line 550
    :cond_e
    :goto_e
    return v2

    .line 520
    :cond_f
    const-string v3, "URL"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 521
    if-eq v0, v2, :cond_1a

    .line 522
    add-int/2addr v1, v0

    move v2, v1

    .line 523
    goto :goto_e

    .line 526
    :cond_1a
    const-string v3, "CONTENT-ID"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 527
    if-eq v0, v2, :cond_25

    .line 528
    add-int/2addr v1, v0

    move v2, v1

    .line 529
    goto :goto_e

    .line 532
    :cond_25
    const-string v3, "CID"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 533
    if-eq v0, v2, :cond_30

    .line 534
    add-int/2addr v1, v0

    move v2, v1

    .line 535
    goto :goto_e

    .line 538
    :cond_30
    const-string v3, "INLINE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 539
    if-eq v0, v2, :cond_3b

    .line 540
    add-int/2addr v1, v0

    move v2, v1

    .line 541
    goto :goto_e

    .line 544
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 545
    if-eq v0, v2, :cond_e

    .line 546
    add-int/2addr v1, v0

    move v2, v1

    .line 547
    goto :goto_e
.end method

.method protected parsePtext(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 329
    const/4 v2, 0x0

    .line 332
    .local v2, ret:I
    :try_start_2
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 333
    .local v0, ch:C
    const/16 v4, 0xd

    if-ne v0, v4, :cond_19

    .line 334
    add-int/lit8 p1, p1, 0x1

    .line 335
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_13} :catch_27

    move-result v0

    .line 336
    const/16 v4, 0xa

    if-ne v0, v4, :cond_19

    .line 351
    .end local v0           #ch:C
    :cond_18
    :goto_18
    return v3

    .line 340
    .restart local v0       #ch:C
    :cond_19
    const/16 v4, 0x3d

    if-eq v0, v4, :cond_29

    const/16 v4, 0x20

    if-eq v0, v4, :cond_29

    const/16 v4, 0x9

    if-eq v0, v4, :cond_29

    .line 341
    const/4 v3, 0x1

    goto :goto_18

    .line 343
    .end local v0           #ch:C
    :catch_27
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_18

    .line 347
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #ch:C
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseOctet(I)I

    move-result v2

    .line 348
    if-eq v2, v3, :cond_18

    move v3, v2

    .line 349
    goto :goto_18
.end method

.method protected parseQuotedPrintable(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 298
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 300
    .local v1, sum:I
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->removeWs(I)I

    move-result v0

    .line 301
    add-int/2addr p1, v0

    .line 302
    add-int/2addr v1, v0

    .line 305
    :goto_9
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parsePtext(I)I

    move-result v0

    .line 306
    if-ne v4, v0, :cond_1a

    .line 316
    const-string v2, "="

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 317
    if-eq v0, v4, :cond_19

    .line 319
    add-int/2addr v1, v0

    .line 322
    :cond_19
    return v1

    .line 308
    :cond_1a
    add-int/2addr p1, v0

    .line 309
    add-int/2addr v1, v0

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->removeWs(I)I

    move-result v0

    .line 312
    add-int/2addr p1, v0

    .line 313
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

    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, sum:I
    if-nez p2, :cond_5

    .line 207
    :cond_4
    :goto_4
    return v3

    .line 188
    :cond_5
    if-eqz p3, :cond_1e

    .line 189
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 191
    .local v1, len:I
    :try_start_b
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    add-int v5, p1, v1

    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_16} :catch_1c

    move-result v4

    if-eqz v4, :cond_4

    .line 192
    move v2, v1

    .end local v1           #len:I
    :goto_1a
    move v3, v2

    .line 207
    goto :goto_4

    .line 196
    .restart local v1       #len:I
    :catch_1c
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_4

    .line 201
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #len:I
    :cond_1e
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 202
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1a
.end method

.method protected parseTag(I)I
    .registers 6
    .parameter "offset"

    .prologue
    .line 728
    const/4 v2, 0x0

    .local v2, sum:I
    const/4 v1, 0x0

    .line 731
    .local v1, i:I
    const/4 v1, 0x0

    :goto_3
    const/16 v3, 0x8

    if-ge v1, v3, :cond_13

    .line 732
    :try_start_7
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 733
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/VParser;->isLetter(C)Z
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_10} :catch_1e

    move-result v3

    if-nez v3, :cond_17

    .line 742
    .end local v0           #ch:C
    :cond_13
    :goto_13
    if-nez v1, :cond_16

    .line 743
    const/4 v2, -0x1

    .line 745
    .end local v2           #sum:I
    :cond_16
    return v2

    .line 736
    .restart local v0       #ch:C
    .restart local v2       #sum:I
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 737
    add-int/lit8 p1, p1, 0x1

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 739
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

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, ret:I
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "7BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "8BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 253
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parse8bit(I)I

    move-result v0

    .line 254
    if-eq v0, v1, :cond_2f

    move v1, v0

    .line 275
    :cond_2f
    :goto_2f
    return v1

    .line 260
    :cond_30
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseQuotedPrintable(I)I

    move-result v0

    .line 262
    if-eq v0, v1, :cond_2f

    move v1, v0

    .line 263
    goto :goto_2f

    .line 268
    :cond_42
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "BASE64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseBase64(I)I

    move-result v0

    .line 270
    if-eq v0, v1, :cond_2f

    move v1, v0

    .line 271
    goto :goto_2f
.end method

.method protected parseWord(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/16 v4, 0x3b

    .line 429
    const/4 v1, 0x0

    .line 432
    .local v1, sum:I
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 433
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/VParser;->isPrintable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 450
    .end local v0           #ch:C
    :cond_f
    :goto_f
    if-nez v1, :cond_12

    .line 451
    const/4 v1, -0x1

    .line 452
    .end local v1           #sum:I
    :cond_12
    return v1

    .line 435
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

    .line 437
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_3b

    .line 438
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_34} :catch_40

    move-result v0

    .line 439
    if-ne v0, v4, :cond_3b

    .line 440
    add-int/lit8 p1, p1, 0x1

    .line 441
    add-int/lit8 v1, v1, 0x1

    .line 444
    :cond_3b
    add-int/lit8 p1, p1, 0x1

    .line 445
    add-int/lit8 v1, v1, 0x1

    .line 446
    goto :goto_3

    .line 447
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

    .line 140
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 143
    .local v2, sum:I
    :try_start_7
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 144
    .local v0, ch:C
    if-eq v0, v6, :cond_11

    if-ne v0, v5, :cond_24

    .line 145
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 146
    add-int/lit8 p1, p1, 0x1

    .line 154
    :goto_15
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 155
    if-eq v0, v6, :cond_1f

    if-ne v0, v5, :cond_2d

    .line 156
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    .line 157
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 147
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseCrlf(I)I

    move-result v1

    if-eq v1, v3, :cond_3a

    .line 148
    add-int/2addr p1, v1

    .line 149
    add-int/2addr v2, v1

    goto :goto_15

    .line 158
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseCrlf(I)I
    :try_end_30
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_30} :catch_36

    move-result v1

    if-eq v1, v3, :cond_37

    .line 159
    add-int/2addr p1, v1

    .line 160
    add-int/2addr v2, v1

    goto :goto_15

    .line 165
    .end local v0           #ch:C
    :catch_36
    move-exception v4

    .line 168
    :cond_37
    if-lez v2, :cond_3a

    move v3, v2

    .line 170
    :cond_3a
    return v3
.end method

.method protected parseXWord(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 229
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 230
    .local v1, sum:I
    const-string v3, "X-"

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 231
    if-ne v2, v0, :cond_d

    .line 241
    :cond_c
    :goto_c
    return v2

    .line 233
    :cond_d
    add-int/2addr p1, v0

    .line 234
    add-int/2addr v1, v0

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseWord(I)I

    move-result v0

    .line 237
    if-eq v2, v0, :cond_c

    .line 240
    add-int/2addr v1, v0

    move v2, v1

    .line 241
    goto :goto_c
.end method

.method protected removeWs(I)I
    .registers 5
    .parameter "offset"

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_a

    .line 215
    const/4 v1, -0x1

    .line 222
    :cond_9
    return v1

    .line 216
    :cond_a
    const/4 v1, 0x0

    .line 218
    .local v1, sum:I
    :goto_b
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ch:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_19

    const/16 v2, 0x9

    if-ne v0, v2, :cond_9

    .line 219
    :cond_19
    add-int/lit8 p1, p1, 0x1

    .line 220
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

    .line 98
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, b:Ljava/lang/StringBuilder;
    :goto_b
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .local v1, ch:I
    if-eq v1, v5, :cond_37

    .line 104
    const/16 v4, 0xd

    if-ne v1, v4, :cond_43

    .line 105
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 106
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3e

    .line 107
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 108
    const/16 v4, 0x20

    if-eq v1, v4, :cond_29

    const/16 v4, 0x9

    if-ne v1, v4, :cond_30

    .line 109
    :cond_29
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 123
    .end local v1           #ch:I
    :catch_2e
    move-exception v2

    .line 126
    :goto_2f
    return-void

    .line 112
    .restart local v1       #ch:I
    :cond_30
    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    if-ne v1, v5, :cond_43

    .line 122
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    goto :goto_2f

    .line 117
    :cond_3e
    const-string v4, "\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_43
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_47} :catch_2e

    goto :goto_b
.end method
