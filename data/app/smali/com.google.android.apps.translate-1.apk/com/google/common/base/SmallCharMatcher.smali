.class final Lcom/google/common/base/SmallCharMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "SmallCharMatcher.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field static final MAX_SIZE:I = 0x3f

.field static final MAX_TABLE_SIZE:I = 0x80


# instance fields
.field private final containsZero:Z

.field final filter:J

.field private final reprobe:Z

.field private final table:[C


# direct methods
.method private constructor <init>([CJZZLjava/lang/String;)V
    .registers 7
    .parameter "table"
    .parameter "filter"
    .parameter "containsZero"
    .parameter "reprobe"
    .parameter "description"

    .prologue
    .line 39
    invoke-direct {p0, p6}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    .line 41
    iput-wide p2, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    .line 42
    iput-boolean p4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    .line 43
    iput-boolean p5, p0, Lcom/google/common/base/SmallCharMatcher;->reprobe:Z

    .line 44
    return-void
.end method

.method static buildTable(I[CZ)[C
    .registers 8
    .parameter "modulus"
    .parameter "allChars"
    .parameter "reprobe"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 57
    new-array v3, p0, [C

    .line 58
    .local v3, table:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v4, p1

    if-ge v1, v4, :cond_14

    .line 59
    aget-char v0, p1, v1

    .line 60
    .local v0, c:C
    rem-int v2, v0, p0

    .line 61
    .local v2, index:I
    if-gez v2, :cond_d

    .line 62
    add-int/2addr v2, p0

    .line 64
    :cond_d
    aget-char v4, v3, v2

    if-eqz v4, :cond_15

    if-nez p2, :cond_15

    .line 65
    const/4 v3, 0x0

    .line 73
    .end local v0           #c:C
    .end local v2           #index:I
    .end local v3           #table:[C
    :cond_14
    return-object v3

    .line 66
    .restart local v0       #c:C
    .restart local v2       #index:I
    .restart local v3       #table:[C
    :cond_15
    if-eqz p2, :cond_20

    .line 67
    :goto_17
    aget-char v4, v3, v2

    if-eqz v4, :cond_20

    .line 68
    add-int/lit8 v4, v2, 0x1

    rem-int v2, v4, p0

    goto :goto_17

    .line 71
    :cond_20
    aput-char v0, v3, v2

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private checkFilter(I)Z
    .registers 6
    .parameter "c"

    .prologue
    const-wide/16 v2, 0x1

    .line 47
    iget-wide v0, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

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

.method static from([CLjava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 17
    .parameter "chars"
    .parameter "description"

    .prologue
    .line 77
    const-wide/16 v2, 0x0

    .line 78
    .local v2, filter:J
    array-length v12, p0

    .line 79
    .local v12, size:I
    const/4 v4, 0x0

    .line 80
    .local v4, containsZero:Z
    const/4 v5, 0x0

    .line 81
    .local v5, reprobe:Z
    const/4 v0, 0x0

    aget-char v0, p0, v0

    if-nez v0, :cond_19

    const/4 v4, 0x1

    .line 84
    :goto_b
    move-object v7, p0

    .local v7, arr$:[C
    array-length v11, v7

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_e
    if-ge v10, v11, :cond_1b

    aget-char v8, v7, v10

    .line 85
    .local v8, c:C
    const-wide/16 v13, 0x1

    shl-long/2addr v13, v8

    or-long/2addr v2, v13

    .line 84
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 81
    .end local v7           #arr$:[C
    .end local v8           #c:C
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_19
    const/4 v4, 0x0

    goto :goto_b

    .line 87
    .restart local v7       #arr$:[C
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    :cond_1b
    const/4 v1, 0x0

    .line 88
    .local v1, table:[C
    move v9, v12

    .local v9, i:I
    :goto_1d
    const/16 v0, 0x80

    if-ge v9, v0, :cond_28

    .line 89
    const/4 v0, 0x0

    invoke-static {v9, p0, v0}, Lcom/google/common/base/SmallCharMatcher;->buildTable(I[CZ)[C

    move-result-object v1

    .line 90
    if-eqz v1, :cond_3a

    .line 95
    :cond_28
    if-nez v1, :cond_32

    .line 96
    const/16 v0, 0x80

    const/4 v6, 0x1

    invoke-static {v0, p0, v6}, Lcom/google/common/base/SmallCharMatcher;->buildTable(I[CZ)[C

    move-result-object v1

    .line 97
    const/4 v5, 0x1

    .line 99
    :cond_32
    new-instance v0, Lcom/google/common/base/SmallCharMatcher;

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/common/base/SmallCharMatcher;-><init>([CJZZLjava/lang/String;)V

    return-object v0

    .line 88
    :cond_3a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public matches(C)Z
    .registers 6
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p1, :cond_6

    .line 105
    iget-boolean v1, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    .line 124
    :cond_5
    :goto_5
    return v1

    .line 107
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/common/base/SmallCharMatcher;->checkFilter(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    iget-object v2, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v2, v2

    rem-int v0, p1, v2

    .line 111
    .local v0, index:I
    if-gez v0, :cond_17

    .line 112
    iget-object v2, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v2, v2

    add-int/2addr v0, v2

    .line 116
    :cond_17
    :goto_17
    iget-object v2, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v2, v2, v0

    if-eqz v2, :cond_5

    .line 118
    iget-object v2, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v2, v2, v0

    if-ne v2, p1, :cond_25

    .line 119
    const/4 v1, 0x1

    goto :goto_5

    .line 120
    :cond_25
    iget-boolean v2, p0, Lcom/google/common/base/SmallCharMatcher;->reprobe:Z

    if-eqz v2, :cond_5

    .line 122
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v3, v3

    rem-int v0, v2, v3

    goto :goto_17
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 52
    return-object p0
.end method
