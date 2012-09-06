.class final Lcom/google/common/base/MediumCharMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "MediumCharMatcher.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final DESIRED_LOAD_FACTOR:D = 0.5

.field static final MAX_SIZE:I = 0x3ff


# instance fields
.field private final containsZero:Z

.field private final filter:J

.field private final table:[C


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .registers 6
    .parameter "table"
    .parameter "filter"
    .parameter "containsZero"
    .parameter "description"

    .prologue
    .line 37
    invoke-direct {p0, p5}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/google/common/base/MediumCharMatcher;->table:[C

    .line 39
    iput-wide p2, p0, Lcom/google/common/base/MediumCharMatcher;->filter:J

    .line 40
    iput-boolean p4, p0, Lcom/google/common/base/MediumCharMatcher;->containsZero:Z

    .line 41
    return-void
.end method

.method private checkFilter(I)Z
    .registers 6
    .parameter "c"

    .prologue
    const-wide/16 v2, 0x1

    .line 44
    iget-wide v0, p0, Lcom/google/common/base/MediumCharMatcher;->filter:J

    shr-long/2addr v0, p1

    and-long/2addr v0, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static chooseTableSize(I)I
    .registers 6
    .parameter "setSize"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 60
    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    .line 61
    const/4 v0, 0x2

    .line 69
    :cond_4
    return v0

    .line 65
    :cond_5
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 66
    .local v0, tableSize:I
    :goto_d
    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    .line 67
    shl-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method static from([CLjava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 17
    .parameter "chars"
    .parameter "description"

    .prologue
    .line 82
    const-wide/16 v2, 0x0

    .line 83
    .local v2, filter:J
    array-length v12, p0

    .line 84
    .local v12, size:I
    const/4 v0, 0x0

    aget-char v0, p0, v0

    if-nez v0, :cond_17

    const/4 v4, 0x1

    .line 86
    .local v4, containsZero:Z
    :goto_9
    move-object v6, p0

    .local v6, arr$:[C
    array-length v10, v6

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_c
    if-ge v8, v10, :cond_19

    aget-char v7, v6, v8

    .line 87
    .local v7, c:C
    const-wide/16 v13, 0x1

    shl-long/2addr v13, v7

    or-long/2addr v2, v13

    .line 86
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 84
    .end local v4           #containsZero:Z
    .end local v6           #arr$:[C
    .end local v7           #c:C
    .end local v8           #i$:I
    .end local v10           #len$:I
    :cond_17
    const/4 v4, 0x0

    goto :goto_9

    .line 90
    .restart local v4       #containsZero:Z
    .restart local v6       #arr$:[C
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    :cond_19
    invoke-static {v12}, Lcom/google/common/base/MediumCharMatcher;->chooseTableSize(I)I

    move-result v0

    new-array v1, v0, [C

    .line 91
    .local v1, table:[C
    array-length v0, v1

    add-int/lit8 v11, v0, -0x1

    .line 92
    .local v11, mask:I
    move-object v6, p0

    array-length v10, v6

    const/4 v8, 0x0

    :goto_25
    if-ge v8, v10, :cond_39

    aget-char v7, v6, v8

    .line 93
    .restart local v7       #c:C
    and-int v9, v7, v11

    .line 96
    .local v9, index:I
    :goto_2b
    aget-char v0, v1, v9

    if-nez v0, :cond_34

    .line 97
    aput-char v7, v1, v9

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 101
    :cond_34
    add-int/lit8 v0, v9, 0x1

    and-int v9, v0, v11

    goto :goto_2b

    .line 104
    .end local v7           #c:C
    .end local v9           #index:I
    :cond_39
    new-instance v0, Lcom/google/common/base/MediumCharMatcher;

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/common/base/MediumCharMatcher;-><init>([CJZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public matches(C)Z
    .registers 7
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 109
    if-nez p1, :cond_6

    .line 110
    iget-boolean v3, p0, Lcom/google/common/base/MediumCharMatcher;->containsZero:Z

    .line 131
    :cond_5
    :goto_5
    return v3

    .line 112
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/common/base/MediumCharMatcher;->checkFilter(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    iget-object v4, p0, Lcom/google/common/base/MediumCharMatcher;->table:[C

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 116
    .local v1, mask:I
    and-int v2, p1, v1

    .line 117
    .local v2, startingIndex:I
    move v0, v2

    .line 120
    .local v0, index:I
    :cond_14
    iget-object v4, p0, Lcom/google/common/base/MediumCharMatcher;->table:[C

    aget-char v4, v4, v0

    if-eqz v4, :cond_5

    .line 123
    iget-object v4, p0, Lcom/google/common/base/MediumCharMatcher;->table:[C

    aget-char v4, v4, v0

    if-ne v4, p1, :cond_22

    .line 124
    const/4 v3, 0x1

    goto :goto_5

    .line 127
    :cond_22
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    .line 130
    if-ne v0, v2, :cond_14

    goto :goto_5
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 77
    return-object p0
.end method
