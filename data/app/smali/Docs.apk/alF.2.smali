.class public final LalF;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# static fields
.field private static final a:[I

.field private static final a:[J

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const-wide/16 v5, -0x1

    const/16 v1, 0x25

    .line 353
    new-array v0, v1, [J

    sput-object v0, LalF;->a:[J

    .line 354
    new-array v0, v1, [I

    sput-object v0, LalF;->a:[I

    .line 355
    new-array v0, v1, [I

    sput-object v0, LalF;->b:[I

    .line 357
    new-instance v1, Ljava/math/BigInteger;

    const-string v0, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 358
    const/4 v0, 0x2

    :goto_1a
    const/16 v2, 0x24

    if-gt v0, v2, :cond_42

    .line 359
    sget-object v2, LalF;->a:[J

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, LalF;->a(JJ)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 360
    sget-object v2, LalF;->a:[I

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, LalF;->b(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v2, v0

    .line 361
    sget-object v2, LalF;->b:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 363
    :cond_42
    return-void
.end method

.method public static a(JJ)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {p0, p1}, LalF;->a(J)J

    move-result-wide v0

    invoke-static {p2, p3}, LalF;->a(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, LalB;->a(JJ)I

    move-result v0

    return v0
.end method

.method private static a(J)J
    .registers 4
    .parameter

    .prologue
    .line 59
    const-wide/high16 v0, -0x8000

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static a(JJ)J
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    .line 179
    cmp-long v3, p2, v1

    if-gez v3, :cond_12

    .line 180
    invoke-static {p0, p1, p2, p3}, LalF;->a(JJ)I

    move-result v0

    if-gez v0, :cond_f

    move-wide v0, v1

    .line 200
    :goto_e
    return-wide v0

    .line 183
    :cond_f
    const-wide/16 v0, 0x1

    goto :goto_e

    .line 188
    :cond_12
    cmp-long v1, p0, v1

    if-ltz v1, :cond_19

    .line 189
    div-long v0, p0, p2

    goto :goto_e

    .line 198
    :cond_19
    ushr-long v1, p0, v0

    div-long/2addr v1, p2

    shl-long/2addr v1, v0

    .line 199
    mul-long v3, v1, p2

    sub-long v3, p0, v3

    .line 200
    invoke-static {v3, v4, p2, p3}, LalF;->a(JJ)I

    move-result v3

    if-ltz v3, :cond_2b

    :goto_27
    int-to-long v3, v0

    add-long v0, v1, v3

    goto :goto_e

    :cond_2b
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static a(Ljava/lang/String;I)J
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    .line 259
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_11
    const/4 v0, 0x2

    if-lt p1, v0, :cond_18

    const/16 v0, 0x24

    if-le p1, v0, :cond_31

    .line 262
    :cond_18
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal radix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_31
    sget-object v0, LalF;->b:[I

    aget v0, v0, p1

    add-int/lit8 v3, v0, -0x1

    .line 266
    const-wide/16 v1, 0x0

    .line 267
    const/4 v0, 0x0

    :goto_3a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_79

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 269
    const/4 v5, -0x1

    if-ne v4, v5, :cond_51

    .line 270
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_51
    if-le v0, v3, :cond_72

    invoke-static {v1, v2, v4, p1}, LalF;->a(JII)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 273
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too large for unsigned long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_72
    int-to-long v5, p1

    mul-long/2addr v1, v5

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 278
    :cond_79
    return-wide v1
.end method

.method public static a(J)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 307
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, LalF;->a(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JI)Ljava/lang/String;
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 320
    const/4 v0, 0x2

    if-lt p2, v0, :cond_20

    const/16 v0, 0x24

    if-gt p2, v0, :cond_20

    const/4 v0, 0x1

    :goto_8
    const-string v1, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_22

    .line 324
    const-string v0, "0"

    .line 348
    :goto_1f
    return-object v0

    .line 320
    :cond_20
    const/4 v0, 0x0

    goto :goto_8

    .line 326
    :cond_22
    const/16 v0, 0x40

    new-array v6, v0, [C

    .line 327
    array-length v0, v6

    .line 328
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_6b

    .line 332
    const/16 v1, 0x20

    ushr-long v3, p0, v1

    .line 333
    const-wide v1, 0xffffffffL

    and-long/2addr v1, p0

    int-to-long v7, p2

    rem-long v7, v3, v7

    const/16 v5, 0x20

    shl-long/2addr v7, v5

    add-long/2addr v1, v7

    .line 334
    int-to-long v7, p2

    div-long/2addr v3, v7

    .line 335
    :goto_40
    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-gtz v5, :cond_4c

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-lez v5, :cond_80

    .line 336
    :cond_4c
    add-int/lit8 v5, v0, -0x1

    int-to-long v7, p2

    rem-long v7, v1, v7

    long-to-int v0, v7

    invoke-static {v0, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    aput-char v0, v6, v5

    .line 337
    int-to-long v7, p2

    div-long v0, v1, v7

    int-to-long v7, p2

    rem-long v7, v3, v7

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 338
    int-to-long v7, p2

    div-long v2, v3, v7

    move-wide v9, v0

    move v0, v5

    move-wide v11, v2

    move-wide v3, v11

    move-wide v1, v9

    goto :goto_40

    .line 342
    :cond_6b
    :goto_6b
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_80

    .line 343
    add-int/lit8 v0, v0, -0x1

    int-to-long v1, p2

    rem-long v1, p0, v1

    long-to-int v1, v1

    invoke-static {v1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, v6, v0

    .line 344
    int-to-long v1, p2

    div-long/2addr p0, v1

    goto :goto_6b

    .line 348
    :cond_80
    new-instance v1, Ljava/lang/String;

    array-length v2, v6

    sub-int/2addr v2, v0

    invoke-direct {v1, v6, v0, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    goto :goto_1f
.end method

.method private static a(JII)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 288
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_11

    .line 289
    sget-object v2, LalF;->a:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gez v2, :cond_12

    move v0, v1

    .line 300
    :cond_11
    :goto_11
    return v0

    .line 292
    :cond_12
    sget-object v2, LalF;->a:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gtz v2, :cond_11

    .line 296
    sget-object v2, LalF;->a:[I

    aget v2, v2, p3

    if-gt p2, v2, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method public static b(JJ)J
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 213
    cmp-long v2, p2, v0

    if-gez v2, :cond_10

    .line 214
    invoke-static {p0, p1, p2, p3}, LalF;->a(JJ)I

    move-result v0

    if-gez v0, :cond_e

    .line 234
    :goto_d
    return-wide p0

    .line 217
    :cond_e
    sub-long/2addr p0, p2

    goto :goto_d

    .line 222
    :cond_10
    cmp-long v2, p0, v0

    if-ltz v2, :cond_16

    .line 223
    rem-long/2addr p0, p2

    goto :goto_d

    .line 232
    :cond_16
    ushr-long v2, p0, v4

    div-long/2addr v2, p2

    shl-long/2addr v2, v4

    .line 233
    mul-long/2addr v2, p2

    sub-long v2, p0, v2

    .line 234
    invoke-static {v2, v3, p2, p3}, LalF;->a(JJ)I

    move-result v4

    if-ltz v4, :cond_26

    :goto_23
    sub-long p0, v2, p2

    goto :goto_d

    :cond_26
    move-wide p2, v0

    goto :goto_23
.end method
