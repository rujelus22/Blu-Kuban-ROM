.class public final Lac;
.super Ljava/lang/Object;


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

    const/4 v15, 0x2

    const/4 v14, 0x1

    const/16 v13, 0xfa0

    const/16 v12, 0xa

    const/4 v1, 0x0

    const v0, 0xf4240

    sput v0, Lac;->g:I

    const v0, 0x3b9aca00

    sput v0, Lac;->h:I

    const-wide v2, 0x2540be400L

    sput-wide v2, Lac;->i:J

    const-wide/16 v2, 0x3e8

    sput-wide v2, Lac;->j:J

    const-wide/32 v2, -0x80000000

    sput-wide v2, Lac;->k:J

    const-wide/32 v2, 0x7fffffff

    sput-wide v2, Lac;->l:J

    const-wide/high16 v2, -0x8000

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lac;->a:Ljava/lang/String;

    new-array v0, v13, [C

    sput-object v0, Lac;->b:[C

    new-array v0, v13, [C

    sput-object v0, Lac;->c:[C

    move v8, v1

    move v5, v1

    :goto_38
    if-ge v8, v12, :cond_84

    add-int/lit8 v0, v8, 0x30

    int-to-char v2, v0

    if-nez v8, :cond_77

    move v0, v1

    :goto_40
    move v7, v1

    :goto_41
    if-ge v7, v12, :cond_80

    add-int/lit8 v3, v7, 0x30

    int-to-char v4, v3

    if-nez v8, :cond_79

    if-nez v7, :cond_79

    move v3, v1

    :goto_4b
    move v6, v5

    move v5, v1

    :goto_4d
    if-ge v5, v12, :cond_7b

    add-int/lit8 v9, v5, 0x30

    int-to-char v9, v9

    sget-object v10, Lac;->b:[C

    aput-char v0, v10, v6

    sget-object v10, Lac;->b:[C

    add-int/lit8 v11, v6, 0x1

    aput-char v3, v10, v11

    sget-object v10, Lac;->b:[C

    add-int/lit8 v11, v6, 0x2

    aput-char v9, v10, v11

    sget-object v10, Lac;->c:[C

    aput-char v2, v10, v6

    sget-object v10, Lac;->c:[C

    add-int/lit8 v11, v6, 0x1

    aput-char v4, v10, v11

    sget-object v10, Lac;->c:[C

    add-int/lit8 v11, v6, 0x2

    aput-char v9, v10, v11

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_77
    move v0, v2

    goto :goto_40

    :cond_79
    move v3, v4

    goto :goto_4b

    :cond_7b
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v5, v6

    goto :goto_41

    :cond_80
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_38

    :cond_84
    new-array v0, v13, [B

    sput-object v0, Lac;->d:[B

    move v0, v1

    :goto_89
    if-ge v0, v13, :cond_97

    sget-object v2, Lac;->d:[B

    sget-object v3, Lac;->c:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    :cond_97
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v1

    const-string v2, "1"

    aput-object v2, v0, v14

    const-string v2, "2"

    aput-object v2, v0, v15

    const/4 v2, 0x3

    const-string v3, "3"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "4"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v0, v2

    const-string v2, "10"

    aput-object v2, v0, v12

    sput-object v0, Lac;->e:[Ljava/lang/String;

    new-array v0, v12, [Ljava/lang/String;

    const-string v2, "-1"

    aput-object v2, v0, v1

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

    sput-object v0, Lac;->f:[Ljava/lang/String;

    return-void
.end method

.method public static a(I[CI)I
    .registers 8

    if-gez p0, :cond_14

    const/high16 v0, -0x8000

    if-ne p0, v0, :cond_c

    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2}, Lac;->a(J[CI)I

    move-result v0

    :goto_b
    return v0

    :cond_c
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    aput-char v1, p1, p2

    neg-int p0, p0

    move p2, v0

    :cond_14
    sget v0, Lac;->g:I

    if-ge p0, v0, :cond_3c

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_2d

    const/16 v0, 0xa

    if-ge p0, v0, :cond_28

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p0, 0x30

    int-to-char v1, v1

    aput-char v1, p1, p2

    goto :goto_b

    :cond_28
    invoke-static {p0, p1, p2}, Lac;->b(I[CI)I

    move-result v0

    goto :goto_b

    :cond_2d
    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    invoke-static {v0, p1, p2}, Lac;->b(I[CI)I

    move-result v0

    invoke-static {v1, p1, v0}, Lac;->c(I[CI)I

    move-result v0

    goto :goto_b

    :cond_3c
    sget v0, Lac;->h:I

    if-lt p0, v0, :cond_70

    const/4 v0, 0x1

    move v1, v0

    :goto_42
    if-eqz v1, :cond_55

    sget v0, Lac;->h:I

    sub-int/2addr p0, v0

    sget v0, Lac;->h:I

    if-lt p0, v0, :cond_73

    sget v0, Lac;->h:I

    sub-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x32

    aput-char v2, p1, p2

    move p2, v0

    :cond_55
    :goto_55
    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v2, v0, 0x3e8

    sub-int v2, p0, v2

    div-int/lit16 v3, v0, 0x3e8

    mul-int/lit16 v4, v3, 0x3e8

    sub-int v4, v0, v4

    if-eqz v1, :cond_7b

    invoke-static {v3, p1, p2}, Lac;->c(I[CI)I

    move-result v0

    :goto_67
    invoke-static {v4, p1, v0}, Lac;->c(I[CI)I

    move-result v0

    invoke-static {v2, p1, v0}, Lac;->c(I[CI)I

    move-result v0

    goto :goto_b

    :cond_70
    const/4 v0, 0x0

    move v1, v0

    goto :goto_42

    :cond_73
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x31

    aput-char v2, p1, p2

    move p2, v0

    goto :goto_55

    :cond_7b
    invoke-static {v3, p1, p2}, Lac;->b(I[CI)I

    move-result v0

    goto :goto_67
.end method

.method public static a(J[CI)I
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_44

    sget-wide v0, Lac;->k:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_12

    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lac;->a(I[CI)I

    move-result v1

    :goto_11
    return v1

    :cond_12
    const-wide/high16 v0, -0x8000

    cmp-long v0, p0, v0

    if-nez v0, :cond_27

    sget-object v0, Lac;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lac;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    add-int v1, p3, v0

    goto :goto_11

    :cond_27
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    aput-char v1, p2, p3

    neg-long p0, p0

    move p3, v0

    :cond_2f
    const/16 v2, 0xa

    sget-wide v0, Lac;->i:J

    :goto_33
    cmp-long v3, p0, v0

    if-ltz v3, :cond_50

    const/16 v3, 0x13

    if-eq v2, v3, :cond_50

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    shl-long v3, v0, v3

    const/4 v5, 0x1

    shl-long/2addr v0, v5

    add-long/2addr v0, v3

    goto :goto_33

    :cond_44
    sget-wide v0, Lac;->l:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2f

    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lac;->a(I[CI)I

    move-result v1

    goto :goto_11

    :cond_50
    add-int v1, p3, v2

    move v0, v1

    :goto_53
    sget-wide v2, Lac;->l:J

    cmp-long v2, p0, v2

    if-lez v2, :cond_6a

    add-int/lit8 v0, v0, -0x3

    sget-wide v2, Lac;->j:J

    div-long v2, p0, v2

    sget-wide v4, Lac;->j:J

    mul-long/2addr v4, v2

    sub-long v4, p0, v4

    long-to-int v4, v4

    invoke-static {v4, p2, v0}, Lac;->c(I[CI)I

    move-wide p0, v2

    goto :goto_53

    :cond_6a
    long-to-int v2, p0

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_6e
    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_7f

    add-int/lit8 v3, v2, -0x3

    div-int/lit16 v2, v0, 0x3e8

    mul-int/lit16 v4, v2, 0x3e8

    sub-int/2addr v0, v4

    invoke-static {v0, p2, v3}, Lac;->c(I[CI)I

    move v0, v2

    move v2, v3

    goto :goto_6e

    :cond_7f
    invoke-static {v0, p2, p3}, Lac;->b(I[CI)I

    goto :goto_11
.end method

.method private static b(I[CI)I
    .registers 6

    shl-int/lit8 v0, p0, 0x2

    sget-object v1, Lac;->b:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v1, v1, v0

    if-eqz v1, :cond_f

    add-int/lit8 v0, p2, 0x1

    aput-char v1, p1, p2

    move p2, v0

    :cond_f
    sget-object v0, Lac;->b:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v0, v2

    if-eqz v2, :cond_1c

    add-int/lit8 v0, p2, 0x1

    aput-char v2, p1, p2

    move p2, v0

    :cond_1c
    add-int/lit8 v0, p2, 0x1

    sget-object v2, Lac;->b:[C

    aget-char v1, v2, v1

    aput-char v1, p1, p2

    return v0
.end method

.method private static c(I[CI)I
    .registers 8

    shl-int/lit8 v0, p0, 0x2

    add-int/lit8 v1, p2, 0x1

    sget-object v2, Lac;->c:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    aput-char v0, p1, p2

    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lac;->c:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lac;->c:[C

    aget-char v2, v2, v4

    aput-char v2, p1, v0

    return v1
.end method
