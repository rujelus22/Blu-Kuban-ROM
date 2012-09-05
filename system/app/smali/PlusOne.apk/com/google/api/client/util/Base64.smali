.class public Lcom/google/api/client/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ALPHABET:[B

.field private static final DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 155
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    .line 225
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Lcom/google/api/client/util/Base64;->DECODABET:[B

    return-void

    .line 155
    nop

    :array_14
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 225
    :array_38
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    return-void
.end method

.method public static encode([B)[B
    .registers 3
    .parameter "source"

    .prologue
    .line 565
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/api/client/util/Base64;->encode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[B
    .registers 15
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 585
    if-nez p0, :cond_c

    .line 586
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Cannot serialize a null array."

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 589
    :cond_c
    if-gez p1, :cond_27

    .line 590
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot have negative offset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 593
    :cond_27
    if-gez p2, :cond_42

    .line 594
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot have length offset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 597
    :cond_42
    add-int v7, p1, p2

    array-length v9, p0

    if-le v7, v9, :cond_6a

    .line 598
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Cannot have offset of %d and length of %d with array of length %d"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v8, 0x2

    array-length v11, p0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 612
    :cond_6a
    div-int/lit8 v7, p2, 0x3

    mul-int/lit8 v9, v7, 0x4

    rem-int/lit8 v7, p2, 0x3

    if-lez v7, :cond_8a

    const/4 v7, 0x4

    :goto_73
    add-int v2, v9, v7

    .line 613
    .local v2, encLen:I
    new-array v6, v2, [B

    .line 616
    .local v6, outBuff:[B
    const/4 v0, 0x0

    .line 617
    .local v0, d:I
    const/4 v1, 0x0

    .line 618
    .local v1, e:I
    add-int/lit8 v4, p2, -0x2

    .line 619
    .local v4, len2:I
    const/4 v5, 0x0

    .line 620
    .local v5, lineLength:I
    :goto_7c
    if-ge v0, v4, :cond_8c

    .line 621
    add-int v7, v0, p1

    invoke-static {p0, v7, v10, v6, v1}, Lcom/google/api/client/util/Base64;->encode3to4([BII[BI)[B

    .line 623
    add-int/lit8 v5, v5, 0x4

    .line 620
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_7c

    .end local v0           #d:I
    .end local v1           #e:I
    .end local v2           #encLen:I
    .end local v4           #len2:I
    .end local v5           #lineLength:I
    .end local v6           #outBuff:[B
    :cond_8a
    move v7, v8

    .line 612
    goto :goto_73

    .line 626
    .restart local v0       #d:I
    .restart local v1       #e:I
    .restart local v2       #encLen:I
    .restart local v4       #len2:I
    .restart local v5       #lineLength:I
    .restart local v6       #outBuff:[B
    :cond_8c
    if-ge v0, p2, :cond_97

    .line 627
    add-int v7, v0, p1

    sub-int v9, p2, v0

    invoke-static {p0, v7, v9, v6, v1}, Lcom/google/api/client/util/Base64;->encode3to4([BII[BI)[B

    .line 628
    add-int/lit8 v1, v1, 0x4

    .line 633
    :cond_97
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-gt v1, v7, :cond_a2

    .line 638
    new-array v3, v1, [B

    .line 639
    .local v3, finalOut:[B
    invoke-static {v6, v8, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    .end local v3           #finalOut:[B
    :goto_a1
    return-object v3

    :cond_a2
    move-object v3, v6

    goto :goto_a1
.end method

.method private static encode3to4([BII[BI)[B
    .registers 10
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"

    .prologue
    const/16 v4, 0x3d

    const/4 v1, 0x0

    .line 520
    if-lez p2, :cond_29

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    move v3, v2

    :goto_c
    const/4 v2, 0x1

    if-le p2, v2, :cond_2b

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    :goto_17
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_23

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_23
    or-int v0, v2, v1

    .line 525
    .local v0, inBuff:I
    packed-switch p2, :pswitch_data_9a

    .line 548
    :goto_28
    return-object p3

    .end local v0           #inBuff:I
    :cond_29
    move v3, v1

    .line 520
    goto :goto_c

    :cond_2b
    move v2, v1

    goto :goto_17

    .line 527
    .restart local v0       #inBuff:I
    :pswitch_2d
    sget-object v1, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 528
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 529
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 530
    add-int/lit8 v1, p4, 0x3

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    and-int/lit8 v3, v0, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    goto :goto_28

    .line 534
    :pswitch_58
    sget-object v1, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 535
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 536
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 537
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_28

    .line 541
    :pswitch_7d
    sget-object v1, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 542
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 543
    add-int/lit8 v1, p4, 0x2

    aput-byte v4, p3, v1

    .line 544
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_28

    .line 525
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_58
        :pswitch_2d
    .end packed-switch
.end method
