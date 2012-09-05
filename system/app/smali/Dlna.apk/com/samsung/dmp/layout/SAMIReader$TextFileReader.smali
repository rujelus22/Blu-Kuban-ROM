.class Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;
.super Ljava/lang/Object;
.source "SAMIReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/SAMIReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextFileReader"
.end annotation


# instance fields
.field public IsEOFReached:Z

.field public ReaderStatus:I

.field public SubtitleData:Lcom/samsung/dmp/layout/SAMIReader$LineData;

.field private in:Ljava/io/FileInputStream;

.field private mBytesRead:I

.field private mEncoding:I

.field private mEncodingMultiplier:I

.field private mGlobalOffset:I

.field private final mbyte_array:[B

.field private final mkeywords:[[B

.field final synthetic this$0:Lcom/samsung/dmp/layout/SAMIReader;


# direct methods
.method public constructor <init>(Lcom/samsung/dmp/layout/SAMIReader;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter "filename"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 264
    iput-object p1, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->this$0:Lcom/samsung/dmp/layout/SAMIReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->SubtitleData:Lcom/samsung/dmp/layout/SAMIReader$LineData;

    .line 202
    iput v3, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    .line 204
    iput-boolean v3, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->IsEOFReached:Z

    .line 206
    iput-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->in:Ljava/io/FileInputStream;

    .line 208
    iput v3, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    .line 210
    iput v3, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    .line 214
    iput v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    .line 216
    iput v6, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    .line 224
    const/16 v1, 0x1f4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    .line 226
    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_4a

    aput-object v2, v1, v3

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_50

    aput-object v2, v1, v6

    new-array v2, v7, [B

    fill-array-data v2, :array_58

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mkeywords:[[B

    .line 266
    :try_start_3c
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->in:Ljava/io/FileInputStream;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_43} :catch_44

    .line 273
    :goto_43
    return-void

    .line 267
    :catch_44
    move-exception v0

    .line 268
    .local v0, e:Ljava/io/IOException;
    iput-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->in:Ljava/io/FileInputStream;

    .line 269
    iput v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    goto :goto_43

    .line 226
    :array_4a
    .array-data 0x1
        0x53t
        0x59t
        0x4et
        0x43t
    .end array-data

    :array_50
    .array-data 0x1
        0x43t
        0x4ct
        0x41t
        0x53t
        0x53t
    .end array-data

    nop

    :array_58
    .array-data 0x1
        0x42t
        0x52t
    .end array-data
.end method

.method private CloseFile()V
    .registers 2

    .prologue
    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->in:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 705
    :goto_5
    return-void

    .line 701
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private ReadFromFile()I
    .registers 9

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, byte_count:I
    const/4 v3, 0x0

    .line 655
    .local v3, length:I
    const/4 v2, 0x0

    .line 657
    .local v2, elements:I
    iget v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    if-nez v5, :cond_39

    .line 658
    const/16 v3, 0x1f4

    .line 662
    :goto_b
    new-array v4, v3, [B

    .line 663
    .local v4, tmp_arr:[B
    rsub-int v2, v3, 0x1f4

    .line 665
    iget-object v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->in:Ljava/io/FileInputStream;

    if-eqz v5, :cond_49

    .line 667
    :try_start_13
    iget-object v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->in:Ljava/io/FileInputStream;

    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_3c

    move-result v0

    .line 675
    :goto_19
    if-lez v0, :cond_46

    .line 676
    iget-object v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    iget-object v6, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    invoke-static {v5, v3, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    iget-object v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    invoke-static {v4, v7, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    iput v7, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    .line 679
    iput v7, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    .line 681
    add-int v5, v0, v2

    const/16 v6, 0x1f4

    if-ge v5, v6, :cond_43

    .line 682
    add-int/2addr v0, v2

    .line 683
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->IsEOFReached:Z

    .line 684
    invoke-direct {p0}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->CloseFile()V

    .line 695
    :goto_38
    return v0

    .line 660
    .end local v4           #tmp_arr:[B
    :cond_39
    iget v3, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    goto :goto_b

    .line 668
    .restart local v4       #tmp_arr:[B
    :catch_3c
    move-exception v1

    .line 669
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->CloseFile()V

    .line 670
    iput v6, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    goto :goto_19

    .line 686
    .end local v1           #e:Ljava/io/IOException;
    :cond_43
    const/16 v0, 0x1f4

    goto :goto_38

    .line 689
    :cond_46
    iput v6, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    goto :goto_38

    .line 692
    :cond_49
    iput v6, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    goto :goto_38
.end method

.method private containsDataIgnoreCase([BII[BI)Z
    .registers 14
    .parameter "where"
    .parameter "start"
    .parameter "end"
    .parameter "what"
    .parameter "encoding"

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, byte_to_compare:B
    const/4 v1, 0x0

    .line 736
    .local v1, result:Z
    const/4 v2, 0x0

    .line 737
    .local v2, searchIsDone:Z
    array-length v5, p4

    .line 738
    .local v5, template_length:I
    const/4 v3, 0x0

    .line 739
    .local v3, searchOffeset:I
    const/4 v4, 0x0

    .line 742
    .local v4, templateOffeset:I
    add-int v6, p2, v5

    add-int/lit8 v7, p3, 0x1

    if-le v6, v7, :cond_e

    .line 743
    const/4 v6, 0x0

    .line 772
    :goto_d
    return v6

    .line 746
    :cond_e
    :goto_e
    if-nez v2, :cond_3a

    .line 748
    add-int v6, p2, v3

    aget-byte v0, p1, v6

    .line 749
    const/16 v6, 0x7b

    if-ge v0, v6, :cond_1f

    const/16 v6, 0x60

    if-le v0, v6, :cond_1f

    .line 750
    add-int/lit8 v6, v0, -0x20

    int-to-byte v0, v6

    .line 755
    :cond_1f
    if-gtz v0, :cond_23

    if-nez p5, :cond_2d

    .line 756
    :cond_23
    aget-byte v6, p4, v4

    if-ne v0, v6, :cond_38

    .line 757
    add-int/lit8 v4, v4, 0x1

    .line 762
    :goto_29
    if-ne v4, v5, :cond_2d

    .line 763
    const/4 v2, 0x1

    .line 764
    const/4 v1, 0x1

    .line 767
    :cond_2d
    add-int v6, p2, v3

    add-int/2addr v6, v5

    add-int/lit8 v7, p3, 0x1

    if-le v6, v7, :cond_35

    .line 768
    const/4 v2, 0x1

    .line 770
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 759
    :cond_38
    const/4 v4, 0x0

    goto :goto_29

    :cond_3a
    move v6, v1

    .line 772
    goto :goto_d
.end method

.method private getSubtitleText()Ljava/lang/String;
    .registers 19

    .prologue
    .line 430
    const/4 v15, 0x0

    .line 431
    .local v15, result:Ljava/lang/String;
    const/4 v14, -0x1

    .local v14, openBracket:I
    const/4 v11, -0x1

    .line 432
    .local v11, closeBracket:I
    const/4 v12, 0x0

    .line 433
    .local v12, hasClass:Z
    const/16 v16, 0x0

    .line 434
    .local v16, stop:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    .local v4, offset:I
    const/4 v13, 0x0

    .line 435
    .local v13, length:I
    const/16 v17, 0x0

    .line 437
    .local v17, syncPos:I
    :goto_d
    if-nez v16, :cond_96

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    const/16 v6, 0x3c

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v14

    .line 441
    if-gez v14, :cond_7b

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    const/16 v6, 0x3e

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v11

    .line 449
    :goto_39
    if-ltz v14, :cond_56

    if-ltz v11, :cond_56

    .line 450
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    add-int/lit8 v7, v14, 0x1

    add-int/lit8 v8, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mkeywords:[[B

    const/4 v3, 0x1

    aget-object v9, v2, v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->containsDataIgnoreCase([BII[BI)Z

    move-result v12

    .line 454
    :cond_56
    if-gez v14, :cond_5b

    if-ltz v11, :cond_5b

    .line 457
    const/4 v12, 0x0

    .line 459
    :cond_5b
    if-gez v11, :cond_74

    .line 460
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    .line 461
    const/16 v16, 0x1

    .line 462
    const/4 v12, 0x0

    .line 463
    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    .line 464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    if-gez v2, :cond_74

    .line 465
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    .line 469
    :cond_74
    if-nez v12, :cond_92

    if-nez v16, :cond_92

    .line 470
    add-int/lit8 v4, v11, 0x1

    goto :goto_d

    .line 446
    :cond_7b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    add-int/lit8 v7, v14, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    const/16 v9, 0x3e

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v11

    goto :goto_39

    .line 472
    :cond_92
    const/16 v16, 0x1

    goto/16 :goto_d

    .line 476
    :cond_96
    const/4 v2, 0x1

    if-ne v12, v2, :cond_b2

    .line 477
    add-int/lit8 v2, v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookForNextSync(I)I

    move-result v17

    .line 479
    if-ltz v17, :cond_bf

    .line 480
    sub-int v13, v17, v11

    .line 481
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->processSubtitle(II)Ljava/lang/String;

    move-result-object v15

    .line 498
    :cond_b2
    :goto_b2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    if-nez v2, :cond_be

    .line 499
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    .line 502
    :cond_be
    return-object v15

    .line 483
    :cond_bf
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->IsEOFReached:Z

    if-nez v2, :cond_d2

    .line 484
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    .line 485
    const/16 v16, 0x1

    .line 486
    const/4 v12, 0x0

    .line 487
    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    goto :goto_b2

    .line 490
    :cond_d2
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    .line 491
    const/16 v16, 0x1

    .line 492
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    sub-int v13, v2, v11

    .line 493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->processSubtitle(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_b2
.end method

.method private getSyncTime()I
    .registers 22

    .prologue
    .line 323
    const/16 v18, -0x1

    .local v18, openBracket:I
    const/4 v11, -0x1

    .local v11, closeBracket:I
    const/4 v13, -0x1

    .line 324
    .local v13, equate:I
    const/16 v19, -0x1

    .line 325
    .local v19, result:I
    const/16 v16, 0x0

    .line 326
    .local v16, hasSync:Z
    const/16 v20, 0x0

    .line 327
    .local v20, stop:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    .local v4, offset:I
    const/16 v17, 0x0

    .line 328
    .local v17, length:I
    const/4 v14, 0x0

    .line 331
    .local v14, expression:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    if-lez v2, :cond_3b

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    const/16 v6, 0x3c

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v18

    .line 334
    if-gez v18, :cond_b4

    .line 335
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    .line 336
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    .line 346
    :cond_3b
    :goto_3b
    if-nez v20, :cond_db

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    const/16 v6, 0x3c

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v18

    .line 351
    if-gez v18, :cond_c0

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    const/16 v6, 0x3e

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v11

    .line 360
    :goto_67
    if-ltz v18, :cond_84

    if-ltz v11, :cond_84

    .line 361
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    add-int/lit8 v7, v18, 0x1

    add-int/lit8 v8, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mkeywords:[[B

    const/4 v3, 0x0

    aget-object v9, v2, v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->containsDataIgnoreCase([BII[BI)Z

    move-result v16

    .line 365
    :cond_84
    if-gez v18, :cond_91

    if-ltz v11, :cond_91

    .line 366
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    .line 367
    const/16 v20, 0x1

    .line 368
    const/16 v16, 0x0

    .line 370
    :cond_91
    if-gez v11, :cond_ad

    .line 371
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    .line 372
    const/16 v20, 0x1

    .line 373
    const/16 v16, 0x0

    .line 374
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    .line 375
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    if-gez v2, :cond_ad

    .line 376
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    .line 380
    :cond_ad
    if-nez v16, :cond_d7

    if-nez v20, :cond_d7

    .line 381
    add-int/lit8 v4, v11, 0x1

    goto :goto_3b

    .line 338
    :cond_b4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    .line 339
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    goto/16 :goto_3b

    .line 356
    :cond_c0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    add-int/lit8 v7, v18, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    const/16 v9, 0x3e

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v11

    goto :goto_67

    .line 383
    :cond_d7
    const/16 v20, 0x1

    goto/16 :goto_3b

    .line 387
    :cond_db
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_11b

    .line 388
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    add-int/lit8 v7, v18, 0x1

    add-int/lit8 v8, v11, -0x1

    const/16 v9, 0x3d

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v13

    .line 392
    if-lez v13, :cond_146

    .line 393
    sub-int v2, v11, v13

    add-int/lit8 v17, v2, -0x1

    .line 395
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_132

    .line 396
    add-int/lit8 v17, v17, -0x1

    .line 398
    :try_start_103
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    add-int/lit8 v3, v13, 0x1

    const-string v5, "UTF-16"

    move/from16 v0, v17

    invoke-direct {v15, v2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_112
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_103 .. :try_end_112} :catch_128

    .end local v14           #expression:Ljava/lang/String;
    .local v15, expression:Ljava/lang/String;
    move-object v14, v15

    .line 407
    .end local v15           #expression:Ljava/lang/String;
    .restart local v14       #expression:Ljava/lang/String;
    :goto_113
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 409
    :try_start_117
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11a
    .catch Ljava/lang/NumberFormatException; {:try_start_117 .. :try_end_11a} :catch_140

    move-result v19

    .line 422
    :cond_11b
    :goto_11b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    if-nez v2, :cond_127

    .line 423
    add-int/lit8 v2, v11, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mGlobalOffset:I

    .line 426
    :cond_127
    return v19

    .line 399
    :catch_128
    move-exception v12

    .line 400
    .local v12, e:Ljava/io/UnsupportedEncodingException;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    .line 401
    invoke-virtual {v12}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_113

    .line 404
    .end local v12           #e:Ljava/io/UnsupportedEncodingException;
    :cond_132
    new-instance v14, Ljava/lang/String;

    .end local v14           #expression:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    add-int/lit8 v3, v13, 0x1

    move/from16 v0, v17

    invoke-direct {v14, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .restart local v14       #expression:Ljava/lang/String;
    goto :goto_113

    .line 410
    :catch_140
    move-exception v12

    .line 411
    .local v12, e:Ljava/lang/NumberFormatException;
    const/16 v16, 0x0

    .line 412
    const/16 v19, -0x1

    .line 415
    goto :goto_11b

    .line 417
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :cond_146
    const/16 v16, 0x0

    .line 418
    const/16 v19, -0x1

    goto :goto_11b
.end method

.method private lookFor([BIIII)I
    .registers 13
    .parameter "where"
    .parameter "start"
    .parameter "end"
    .parameter "what"
    .parameter "encodingMode"

    .prologue
    const/16 v6, 0x43

    const/4 v5, 0x1

    .line 708
    const/4 v1, -0x1

    .line 709
    .local v1, result:I
    move v0, p2

    .line 710
    .local v0, pos:I
    const/4 v2, 0x0

    .line 712
    .local v2, stop:Z
    if-ne p5, v5, :cond_a

    .line 713
    add-int/lit8 p3, p3, -0x1

    .line 716
    :cond_a
    if-ltz p2, :cond_43

    if-ltz p3, :cond_43

    .line 717
    :goto_e
    if-ge v0, p3, :cond_43

    if-nez v2, :cond_43

    .line 718
    aget-byte v3, p1, v0

    int-to-byte v4, p4

    if-ne v3, v4, :cond_21

    if-eqz p5, :cond_1f

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    if-nez v3, :cond_21

    .line 720
    :cond_1f
    const/4 v2, 0x1

    .line 721
    move v1, v0

    .line 723
    :cond_21
    aget-byte v3, p1, v0

    const/16 v4, 0x4a

    if-ne v3, v4, :cond_40

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_40

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v6, :cond_40

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p1, v3

    if-ne v3, v6, :cond_40

    .line 724
    iget-object v3, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->this$0:Lcom/samsung/dmp/layout/SAMIReader;

    #setter for: Lcom/samsung/dmp/layout/SAMIReader;->mIsJapanese:Z
    invoke-static {v3, v5}, Lcom/samsung/dmp/layout/SAMIReader;->access$002(Lcom/samsung/dmp/layout/SAMIReader;Z)Z

    .line 725
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 729
    :cond_43
    return v1
.end method

.method private lookForNextSync(I)I
    .registers 16
    .parameter "searchOffset"

    .prologue
    .line 617
    const/4 v12, -0x1

    .line 618
    .local v12, result:I
    const/4 v11, -0x1

    .local v11, openBracket:I
    const/4 v9, -0x1

    .line 619
    .local v9, closeBracket:I
    const/4 v10, 0x0

    .line 620
    .local v10, hasSync:Z
    const/4 v13, 0x0

    .line 621
    .local v13, stop:Z
    move v2, p1

    .line 623
    .local v2, offset:I
    :goto_6
    if-nez v13, :cond_58

    .line 624
    iget-object v1, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    iget v3, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    const/16 v4, 0x3c

    iget v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v11

    .line 625
    if-gez v11, :cond_44

    .line 626
    iget-object v1, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    iget v3, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    const/16 v4, 0x3e

    iget v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v9

    .line 631
    :goto_24
    if-ltz v11, :cond_3a

    if-ltz v9, :cond_3a

    .line 632
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    add-int/lit8 v5, v11, 0x1

    add-int/lit8 v6, v9, -0x1

    iget-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mkeywords:[[B

    const/4 v1, 0x0

    aget-object v7, v0, v1

    iget v8, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->containsDataIgnoreCase([BII[BI)Z

    move-result v10

    .line 636
    :cond_3a
    if-ltz v11, :cond_3e

    if-gez v9, :cond_3f

    .line 637
    :cond_3e
    const/4 v13, 0x1

    .line 640
    :cond_3f
    if-nez v10, :cond_54

    .line 641
    add-int/lit8 v2, v9, 0x1

    goto :goto_6

    .line 628
    :cond_44
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    add-int/lit8 v5, v11, 0x1

    iget v6, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    const/16 v7, 0x3e

    iget v8, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v9

    goto :goto_24

    .line 643
    :cond_54
    const/4 v13, 0x1

    .line 644
    add-int/lit8 v12, v11, -0x1

    goto :goto_6

    .line 648
    :cond_58
    return v12
.end method

.method private processSubtitle(II)Ljava/lang/String;
    .registers 23
    .parameter "start"
    .parameter "length"

    .prologue
    .line 506
    const/4 v14, -0x1

    .local v14, openBracket:I
    const/4 v8, -0x1

    .line 507
    .local v8, closeBracket:I
    const/4 v9, -0x1

    .line 508
    .local v9, crSymb:I
    const/4 v11, 0x0

    .line 509
    .local v11, hasBr:Z
    const/4 v15, 0x0

    .line 510
    .local v15, stop:Z
    const/4 v12, 0x0

    .line 511
    .local v12, isTrim:Z
    move/from16 v0, p2

    new-array v3, v0, [B

    .line 512
    .local v3, result:[B
    const/4 v13, 0x0

    .line 513
    .local v13, lastSymbol:B
    const/16 v19, 0x1

    .line 514
    .local v19, trimMultiplier:I
    const/16 v16, 0x0

    .line 516
    .local v16, subtString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mbyte_array:[B

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    :goto_1b
    if-nez v15, :cond_a1

    .line 519
    const/4 v4, 0x0

    const/16 v6, 0x3c

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v2, p0

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v14

    .line 520
    add-int/lit8 v4, v14, 0x1

    const/16 v6, 0x3e

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v2, p0

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v8

    .line 522
    if-ltz v14, :cond_9e

    if-ltz v8, :cond_9e

    .line 523
    add-int/lit8 v4, v14, 0x1

    add-int/lit8 v5, v8, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mkeywords:[[B

    const/4 v6, 0x2

    aget-object v6, v2, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->containsDataIgnoreCase([BII[BI)Z

    move-result v11

    .line 526
    if-nez v11, :cond_77

    .line 527
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v8

    sub-int v4, p2, v8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v3, v2, v3, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    sub-int v2, v8, v14

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int/lit8 v4, v4, 0x1

    sub-int p2, v2, v4

    goto :goto_1b

    .line 531
    :cond_77
    const/16 v2, 0x26

    aput-byte v2, v3, v14

    .line 532
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v14

    const/16 v4, 0x6e

    aput-byte v4, v3, v2

    .line 534
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v14

    const/16 v4, 0x6c

    aput-byte v4, v3, v2

    .line 535
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v14

    const/16 v4, 0x3b

    aput-byte v4, v3, v2

    goto/16 :goto_1b

    .line 538
    :cond_9e
    const/4 v15, 0x1

    goto/16 :goto_1b

    .line 541
    :cond_a1
    const/4 v15, 0x0

    .line 543
    :goto_a2
    if-nez v15, :cond_fc

    .line 544
    const/16 v19, 0x1

    .line 545
    const/4 v4, 0x0

    const/16 v6, 0xd

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    move-object/from16 v2, p0

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->lookFor([BIIII)I

    move-result v9

    .line 546
    if-ltz v9, :cond_fa

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int/lit8 v2, v2, 0x1

    sub-int v2, p2, v2

    if-ge v9, v2, :cond_fa

    .line 547
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v9

    aget-byte v2, v3, v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_f8

    .line 548
    if-nez v9, :cond_d2

    .line 549
    const/16 v19, 0x2

    .line 552
    :cond_d2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int v2, v2, v19

    sub-int v2, p2, v2

    if-ge v9, v2, :cond_ef

    .line 553
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int v2, v2, v19

    add-int/2addr v2, v9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int v4, v4, v19

    add-int/2addr v4, v9

    sub-int v4, p2, v4

    invoke-static {v3, v2, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    :cond_ef
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    mul-int v2, v2, v19

    sub-int p2, p2, v2

    goto :goto_a2

    .line 559
    :cond_f8
    const/4 v15, 0x1

    goto :goto_a2

    .line 562
    :cond_fa
    const/4 v15, 0x1

    goto :goto_a2

    .line 566
    :cond_fc
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    add-int/lit8 v2, v2, -0x1

    sub-int p2, p2, v2

    .line 568
    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_147

    .line 569
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncodingMultiplier:I

    sub-int v18, p2, v2

    .local v18, t:I
    :goto_10f
    div-int/lit8 v2, p2, 0x2

    move/from16 v0, v18

    if-le v0, v2, :cond_137

    .line 570
    const/4 v13, 0x0

    .line 571
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_121

    .line 572
    add-int/lit8 v2, v18, 0x1

    aget-byte v13, v3, v2

    .line 575
    :cond_121
    aget-byte v2, v3, v18

    if-ltz v2, :cond_137

    aget-byte v2, v3, v18

    const/16 v4, 0x21

    if-ge v2, v4, :cond_137

    aget-byte v2, v3, v18

    if-eqz v2, :cond_131

    if-nez v13, :cond_137

    .line 577
    :cond_131
    move/from16 p2, v18

    .line 578
    const/4 v12, 0x1

    .line 569
    add-int/lit8 v18, v18, -0x1

    goto :goto_10f

    .line 585
    :cond_137
    aget-byte v2, v3, p2

    if-nez v2, :cond_147

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_147

    const/4 v2, 0x1

    if-ne v12, v2, :cond_147

    .line 586
    add-int/lit8 p2, p2, 0x1

    .line 590
    .end local v18           #t:I
    :cond_147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mEncoding:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_187

    .line 592
    :try_start_14e
    new-instance v17, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "UTF-16LE"

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v3, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_15a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14e .. :try_end_15a} :catch_17d

    .end local v16           #subtString:Ljava/lang/String;
    .local v17, subtString:Ljava/lang/String;
    move-object/from16 v16, v17

    .line 607
    .end local v17           #subtString:Ljava/lang/String;
    .restart local v16       #subtString:Ljava/lang/String;
    :goto_15c
    if-eqz v16, :cond_17c

    .line 608
    const-string v2, "&nbsp;"

    const-string v4, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 609
    const-string v2, "&nl;"

    const-string v4, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 610
    const-string v2, "\n\n"

    const-string v4, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 613
    :cond_17c
    return-object v16

    .line 593
    :catch_17d
    move-exception v10

    .line 594
    .local v10, e:Ljava/io/UnsupportedEncodingException;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    .line 595
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_15c

    .line 599
    .end local v10           #e:Ljava/io/UnsupportedEncodingException;
    :cond_187
    :try_start_187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->this$0:Lcom/samsung/dmp/layout/SAMIReader;

    #getter for: Lcom/samsung/dmp/layout/SAMIReader;->mIsJapanese:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/SAMIReader;->access$000(Lcom/samsung/dmp/layout/SAMIReader;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 600
    new-instance v17, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "UTF-8"

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v3, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v16           #subtString:Ljava/lang/String;
    .restart local v17       #subtString:Ljava/lang/String;
    move-object/from16 v16, v17

    .end local v17           #subtString:Ljava/lang/String;
    .restart local v16       #subtString:Ljava/lang/String;
    goto :goto_15c

    .line 602
    :cond_1a0
    new-instance v17, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "KSC5601"

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v3, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1ac
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_187 .. :try_end_1ac} :catch_1af

    .end local v16           #subtString:Ljava/lang/String;
    .restart local v17       #subtString:Ljava/lang/String;
    move-object/from16 v16, v17

    .end local v17           #subtString:Ljava/lang/String;
    .restart local v16       #subtString:Ljava/lang/String;
    goto :goto_15c

    .line 603
    :catch_1af
    move-exception v10

    .line 604
    .restart local v10       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_15c
.end method


# virtual methods
.method public getNextDataFromFile()Z
    .registers 7

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, result:Z
    const/4 v3, -0x1

    .line 278
    .local v3, syncTime:I
    const/4 v2, 0x0

    .line 279
    .local v2, subtText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 281
    .local v1, stop:Z
    :cond_4
    :goto_4
    if-nez v1, :cond_1c

    .line 282
    invoke-direct {p0}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->getSyncTime()I

    move-result v3

    .line 285
    iget v4, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    packed-switch v4, :pswitch_data_3c

    .line 302
    const/4 v1, 0x1

    .line 303
    goto :goto_4

    .line 289
    :pswitch_11
    if-ltz v3, :cond_4

    .line 290
    const/4 v1, 0x1

    goto :goto_4

    .line 296
    :pswitch_15
    invoke-direct {p0}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReadFromFile()I

    move-result v4

    iput v4, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    goto :goto_4

    .line 307
    :cond_1c
    const/4 v1, 0x0

    .line 308
    :goto_1d
    if-nez v1, :cond_31

    .line 309
    invoke-direct {p0}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->getSubtitleText()Ljava/lang/String;

    move-result-object v2

    .line 310
    iget v4, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    .line 311
    invoke-direct {p0}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReadFromFile()I

    move-result v4

    iput v4, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->mBytesRead:I

    goto :goto_1d

    .line 313
    :cond_2f
    const/4 v1, 0x1

    goto :goto_1d

    .line 317
    :cond_31
    new-instance v4, Lcom/samsung/dmp/layout/SAMIReader$LineData;

    iget-object v5, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->this$0:Lcom/samsung/dmp/layout/SAMIReader;

    invoke-direct {v4, v5, v3, v2}, Lcom/samsung/dmp/layout/SAMIReader$LineData;-><init>(Lcom/samsung/dmp/layout/SAMIReader;ILjava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->SubtitleData:Lcom/samsung/dmp/layout/SAMIReader$LineData;

    .line 319
    return v0

    .line 285
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method
