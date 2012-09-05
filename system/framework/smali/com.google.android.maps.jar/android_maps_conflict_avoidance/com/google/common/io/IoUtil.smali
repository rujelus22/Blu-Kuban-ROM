.class public Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static createDataInputFromBytes([B)Ljava/io/DataInput;
    .registers 2
    .parameter "bytes"

    .prologue
    .line 941
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;-><init>([B)V

    return-object v0
.end method

.method public static decodeUtf8([BIIZ)Ljava/lang/String;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    new-instance v7, Ljava/lang/StringBuffer;

    sub-int v0, p2, p1

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 548
    :goto_7
    if-ge p1, p2, :cond_bb

    .line 549
    add-int/lit8 v1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v8, v0, 0xff

    .line 550
    const/16 v0, 0x7f

    if-gt v8, v0, :cond_19

    .line 551
    int-to-char v0, v8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_17
    move p1, v1

    .line 598
    goto :goto_7

    .line 552
    :cond_19
    const/16 v0, 0xf5

    if-lt v8, v0, :cond_2c

    .line 553
    if-nez p3, :cond_27

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_27
    int-to-char v0, v8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_17

    .line 558
    :cond_2c
    const/16 v4, 0xe0

    .line 559
    const/4 v3, 0x1

    .line 560
    const/16 v2, 0x80

    .line 561
    const/16 v0, 0x1f

    move v5, v3

    move v9, v2

    move v2, v0

    move v0, v4

    move v4, v9

    .line 562
    :goto_38
    if-lt v8, v0, :cond_4f

    .line 563
    shr-int/lit8 v0, v0, 0x1

    or-int/lit16 v6, v0, 0x80

    .line 564
    const/4 v0, 0x1

    if-ne v5, v0, :cond_4d

    const/4 v0, 0x4

    :goto_42
    shl-int v3, v4, v0

    .line 565
    add-int/lit8 v4, v5, 0x1

    .line 566
    shr-int/lit8 v0, v2, 0x1

    move v2, v0

    move v5, v4

    move v4, v3

    move v0, v6

    goto :goto_38

    .line 564
    :cond_4d
    const/4 v0, 0x5

    goto :goto_42

    .line 568
    :cond_4f
    and-int/2addr v2, v8

    .line 570
    const/4 v0, 0x0

    move v3, v0

    move v0, v2

    :goto_53
    if-ge v3, v5, :cond_81

    .line 571
    shl-int/lit8 v0, v0, 0x6

    .line 572
    if-lt v1, p2, :cond_63

    .line 573
    if-nez p3, :cond_7d

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_63
    if-nez p3, :cond_75

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xc0

    const/16 v6, 0x80

    if-eq v2, v6, :cond_75

    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_75
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    move v1, v2

    .line 570
    :cond_7d
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_53

    .line 586
    :cond_81
    if-nez p3, :cond_85

    if-lt v0, v4, :cond_8f

    :cond_85
    const v2, 0xd800

    if-lt v0, v2, :cond_97

    const v2, 0xdfff

    if-gt v0, v2, :cond_97

    .line 587
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_97
    const v2, 0xffff

    if-gt v0, v2, :cond_a2

    .line 591
    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_17

    .line 593
    :cond_a2
    const/high16 v2, 0x1

    sub-int/2addr v0, v2

    .line 594
    const v2, 0xd800

    shr-int/lit8 v3, v0, 0xa

    or-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 595
    const v2, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v2

    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_17

    .line 599
    :cond_bb
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeUtf8(Ljava/lang/String;[BI)I
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0xd800

    const v6, 0xfc00

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 473
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_b7

    .line 474
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 477
    if-lt v1, v7, :cond_3b

    const v0, 0xdfff

    if-gt v1, v0, :cond_3b

    add-int/lit8 v0, v2, 0x1

    if-ge v0, v3, :cond_3b

    .line 478
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 483
    and-int v4, v0, v6

    and-int v5, v1, v6

    xor-int/2addr v4, v5

    const/16 v5, 0x400

    if-ne v4, v5, :cond_3b

    .line 485
    add-int/lit8 v2, v2, 0x1

    .line 488
    and-int v4, v0, v6

    if-ne v4, v7, :cond_4a

    .line 494
    :goto_31
    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    and-int/lit16 v1, v1, 0x3ff

    or-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v1, v0

    .line 497
    :cond_3b
    const/16 v0, 0x7f

    if-gt v1, v0, :cond_4e

    .line 498
    if-eqz p1, :cond_44

    .line 499
    int-to-byte v0, v1

    aput-byte v0, p1, p2

    .line 501
    :cond_44
    add-int/lit8 v0, p2, 0x1

    .line 473
    :goto_46
    add-int/lit8 v2, v2, 0x1

    move p2, v0

    goto :goto_b

    :cond_4a
    move v8, v1

    move v1, v0

    move v0, v8

    .line 492
    goto :goto_31

    .line 502
    :cond_4e
    const/16 v0, 0x7ff

    if-gt v1, v0, :cond_67

    .line 504
    if-eqz p1, :cond_64

    .line 505
    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 506
    add-int/lit8 v0, p2, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 508
    :cond_64
    add-int/lit8 v0, p2, 0x2

    goto :goto_46

    .line 509
    :cond_67
    const v0, 0xffff

    if-gt v1, v0, :cond_8c

    .line 511
    if-eqz p1, :cond_89

    .line 512
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 513
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 514
    add-int/lit8 v0, p2, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 516
    :cond_89
    add-int/lit8 v0, p2, 0x3

    goto :goto_46

    .line 518
    :cond_8c
    if-eqz p1, :cond_b4

    .line 519
    shr-int/lit8 v0, v1, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 520
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 521
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 522
    add-int/lit8 v0, p2, 0x3

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 524
    :cond_b4
    add-int/lit8 v0, p2, 0x4

    goto :goto_46

    .line 528
    :cond_b7
    return p2
.end method

.method public static encodeUtf8(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 456
    const/4 v2, 0x0

    invoke-static {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    .line 457
    .local v0, len:I
    new-array v1, v0, [B

    .line 458
    .local v1, result:[B
    invoke-static {p0, v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    .line 459
    return-object v1
.end method

.method public static inflate([BIII)[B
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 958
    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [B

    .line 959
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 960
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v4, p2, 0x1

    invoke-direct {v3, v1, v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 964
    new-array v3, p3, [B

    move v1, p3

    .line 971
    :goto_1a
    if-lez v1, :cond_26

    :try_start_1c
    invoke-virtual {v2, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    .line 972
    sub-int/2addr v1, v4

    .line 973
    add-int/2addr v0, v4

    goto :goto_1a

    .line 975
    :cond_26
    if-eqz v1, :cond_56

    .line 976
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] bytes, but only read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_51
    .catchall {:try_start_1c .. :try_end_51} :catchall_51

    .line 980
    :catchall_51
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_56
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 982
    return-object v3
.end method
