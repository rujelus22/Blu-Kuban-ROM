.class public Lorg/columba/ristretto/parser/CharSequenceSearcher;
.super Ljava/lang/Object;
.source "CharSequenceSearcher.java"


# instance fields
.field private badCharacterSkip:[I

.field private goodSuffixSkip:[I

.field private pattern:[C

.field private patternLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/columba/ristretto/parser/CharSequenceSearcher;-><init>([C)V

    .line 64
    return-void
.end method

.method public constructor <init>([C)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->badCharacterSkip:[I

    .line 74
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/parser/CharSequenceSearcher;->setPattern([C)V

    .line 75
    return-void
.end method

.method private initBadCharSkipArray()V
    .registers 5

    .prologue
    .line 122
    iget-object v1, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->badCharacterSkip:[I

    iget v2, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 124
    const/4 v0, 0x0

    .local v0, j:I
    :goto_8
    iget v1, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1e

    .line 125
    iget-object v1, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->badCharacterSkip:[I

    iget-object v2, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->pattern:[C

    aget-char v2, v2, v0

    iget v3, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 127
    :cond_1e
    return-void
.end method

.method private initGoodSuffixSkipArray()V
    .registers 8

    .prologue
    .line 95
    iget v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [I

    .line 97
    .local v0, f:[I
    iget v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    add-int/lit8 v2, v4, 0x1

    .line 98
    .local v2, j:I
    iget v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    aput v2, v0, v4

    .line 100
    iget v1, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    .local v1, i:I
    :goto_10
    if-lez v1, :cond_3c

    .line 101
    :goto_12
    iget v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    if-gt v2, v4, :cond_33

    iget-object v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->pattern:[C

    add-int/lit8 v5, v1, -0x1

    aget-char v4, v4, v5

    iget-object v5, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->pattern:[C

    add-int/lit8 v6, v2, -0x1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_33

    .line 102
    iget-object v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->goodSuffixSkip:[I

    aget v4, v4, v2

    if-nez v4, :cond_30

    .line 103
    iget-object v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->goodSuffixSkip:[I

    sub-int v5, v2, v1

    aput v5, v4, v2

    .line 105
    :cond_30
    aget v2, v0, v2

    goto :goto_12

    .line 107
    :cond_33
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v4

    .line 100
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 110
    :cond_3c
    const/4 v4, 0x0

    aget v3, v0, v4

    .line 111
    .local v3, p:I
    const/4 v2, 0x0

    :goto_40
    iget v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    if-gt v2, v4, :cond_55

    .line 112
    iget-object v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->goodSuffixSkip:[I

    aget v4, v4, v2

    if-nez v4, :cond_4e

    .line 113
    iget-object v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->goodSuffixSkip:[I

    aput v3, v4, v2

    .line 115
    :cond_4e
    if-ne v2, v3, :cond_52

    .line 116
    aget v3, v0, v3

    .line 111
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 119
    :cond_55
    return-void
.end method


# virtual methods
.method public match(Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 9
    .parameter "text"

    .prologue
    .line 139
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 140
    .local v3, textLength:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, result:Ljava/util/List;
    const/4 v0, 0x0

    .line 143
    .local v0, i:I
    :goto_a
    iget v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    sub-int v4, v3, v4

    if-gt v0, v4, :cond_52

    .line 144
    iget v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    add-int/lit8 v1, v4, -0x1

    .line 145
    .local v1, j:I
    :goto_14
    if-ltz v1, :cond_25

    iget-object v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->pattern:[C

    aget-char v4, v4, v1

    add-int v5, v0, v1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_25

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 148
    :cond_25
    if-gez v1, :cond_36

    .line 149
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->goodSuffixSkip:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    goto :goto_a

    .line 153
    :cond_36
    iget-object v4, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->goodSuffixSkip:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->badCharacterSkip:[I

    add-int v6, v0, v1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    iget v6, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_a

    .line 159
    .end local v1           #j:I
    :cond_52
    return-object v2
.end method

.method public setPattern([C)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 84
    iput-object p1, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->pattern:[C

    .line 85
    array-length v0, p1

    iput v0, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    .line 86
    iget v0, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->patternLength:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/columba/ristretto/parser/CharSequenceSearcher;->goodSuffixSkip:[I

    .line 89
    invoke-direct {p0}, Lorg/columba/ristretto/parser/CharSequenceSearcher;->initGoodSuffixSkipArray()V

    .line 90
    invoke-direct {p0}, Lorg/columba/ristretto/parser/CharSequenceSearcher;->initBadCharSkipArray()V

    .line 91
    return-void
.end method
