.class abstract Lcom/google/common/base/StringUtil$CharEscaper;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/StringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CharEscaper"
.end annotation


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/StringUtil$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2508
    invoke-direct {p0}, Lcom/google/common/base/StringUtil$CharEscaper;-><init>()V

    return-void
.end method

.method private static growBuffer([CII)[C
    .registers 5
    .parameter "dest"
    .parameter "index"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 2623
    new-array v0, p2, [C

    .line 2624
    .local v0, copy:[C
    if-lez p1, :cond_8

    .line 2625
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2627
    :cond_8
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "string"

    .prologue
    .line 2517
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2520
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_8
    if-ge v0, v1, :cond_18

    .line 2521
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/StringUtil$CharEscaper;->escape(C)[C

    move-result-object v2

    if-eqz v2, :cond_19

    .line 2522
    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/StringUtil$CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2525
    .end local p1
    :cond_18
    return-object p1

    .line 2520
    .restart local p1
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method protected abstract escape(C)[C
.end method

.method protected escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .parameter "s"
    .parameter "index"

    .prologue
    const/4 v11, 0x0

    .line 2541
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 2544
    .local v9, slen:I
    invoke-static {}, Lcom/google/common/base/Platform;->charBufferFromThreadLocal()[C

    move-result-object v2

    .line 2545
    .local v2, dest:[C
    array-length v4, v2

    .line 2546
    .local v4, destSize:I
    const/4 v3, 0x0

    .line 2547
    .local v3, destIndex:I
    const/4 v5, 0x0

    .line 2551
    .local v5, lastEscape:I
    :goto_c
    if-ge p2, v9, :cond_3c

    .line 2554
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/common/base/StringUtil$CharEscaper;->escape(C)[C

    move-result-object v6

    .line 2557
    .local v6, r:[C
    if-nez v6, :cond_1b

    .line 2551
    :goto_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 2559
    :cond_1b
    array-length v7, v6

    .line 2560
    .local v7, rlen:I
    sub-int v1, p2, v5

    .line 2564
    .local v1, charsSkipped:I
    add-int v10, v3, v1

    add-int v8, v10, v7

    .line 2565
    .local v8, sizeNeeded:I
    if-ge v4, v8, :cond_2d

    .line 2566
    sub-int v10, v9, p2

    add-int/2addr v10, v8

    add-int/lit8 v4, v10, 0x20

    .line 2567
    invoke-static {v2, v3, v4}, Lcom/google/common/base/StringUtil$CharEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 2571
    :cond_2d
    if-lez v1, :cond_33

    .line 2572
    invoke-virtual {p1, v5, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2573
    add-int/2addr v3, v1

    .line 2577
    :cond_33
    if-lez v7, :cond_39

    .line 2578
    invoke-static {v6, v11, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2579
    add-int/2addr v3, v7

    .line 2581
    :cond_39
    add-int/lit8 v5, p2, 0x1

    goto :goto_18

    .line 2585
    .end local v1           #charsSkipped:I
    .end local v6           #r:[C
    .end local v7           #rlen:I
    .end local v8           #sizeNeeded:I
    :cond_3c
    sub-int v0, v9, v5

    .line 2586
    .local v0, charsLeft:I
    if-lez v0, :cond_4c

    .line 2587
    add-int v8, v3, v0

    .line 2588
    .restart local v8       #sizeNeeded:I
    if-ge v4, v8, :cond_48

    .line 2591
    invoke-static {v2, v3, v8}, Lcom/google/common/base/StringUtil$CharEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 2593
    :cond_48
    invoke-virtual {p1, v5, v9, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2594
    move v3, v8

    .line 2596
    .end local v8           #sizeNeeded:I
    :cond_4c
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v11, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v10
.end method
