.class public final Lgv;
.super Ljava/lang/Object;
.source "a"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:[C

.field static final c:[C

.field static final d:[B

.field static final e:[Ljava/lang/String;

.field static final f:[Ljava/lang/String;

.field private static g:I

.field private static h:I

.field private static i:J

.field private static j:J

.field private static k:J

.field private static l:J


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const/4 v15, 0x2

    const/4 v14, 0x1

    const/16 v13, 0xfa0

    const/16 v12, 0xa

    const/4 v11, 0x0

    .line 7
    const v0, 0xf4240

    sput v0, Lgv;->g:I

    .line 8
    const v0, 0x3b9aca00

    sput v0, Lgv;->h:I

    .line 9
    const-wide v0, 0x2540be400L

    sput-wide v0, Lgv;->i:J

    .line 10
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lgv;->j:J

    .line 12
    const-wide/32 v0, -0x80000000

    sput-wide v0, Lgv;->k:J

    .line 13
    const-wide/32 v0, 0x7fffffff

    sput-wide v0, Lgv;->l:J

    .line 15
    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgv;->a:Ljava/lang/String;

    .line 17
    new-array v0, v13, [C

    sput-object v0, Lgv;->b:[C

    .line 18
    new-array v0, v13, [C

    sput-object v0, Lgv;->c:[C

    move v0, v11

    move v1, v11

    .line 24
    :goto_38
    if-ge v0, v12, :cond_84

    .line 25
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    .line 26
    if-nez v0, :cond_78

    move v3, v11

    :goto_40
    move v4, v1

    move v1, v11

    .line 27
    :goto_42
    if-ge v1, v12, :cond_80

    .line 28
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    .line 29
    if-nez v0, :cond_7a

    if-nez v1, :cond_7a

    move v6, v11

    :goto_4c
    move v7, v4

    move v4, v11

    .line 30
    :goto_4e
    if-ge v4, v12, :cond_7c

    .line 32
    add-int/lit8 v8, v4, 0x30

    int-to-char v8, v8

    .line 33
    sget-object v9, Lgv;->b:[C

    aput-char v3, v9, v7

    .line 34
    sget-object v9, Lgv;->b:[C

    add-int/lit8 v10, v7, 0x1

    aput-char v6, v9, v10

    .line 35
    sget-object v9, Lgv;->b:[C

    add-int/lit8 v10, v7, 0x2

    aput-char v8, v9, v10

    .line 36
    sget-object v9, Lgv;->c:[C

    aput-char v2, v9, v7

    .line 37
    sget-object v9, Lgv;->c:[C

    add-int/lit8 v10, v7, 0x1

    aput-char v5, v9, v10

    .line 38
    sget-object v9, Lgv;->c:[C

    add-int/lit8 v10, v7, 0x2

    aput-char v8, v9, v10

    .line 39
    add-int/lit8 v7, v7, 0x4

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_78
    move v3, v2

    .line 26
    goto :goto_40

    :cond_7a
    move v6, v5

    .line 29
    goto :goto_4c

    .line 27
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    move v4, v7

    goto :goto_42

    .line 24
    :cond_80
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_38

    .line 45
    :cond_84
    new-array v0, v13, [B

    sput-object v0, Lgv;->d:[B

    move v0, v11

    .line 47
    :goto_89
    if-ge v0, v13, :cond_97

    .line 48
    sget-object v1, Lgv;->d:[B

    sget-object v2, Lgv;->c:[C

    aget-char v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 52
    :cond_97
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v11

    const-string v1, "1"

    aput-object v1, v0, v14

    const-string v1, "2"

    aput-object v1, v0, v15

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const-string v1, "10"

    aput-object v1, v0, v12

    sput-object v0, Lgv;->e:[Ljava/lang/String;

    .line 55
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "-1"

    aput-object v1, v0, v11

    const-string v1, "-2"

    aput-object v1, v0, v14

    const-string v1, "-3"

    aput-object v1, v0, v15

    const/4 v1, 0x3

    const-string v2, "-4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "-5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "-10"

    aput-object v2, v0, v1

    sput-object v0, Lgv;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[CI)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    if-gez p0, :cond_7b

    .line 71
    const/high16 v0, -0x8000

    if-ne p0, v0, :cond_c

    .line 75
    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2}, Lgv;->a(J[CI)I

    move-result v0

    .line 126
    :goto_b
    return v0

    .line 77
    :cond_c
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    aput-char v1, p1, p2

    .line 78
    neg-int v1, p0

    .line 81
    :goto_13
    sget v2, Lgv;->g:I

    if-ge v1, v2, :cond_3b

    .line 82
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_2d

    .line 83
    const/16 v2, 0xa

    if-ge v1, v2, :cond_28

    .line 84
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, p1, v0

    move v0, v2

    goto :goto_b

    .line 86
    :cond_28
    invoke-static {v1, p1, v0}, Lgv;->b(I[CI)I

    move-result v0

    goto :goto_b

    .line 89
    :cond_2d
    div-int/lit16 v2, v1, 0x3e8

    .line 90
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v1, v3

    .line 91
    invoke-static {v2, p1, v0}, Lgv;->b(I[CI)I

    move-result v0

    .line 92
    invoke-static {v1, p1, v0}, Lgv;->c(I[CI)I

    move-result v0

    goto :goto_b

    .line 102
    :cond_3b
    sget v2, Lgv;->h:I

    if-lt v1, v2, :cond_6c

    const/4 v2, 0x1

    .line 103
    :goto_40
    if-eqz v2, :cond_53

    .line 104
    sget v3, Lgv;->h:I

    sub-int/2addr v1, v3

    .line 105
    sget v3, Lgv;->h:I

    if-lt v1, v3, :cond_6e

    .line 106
    sget v3, Lgv;->h:I

    sub-int/2addr v1, v3

    .line 107
    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x32

    aput-char v4, p1, v0

    move v0, v3

    .line 112
    :cond_53
    :goto_53
    div-int/lit16 v3, v1, 0x3e8

    .line 113
    mul-int/lit16 v4, v3, 0x3e8

    sub-int/2addr v1, v4

    .line 115
    div-int/lit16 v4, v3, 0x3e8

    .line 116
    mul-int/lit16 v5, v4, 0x3e8

    sub-int/2addr v3, v5

    .line 119
    if-eqz v2, :cond_76

    .line 120
    invoke-static {v4, p1, v0}, Lgv;->c(I[CI)I

    move-result v0

    .line 124
    :goto_63
    invoke-static {v3, p1, v0}, Lgv;->c(I[CI)I

    move-result v0

    .line 125
    invoke-static {v1, p1, v0}, Lgv;->c(I[CI)I

    move-result v0

    goto :goto_b

    .line 102
    :cond_6c
    const/4 v2, 0x0

    goto :goto_40

    .line 109
    :cond_6e
    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x31

    aput-char v4, p1, v0

    move v0, v3

    goto :goto_53

    .line 122
    :cond_76
    invoke-static {v4, p1, v0}, Lgv;->b(I[CI)I

    move-result v0

    goto :goto_63

    :cond_7b
    move v0, p2

    move v1, p0

    goto :goto_13
.end method

.method public static a(J[CI)I
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_45

    .line 190
    sget-wide v0, Lgv;->k:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_12

    .line 191
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lgv;->a(I[CI)I

    move-result v0

    .line 234
    :goto_11
    return v0

    .line 193
    :cond_12
    const-wide/high16 v0, -0x8000

    cmp-long v0, p0, v0

    if-nez v0, :cond_26

    .line 195
    sget-object v0, Lgv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 196
    sget-object v1, Lgv;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 197
    add-int/2addr v0, p3

    goto :goto_11

    .line 199
    :cond_26
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    aput-char v1, p2, p3

    .line 200
    neg-long v1, p0

    .line 211
    :goto_2d
    const/16 v3, 0xa

    sget-wide v4, Lgv;->i:J

    move-wide v10, v4

    move v5, v3

    move-wide v3, v10

    :goto_34
    cmp-long v6, v1, v3

    if-ltz v6, :cond_51

    const/16 v6, 0x13

    if-eq v5, v6, :cond_51

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    shl-long v6, v3, v6

    const/4 v8, 0x1

    shl-long/2addr v3, v8

    add-long/2addr v3, v6

    goto :goto_34

    .line 202
    :cond_45
    sget-wide v0, Lgv;->l:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_84

    .line 203
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lgv;->a(I[CI)I

    move-result v0

    goto :goto_11

    .line 211
    :cond_51
    add-int v3, v0, v5

    move-wide v4, v1

    move v1, v3

    .line 215
    :goto_55
    sget-wide v6, Lgv;->l:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_6b

    .line 216
    add-int/lit8 v1, v1, -0x3

    .line 217
    sget-wide v6, Lgv;->j:J

    div-long v6, v4, v6

    .line 218
    sget-wide v8, Lgv;->j:J

    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    long-to-int v2, v4

    .line 219
    invoke-static {v2, p2, v1}, Lgv;->c(I[CI)I

    move-wide v4, v6

    .line 221
    goto :goto_55

    .line 223
    :cond_6b
    long-to-int v2, v4

    move v10, v2

    move v2, v1

    move v1, v10

    .line 224
    :goto_6f
    const/16 v4, 0x3e8

    if-lt v1, v4, :cond_7f

    .line 225
    add-int/lit8 v2, v2, -0x3

    .line 226
    div-int/lit16 v4, v1, 0x3e8

    .line 227
    mul-int/lit16 v5, v4, 0x3e8

    sub-int/2addr v1, v5

    .line 228
    invoke-static {v1, p2, v2}, Lgv;->c(I[CI)I

    move v1, v4

    .line 230
    goto :goto_6f

    .line 232
    :cond_7f
    invoke-static {v1, p2, v0}, Lgv;->b(I[CI)I

    move v0, v3

    .line 234
    goto :goto_11

    :cond_84
    move v0, p3

    move-wide v1, p0

    goto :goto_2d
.end method

.method public static a(D)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 319
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 296
    sget-object v0, Lgv;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_19

    .line 297
    if-ltz p0, :cond_c

    .line 298
    sget-object v0, Lgv;->e:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 305
    :goto_b
    return-object v0

    .line 300
    :cond_c
    neg-int v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 301
    sget-object v1, Lgv;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 302
    sget-object v1, Lgv;->f:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_b

    .line 305
    :cond_19
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static a(J)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 310
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_14

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_14

    .line 312
    long-to-int v0, p0

    invoke-static {v0}, Lgv;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_13
    return-object v0

    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private static b(I[CI)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    shl-int/lit8 v0, p0, 0x2

    .line 331
    sget-object v1, Lgv;->b:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v0, v1, v0

    .line 332
    if-eqz v0, :cond_25

    .line 333
    add-int/lit8 v1, p2, 0x1

    aput-char v0, p1, p2

    move v0, v1

    .line 335
    :goto_f
    sget-object v1, Lgv;->b:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v2

    .line 336
    if-eqz v1, :cond_1c

    .line 337
    add-int/lit8 v2, v0, 0x1

    aput-char v1, p1, v0

    move v0, v2

    .line 340
    :cond_1c
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lgv;->b:[C

    aget-char v2, v2, v3

    aput-char v2, p1, v0

    .line 341
    return v1

    :cond_25
    move v0, p2

    goto :goto_f
.end method

.method private static c(I[CI)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    shl-int/lit8 v0, p0, 0x2

    .line 363
    add-int/lit8 v1, p2, 0x1

    sget-object v2, Lgv;->c:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    aput-char v0, p1, p2

    .line 364
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lgv;->c:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    .line 365
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lgv;->c:[C

    aget-char v2, v2, v4

    aput-char v2, p1, v0

    .line 366
    return v1
.end method
