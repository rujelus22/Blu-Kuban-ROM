.class public final Lorg/codehaus/jackson/io/NumberOutput;
.super Ljava/lang/Object;
.source "NumberOutput.java"


# static fields
.field private static BILLION:I

.field static final FULL_TRIPLETS:[C

.field static final LEADING_TRIPLETS:[C

.field private static MAX_INT_AS_LONG:J

.field private static MILLION:I

.field private static MIN_INT_AS_LONG:J

.field static final SMALLEST_LONG:Ljava/lang/String;

.field private static TEN_BILLION_L:J

.field private static THOUSAND_L:J

.field static final sSmallIntStrs:[Ljava/lang/String;

.field static final sSmallIntStrs2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    .line 7
    const v9, 0xf4240

    sput v9, Lorg/codehaus/jackson/io/NumberOutput;->MILLION:I

    .line 8
    const v9, 0x3b9aca00

    sput v9, Lorg/codehaus/jackson/io/NumberOutput;->BILLION:I

    .line 9
    const-wide v9, 0x2540be400L

    sput-wide v9, Lorg/codehaus/jackson/io/NumberOutput;->TEN_BILLION_L:J

    .line 10
    const-wide/16 v9, 0x3e8

    sput-wide v9, Lorg/codehaus/jackson/io/NumberOutput;->THOUSAND_L:J

    .line 12
    const-wide/32 v9, -0x80000000

    sput-wide v9, Lorg/codehaus/jackson/io/NumberOutput;->MIN_INT_AS_LONG:J

    .line 13
    const-wide/32 v9, 0x7fffffff

    sput-wide v9, Lorg/codehaus/jackson/io/NumberOutput;->MAX_INT_AS_LONG:J

    .line 15
    const-wide/high16 v9, -0x8000

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lorg/codehaus/jackson/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    .line 17
    const/16 v9, 0xfa0

    new-array v9, v9, [C

    sput-object v9, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C

    .line 18
    const/16 v9, 0xfa0

    new-array v9, v9, [C

    sput-object v9, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C

    .line 23
    const/4 v6, 0x0

    .line 24
    .local v6, ix:I
    const/4 v3, 0x0

    .local v3, i1:I
    :goto_35
    const/16 v9, 0xa

    if-ge v3, v9, :cond_83

    .line 25
    add-int/lit8 v9, v3, 0x30

    int-to-char v0, v9

    .line 26
    .local v0, f1:C
    if-nez v3, :cond_79

    const/4 v7, 0x0

    .line 27
    .local v7, l1:C
    :goto_3f
    const/4 v4, 0x0

    .local v4, i2:I
    :goto_40
    const/16 v9, 0xa

    if-ge v4, v9, :cond_80

    .line 28
    add-int/lit8 v9, v4, 0x30

    int-to-char v1, v9

    .line 29
    .local v1, f2:C
    if-nez v3, :cond_7b

    if-nez v4, :cond_7b

    const/4 v8, 0x0

    .line 30
    .local v8, l2:C
    :goto_4c
    const/4 v5, 0x0

    .local v5, i3:I
    :goto_4d
    const/16 v9, 0xa

    if-ge v5, v9, :cond_7d

    .line 32
    add-int/lit8 v9, v5, 0x30

    int-to-char v2, v9

    .line 33
    .local v2, f3:C
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C

    aput-char v7, v9, v6

    .line 34
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C

    add-int/lit8 v10, v6, 0x1

    aput-char v8, v9, v10

    .line 35
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C

    add-int/lit8 v10, v6, 0x2

    aput-char v2, v9, v10

    .line 36
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C

    aput-char v0, v9, v6

    .line 37
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C

    add-int/lit8 v10, v6, 0x1

    aput-char v1, v9, v10

    .line 38
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C

    add-int/lit8 v10, v6, 0x2

    aput-char v2, v9, v10

    .line 39
    add-int/lit8 v6, v6, 0x4

    .line 30
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .end local v1           #f2:C
    .end local v2           #f3:C
    .end local v4           #i2:I
    .end local v5           #i3:I
    .end local v7           #l1:C
    .end local v8           #l2:C
    :cond_79
    move v7, v0

    .line 26
    goto :goto_3f

    .restart local v1       #f2:C
    .restart local v4       #i2:I
    .restart local v7       #l1:C
    :cond_7b
    move v8, v1

    .line 29
    goto :goto_4c

    .line 27
    .restart local v5       #i3:I
    .restart local v8       #l2:C
    :cond_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 24
    .end local v1           #f2:C
    .end local v5           #i3:I
    .end local v8           #l2:C
    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 45
    .end local v0           #f1:C
    .end local v4           #i2:I
    .end local v7           #l1:C
    :cond_83
    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "0"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "1"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "2"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "3"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "4"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "5"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "6"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "7"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "8"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "9"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "10"

    aput-object v11, v9, v10

    sput-object v9, Lorg/codehaus/jackson/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    .line 48
    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "-1"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "-2"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "-3"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "-4"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "-5"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "-6"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "-7"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "-8"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "-9"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "-10"

    aput-object v11, v9, v10

    sput-object v9, Lorg/codehaus/jackson/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcLongStrLength(J)I
    .registers 9
    .parameter "posValue"

    .prologue
    .line 256
    const/16 v2, 0xa

    .line 257
    .local v2, len:I
    sget-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->TEN_BILLION_L:J

    .line 260
    .local v0, comp:J
    :goto_4
    cmp-long v3, p0, v0

    if-ltz v3, :cond_c

    .line 261
    const/16 v3, 0x13

    if-ne v2, v3, :cond_d

    .line 267
    :cond_c
    return v2

    .line 264
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 265
    const/4 v3, 0x3

    shl-long v3, v0, v3

    const/4 v5, 0x1

    shl-long v5, v0, v5

    add-long v0, v3, v5

    goto :goto_4
.end method

.method private static outputFullTriplet(I[CI)I
    .registers 7
    .parameter "triplet"
    .parameter "buffer"
    .parameter "offset"

    .prologue
    .line 242
    shl-int/lit8 v0, p0, 0x2

    .line 243
    .local v0, digitOffset:I
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, offset:I
    sget-object v3, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #digitOffset:I
    .local v1, digitOffset:I
    aget-char v3, v3, v0

    aput-char v3, p1, p2

    .line 244
    add-int/lit8 p2, v2, 0x1

    .end local v2           #offset:I
    .restart local p2
    sget-object v3, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitOffset:I
    .restart local v0       #digitOffset:I
    aget-char v3, v3, v1

    aput-char v3, p1, v2

    .line 245
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #offset:I
    sget-object v3, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C

    aget-char v3, v3, v0

    aput-char v3, p1, p2

    .line 246
    return v2
.end method

.method public static outputInt(I[CI)I
    .registers 10
    .parameter "value"
    .parameter "buffer"
    .parameter "offset"

    .prologue
    .line 63
    if-gez p0, :cond_14

    .line 64
    const/high16 v5, -0x8000

    if-ne p0, v5, :cond_c

    .line 68
    int-to-long v5, p0

    invoke-static {v5, v6, p1, p2}, Lorg/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result v5

    .line 119
    :goto_b
    return v5

    .line 70
    :cond_c
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, offset:I
    const/16 v5, 0x2d

    aput-char v5, p1, p2

    .line 71
    neg-int p0, p0

    move p2, v2

    .line 74
    .end local v2           #offset:I
    .restart local p2
    :cond_14
    sget v5, Lorg/codehaus/jackson/io/NumberOutput;->MILLION:I

    if-ge p0, v5, :cond_3d

    .line 75
    const/16 v5, 0x3e8

    if-ge p0, v5, :cond_2f

    .line 76
    const/16 v5, 0xa

    if-ge p0, v5, :cond_2a

    .line 77
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #offset:I
    add-int/lit8 v5, p0, 0x30

    int-to-char v5, v5

    aput-char v5, p1, p2

    move p2, v2

    .end local v2           #offset:I
    .restart local p2
    :goto_28
    move v5, p2

    .line 87
    goto :goto_b

    .line 79
    :cond_2a
    invoke-static {p0, p1, p2}, Lorg/codehaus/jackson/io/NumberOutput;->outputLeadingTriplet(I[CI)I

    move-result p2

    goto :goto_28

    .line 82
    :cond_2f
    div-int/lit16 v4, p0, 0x3e8

    .line 83
    .local v4, thousands:I
    mul-int/lit16 v5, v4, 0x3e8

    sub-int/2addr p0, v5

    .line 84
    invoke-static {v4, p1, p2}, Lorg/codehaus/jackson/io/NumberOutput;->outputLeadingTriplet(I[CI)I

    move-result p2

    .line 85
    invoke-static {p0, p1, p2}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I

    move-result p2

    goto :goto_28

    .line 95
    .end local v4           #thousands:I
    :cond_3d
    sget v5, Lorg/codehaus/jackson/io/NumberOutput;->BILLION:I

    if-lt p0, v5, :cond_72

    const/4 v0, 0x1

    .line 96
    .local v0, hasBillions:Z
    :goto_42
    if-eqz v0, :cond_55

    .line 97
    sget v5, Lorg/codehaus/jackson/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v5

    .line 98
    sget v5, Lorg/codehaus/jackson/io/NumberOutput;->BILLION:I

    if-lt p0, v5, :cond_74

    .line 99
    sget v5, Lorg/codehaus/jackson/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v5

    .line 100
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #offset:I
    const/16 v5, 0x32

    aput-char v5, p1, p2

    move p2, v2

    .line 105
    .end local v2           #offset:I
    .restart local p2
    :cond_55
    :goto_55
    div-int/lit16 v1, p0, 0x3e8

    .line 106
    .local v1, newValue:I
    mul-int/lit16 v5, v1, 0x3e8

    sub-int v3, p0, v5

    .line 107
    .local v3, ones:I
    move p0, v1

    .line 108
    div-int/lit16 v1, v1, 0x3e8

    .line 109
    mul-int/lit16 v5, v1, 0x3e8

    sub-int v4, p0, v5

    .line 112
    .restart local v4       #thousands:I
    if-eqz v0, :cond_7c

    .line 113
    invoke-static {v1, p1, p2}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I

    move-result p2

    .line 117
    :goto_68
    invoke-static {v4, p1, p2}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I

    move-result p2

    .line 118
    invoke-static {v3, p1, p2}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I

    move-result p2

    move v5, p2

    .line 119
    goto :goto_b

    .line 95
    .end local v0           #hasBillions:Z
    .end local v1           #newValue:I
    .end local v3           #ones:I
    .end local v4           #thousands:I
    :cond_72
    const/4 v0, 0x0

    goto :goto_42

    .line 102
    .restart local v0       #hasBillions:Z
    :cond_74
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #offset:I
    const/16 v5, 0x31

    aput-char v5, p1, p2

    move p2, v2

    .end local v2           #offset:I
    .restart local p2
    goto :goto_55

    .line 115
    .restart local v1       #newValue:I
    .restart local v3       #ones:I
    .restart local v4       #thousands:I
    :cond_7c
    invoke-static {v1, p1, p2}, Lorg/codehaus/jackson/io/NumberOutput;->outputLeadingTriplet(I[CI)I

    move-result p2

    goto :goto_68
.end method

.method private static outputLeadingTriplet(I[CI)I
    .registers 8
    .parameter "triplet"
    .parameter "buffer"
    .parameter "offset"

    .prologue
    .line 226
    shl-int/lit8 v1, p0, 0x2

    .line 227
    .local v1, digitOffset:I
    sget-object v4, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1           #digitOffset:I
    .local v2, digitOffset:I
    aget-char v0, v4, v1

    .line 228
    .local v0, c:C
    if-eqz v0, :cond_f

    .line 229
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, offset:I
    aput-char v0, p1, p2

    move p2, v3

    .line 231
    .end local v3           #offset:I
    .restart local p2
    :cond_f
    sget-object v4, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #digitOffset:I
    .restart local v1       #digitOffset:I
    aget-char v0, v4, v2

    .line 232
    if-eqz v0, :cond_1c

    .line 233
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #offset:I
    aput-char v0, p1, p2

    move p2, v3

    .line 236
    .end local v3           #offset:I
    .restart local p2
    :cond_1c
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #offset:I
    sget-object v4, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C

    aget-char v4, v4, v1

    aput-char v4, p1, p2

    .line 237
    return v3
.end method

.method public static outputLong(J[CI)I
    .registers 14
    .parameter "value"
    .parameter "buffer"
    .parameter "offset"

    .prologue
    .line 128
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-gez v8, :cond_4d

    .line 132
    sget-wide v8, Lorg/codehaus/jackson/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v8, p0, v8

    if-lez v8, :cond_12

    .line 133
    long-to-int v8, p0

    invoke-static {v8, p2, p3}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v8

    .line 176
    :goto_11
    return v8

    .line 135
    :cond_12
    const-wide/high16 v8, -0x8000

    cmp-long v8, p0, v8

    if-nez v8, :cond_27

    .line 137
    sget-object v8, Lorg/codehaus/jackson/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    .line 138
    .local v1, len:I
    sget-object v8, Lorg/codehaus/jackson/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 139
    add-int v8, p3, v1

    goto :goto_11

    .line 141
    .end local v1           #len:I
    :cond_27
    add-int/lit8 v4, p3, 0x1

    .end local p3
    .local v4, offset:I
    const/16 v8, 0x2d

    aput-char v8, p2, p3

    .line 142
    neg-long p0, p0

    move p3, v4

    .line 152
    .end local v4           #offset:I
    .restart local p3
    :cond_2f
    move v5, p3

    .line 153
    .local v5, origOffset:I
    invoke-static {p0, p1}, Lorg/codehaus/jackson/io/NumberOutput;->calcLongStrLength(J)I

    move-result v8

    add-int/2addr p3, v8

    .line 154
    move v6, p3

    .line 157
    .local v6, ptr:I
    :goto_36
    sget-wide v8, Lorg/codehaus/jackson/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v8, p0, v8

    if-lez v8, :cond_59

    .line 158
    add-int/lit8 v6, v6, -0x3

    .line 159
    sget-wide v8, Lorg/codehaus/jackson/io/NumberOutput;->THOUSAND_L:J

    div-long v2, p0, v8

    .line 160
    .local v2, newValue:J
    sget-wide v8, Lorg/codehaus/jackson/io/NumberOutput;->THOUSAND_L:J

    mul-long/2addr v8, v2

    sub-long v8, p0, v8

    long-to-int v7, v8

    .line 161
    .local v7, triplet:I
    invoke-static {v7, p2, v6}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I

    .line 162
    move-wide p0, v2

    .line 163
    goto :goto_36

    .line 144
    .end local v2           #newValue:J
    .end local v5           #origOffset:I
    .end local v6           #ptr:I
    .end local v7           #triplet:I
    :cond_4d
    sget-wide v8, Lorg/codehaus/jackson/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v8, p0, v8

    if-gtz v8, :cond_2f

    .line 145
    long-to-int v8, p0

    invoke-static {v8, p2, p3}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v8

    goto :goto_11

    .line 165
    .restart local v5       #origOffset:I
    .restart local v6       #ptr:I
    :cond_59
    long-to-int v0, p0

    .line 166
    .local v0, ivalue:I
    :goto_5a
    const/16 v8, 0x3e8

    if-lt v0, v8, :cond_6b

    .line 167
    add-int/lit8 v6, v6, -0x3

    .line 168
    div-int/lit16 v2, v0, 0x3e8

    .line 169
    .local v2, newValue:I
    mul-int/lit16 v8, v2, 0x3e8

    sub-int v7, v0, v8

    .line 170
    .restart local v7       #triplet:I
    invoke-static {v7, p2, v6}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I

    .line 171
    move v0, v2

    .line 172
    goto :goto_5a

    .line 174
    .end local v2           #newValue:I
    .end local v7           #triplet:I
    :cond_6b
    invoke-static {v0, p2, v5}, Lorg/codehaus/jackson/io/NumberOutput;->outputLeadingTriplet(I[CI)I

    move v8, p3

    .line 176
    goto :goto_11
.end method
