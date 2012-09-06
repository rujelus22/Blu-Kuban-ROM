.class public Lat/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/g;


# static fields
.field static a:[I

.field static b:[I

.field private static final g:Lat/Y;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lat/B;->a:[I

    .line 63
    sput-object v0, Lat/B;->b:[I

    .line 72
    const/16 v0, 0x16

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    sput-object v0, Lat/B;->g:Lat/Y;

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const v1, 0x4c4b400

    const v0, -0x4c4b400

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {p2}, Lat/B;->a(I)I

    move-result v2

    .line 148
    if-le p1, v1, :cond_28

    .line 152
    :goto_f
    if-ge v1, v0, :cond_26

    .line 156
    :goto_11
    iput v0, p0, Lat/B;->e:I

    .line 157
    iput v2, p0, Lat/B;->f:I

    .line 158
    sget-object v1, Lat/B;->g:Lat/Y;

    invoke-static {v2, v1}, Lat/B;->a(ILat/Y;)I

    move-result v1

    iput v1, p0, Lat/B;->c:I

    .line 159
    sget-object v1, Lat/B;->g:Lat/Y;

    invoke-static {v0, v1}, Lat/B;->b(ILat/Y;)I

    move-result v0

    iput v0, p0, Lat/B;->d:I

    .line 160
    return-void

    :cond_26
    move v0, v1

    goto :goto_11

    :cond_28
    move v1, p1

    goto :goto_f
.end method

.method public constructor <init>(III)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x16

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {p3}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lat/Y;->b()I

    move-result v1

    invoke-static {p1, v1}, Lat/B;->d(II)I

    move-result v1

    .line 172
    invoke-virtual {v0}, Lat/Y;->b()I

    move-result v2

    invoke-static {p2, v2}, Lat/B;->e(II)I

    move-result v2

    .line 173
    invoke-virtual {v0, v1, v3}, Lat/Y;->a(II)I

    move-result v1

    iput v1, p0, Lat/B;->c:I

    .line 175
    invoke-virtual {v0, v2, v3}, Lat/Y;->a(II)I

    move-result v0

    iput v0, p0, Lat/B;->d:I

    .line 177
    iget v0, p0, Lat/B;->d:I

    sget-object v1, Lat/B;->g:Lat/Y;

    invoke-static {v0, v1}, Lat/B;->c(ILat/Y;)I

    move-result v0

    iput v0, p0, Lat/B;->e:I

    .line 178
    iget v0, p0, Lat/B;->c:I

    sget-object v1, Lat/B;->g:Lat/Y;

    invoke-static {v0, v1}, Lat/B;->d(ILat/Y;)I

    move-result v0

    iput v0, p0, Lat/B;->f:I

    .line 179
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x16

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p5}, Lat/B;->a(I)I

    move-result v0

    .line 194
    iput p4, p0, Lat/B;->e:I

    .line 195
    iput v0, p0, Lat/B;->f:I

    .line 196
    invoke-static {p3}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lat/Y;->b()I

    move-result v1

    invoke-static {p1, v1}, Lat/B;->d(II)I

    move-result v1

    .line 198
    invoke-virtual {v0}, Lat/Y;->b()I

    move-result v2

    invoke-static {p2, v2}, Lat/B;->e(II)I

    move-result v2

    .line 199
    invoke-virtual {v0, v1, v3}, Lat/Y;->a(II)I

    move-result v1

    iput v1, p0, Lat/B;->c:I

    .line 201
    invoke-virtual {v0, v2, v3}, Lat/Y;->a(II)I

    move-result v0

    iput v0, p0, Lat/B;->d:I

    .line 203
    return-void
.end method

.method private static a(I)I
    .registers 4
    .parameter

    .prologue
    const v2, 0x15752a00

    .line 100
    move v0, p0

    :goto_4
    const v1, -0xaba9500

    if-ge v0, v1, :cond_b

    .line 101
    add-int/2addr v0, v2

    goto :goto_4

    .line 103
    :cond_b
    :goto_b
    const v1, 0xaba9500

    if-le v0, v1, :cond_12

    .line 104
    sub-int/2addr v0, v2

    goto :goto_b

    .line 106
    :cond_12
    return v0
.end method

.method public static a(ILat/Y;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-virtual {p1}, Lat/Y;->b()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    int-to-long v2, p0

    invoke-virtual {p1}, Lat/Y;->b()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x15752a00

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static a(JI)J
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 754
    invoke-static {p0, p1}, Lat/B;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    mul-long/2addr v0, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0xf4240

    div-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/googlenav/common/util/j;->a(I)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(III)Lat/B;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 852
    new-instance v0, Lat/B;

    invoke-direct {v0, p0, p1, p2}, Lat/B;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;
    .registers 4
    .parameter

    .prologue
    .line 550
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 551
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 552
    new-instance v2, Lat/B;

    invoke-direct {v2, v0, v1}, Lat/B;-><init>(II)V

    return-object v2
.end method

.method public static a(Ljava/io/DataInput;)Lat/B;
    .registers 4
    .parameter

    .prologue
    .line 839
    new-instance v0, Lat/B;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lat/B;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x2c

    .line 534
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 535
    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    .line 537
    const/16 v0, 0x2c

    :try_start_c
    invoke-static {p0, v0}, Laa/b;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 538
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Lat/B;->b(Ljava/lang/String;)I

    move-result v2

    .line 539
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Lat/B;->b(Ljava/lang/String;)I

    move-result v3

    .line 540
    new-instance v0, Lat/B;

    invoke-direct {v0, v2, v3}, Lat/B;-><init>(II)V
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_23} :catch_24

    .line 545
    :goto_23
    return-object v0

    .line 541
    :catch_24
    move-exception v0

    move-object v0, v1

    .line 542
    goto :goto_23

    :cond_27
    move-object v0, v1

    .line 545
    goto :goto_23
.end method

.method public static a(II)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lat/B;Ljava/io/DataOutput;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 806
    if-eqz p0, :cond_7

    .line 807
    invoke-direct {p0, p1}, Lat/B;->a(Ljava/io/DataOutput;)V

    .line 812
    :goto_6
    return-void

    .line 809
    :cond_7
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 810
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_6
.end method

.method private static a(Ljava/io/DataInput;[I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    aput v1, p1, v0

    .line 485
    const/4 v0, 0x1

    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_27

    .line 486
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    or-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 491
    :cond_27
    return-void
.end method

.method private a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 857
    iget v0, p0, Lat/B;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 858
    iget v0, p0, Lat/B;->f:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 859
    return-void
.end method

.method public static a(D)Z
    .registers 4
    .parameter

    .prologue
    .line 82
    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_14

    const-wide v0, 0x4066800000000000L

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static b(I)I
    .registers 3
    .parameter

    .prologue
    .line 663
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xf4240

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static b(ILat/Y;)I
    .registers 14
    .parameter
    .parameter

    .prologue
    const-wide/32 v10, 0xf4240

    .line 308
    invoke-static {p0}, Lat/B;->b(I)I

    move-result v0

    .line 310
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xf4240

    rem-int/2addr v1, v2

    .line 312
    invoke-static {}, Lat/B;->i()[I

    move-result-object v2

    .line 314
    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    mul-int/lit8 v3, v3, -0x1

    aget v4, v2, v0

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x1

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget v4, v2, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x6

    .line 319
    add-int/lit8 v4, v0, -0x1

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x3

    aget v5, v2, v0

    mul-int/lit8 v5, v5, 0x6

    sub-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x1

    aget v5, v2, v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x6

    .line 323
    add-int/lit8 v5, v0, -0x1

    aget v5, v2, v5

    mul-int/lit8 v5, v5, -0x2

    aget v6, v2, v0

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x1

    aget v6, v2, v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x2

    aget v6, v2, v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x6

    .line 328
    aget v0, v2, v0

    .line 330
    int-to-long v2, v3

    int-to-long v6, v1

    mul-long/2addr v2, v6

    int-to-long v6, v1

    mul-long/2addr v2, v6

    div-long/2addr v2, v10

    int-to-long v6, v1

    mul-long/2addr v2, v6

    div-long/2addr v2, v10

    div-long/2addr v2, v10

    int-to-long v6, v4

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v8, v1

    mul-long/2addr v6, v8

    div-long/2addr v6, v10

    div-long/2addr v6, v10

    add-long/2addr v2, v6

    int-to-long v4, v5

    int-to-long v6, v1

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    add-long v1, v2, v4

    int-to-long v3, v0

    add-long v0, v1, v3

    long-to-int v0, v0

    .line 337
    if-gez p0, :cond_7a

    .line 338
    neg-int v0, v0

    .line 347
    :cond_7a
    invoke-virtual {p1}, Lat/Y;->b()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-static {v0, p1}, Lat/B;->e(ILat/Y;)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-long v3, v0

    sub-long v0, v1, v3

    long-to-int v0, v0

    .line 350
    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 11
    .parameter

    .prologue
    const/16 v5, 0x2e

    const/4 v9, 0x6

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 558
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 560
    if-eq v0, v3, :cond_9e

    .line 561
    invoke-static {v4, v5}, Laa/b;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    .line 562
    array-length v0, v5

    const/4 v6, 0x2

    if-le v0, v6, :cond_31

    .line 563
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coordinate has more than one decimal point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_31
    aget-object v0, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 567
    aget-object v0, v5, v2

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_87

    move v0, v1

    .line 569
    :goto_42
    aget-object v7, v5, v1

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v7, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 572
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_68

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_68

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x39

    if-le v2, v7, :cond_89

    .line 574
    :cond_68
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fractional part in \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_87
    move v0, v2

    .line 567
    goto :goto_42

    .line 577
    :cond_89
    const/16 v2, 0x30

    invoke-static {v5, v9, v2}, Laa/b;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 579
    const v4, 0xf4240

    mul-int/2addr v4, v6

    if-eqz v0, :cond_9a

    move v1, v3

    :cond_9a
    mul-int v0, v2, v1

    add-int/2addr v0, v4

    .line 581
    :goto_9d
    return v0

    :cond_9e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0xf4240

    mul-int/2addr v0, v1

    goto :goto_9d
.end method

.method public static b(J)J
    .registers 6
    .parameter

    .prologue
    .line 781
    const-wide/16 v0, 0x24

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static b(D)Z
    .registers 4
    .parameter

    .prologue
    .line 92
    const-wide/high16 v0, -0x3fac

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_e

    const-wide/high16 v0, 0x4054

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static c(ILat/Y;)I
    .registers 16
    .parameter
    .parameter

    .prologue
    const v5, 0x4c4b40

    const v0, 0x4c4b400

    const-wide/32 v12, 0x4c4b40

    .line 437
    invoke-static {}, Lat/B;->j()[I

    move-result-object v1

    .line 439
    invoke-virtual {p1}, Lat/Y;->b()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, p0

    invoke-static {v2, p1}, Lat/B;->f(ILat/Y;)I

    move-result v2

    .line 440
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    .line 443
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-lt v3, v4, :cond_2b

    .line 444
    if-lez v2, :cond_27

    .line 472
    :cond_26
    :goto_26
    return v0

    .line 444
    :cond_27
    const v0, -0x4c4b400

    goto :goto_26

    .line 447
    :cond_2b
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/2addr v4, v5

    .line 448
    add-int/lit8 v5, v3, -0x1

    aget v5, v1, v5

    mul-int/lit8 v5, v5, -0x1

    aget v6, v1, v3

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x1

    aget v6, v1, v6

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    aget v6, v1, v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x6

    .line 452
    add-int/lit8 v6, v3, -0x1

    aget v6, v1, v6

    mul-int/lit8 v6, v6, 0x3

    aget v7, v1, v3

    mul-int/lit8 v7, v7, 0x6

    sub-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x1

    aget v7, v1, v7

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x6

    .line 455
    add-int/lit8 v7, v3, -0x1

    aget v7, v1, v7

    mul-int/lit8 v7, v7, -0x2

    aget v8, v1, v3

    mul-int/lit8 v8, v8, 0x3

    sub-int/2addr v7, v8

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    mul-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    add-int/lit8 v8, v3, 0x2

    aget v8, v1, v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x6

    .line 459
    aget v1, v1, v3

    .line 460
    int-to-long v8, v5

    int-to-long v10, v4

    mul-long/2addr v8, v10

    int-to-long v10, v4

    mul-long/2addr v8, v10

    div-long/2addr v8, v12

    int-to-long v10, v4

    mul-long/2addr v8, v10

    div-long/2addr v8, v12

    div-long/2addr v8, v12

    int-to-long v5, v6

    int-to-long v10, v4

    mul-long/2addr v5, v10

    int-to-long v10, v4

    mul-long/2addr v5, v10

    div-long/2addr v5, v12

    div-long/2addr v5, v12

    add-long/2addr v5, v8

    int-to-long v7, v7

    int-to-long v3, v4

    mul-long/2addr v3, v7

    div-long/2addr v3, v12

    add-long/2addr v3, v5

    int-to-long v5, v1

    add-long/2addr v3, v5

    long-to-int v1, v3

    .line 466
    if-le v1, v0, :cond_98

    .line 469
    :goto_94
    if-gez v2, :cond_26

    .line 470
    neg-int v0, v0

    goto :goto_26

    :cond_98
    move v0, v1

    goto :goto_94
.end method

.method private static c(J)J
    .registers 6
    .parameter

    .prologue
    .line 743
    const-wide/16 v0, 0x4

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x24

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static d(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 115
    move v0, p0

    :goto_1
    if-lt v0, p1, :cond_5

    .line 116
    sub-int/2addr v0, p1

    goto :goto_1

    .line 118
    :cond_5
    :goto_5
    if-gez v0, :cond_9

    .line 119
    add-int/2addr v0, p1

    goto :goto_5

    .line 121
    :cond_9
    return v0
.end method

.method private static d(ILat/Y;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-virtual {p1}, Lat/Y;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x15752a00

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Lat/Y;->b()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static e(II)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 131
    if-gez p0, :cond_4

    .line 132
    const/4 p0, 0x0

    .line 136
    :cond_3
    :goto_3
    return p0

    .line 133
    :cond_4
    if-lt p0, p1, :cond_3

    .line 134
    add-int/lit8 p0, p1, -0x1

    goto :goto_3
.end method

.method private static e(ILat/Y;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 657
    int-to-long v0, p0

    invoke-virtual {p1}, Lat/Y;->b()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x15752a00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static f(ILat/Y;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 670
    int-to-long v0, p0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Lat/Y;->b()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static declared-synchronized i()[I
    .registers 3

    .prologue
    .line 243
    const-class v1, Lat/B;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lat/B;->a:[I

    if-nez v0, :cond_1d

    .line 244
    const/16 v0, 0x54

    new-array v0, v0, [I

    sput-object v0, Lat/B;->a:[I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2a

    .line 247
    const/16 v0, 0xfd

    :try_start_f
    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    .line 266
    invoke-static {v0}, Lcom/google/googlenav/common/io/i;->a([B)Ljava/io/DataInput;

    move-result-object v0

    sget-object v2, Lat/B;->a:[I

    invoke-static {v0, v2}, Lat/B;->a(Ljava/io/DataInput;[I)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_2a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_21

    .line 272
    :cond_1d
    :try_start_1d
    sget-object v0, Lat/B;->a:[I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_2a

    monitor-exit v1

    return-object v0

    .line 267
    :catch_21
    move-exception v0

    .line 268
    :try_start_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t read mercator.dat"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 243
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 247
    nop

    :array_2e
    .array-data 0x1
        0xfft
        0xf0t
        0xbdt
        0x8dt
        0xft
        0x42t
        0x73t
        0xft
        0x42t
        0x73t
        0xft
        0x43t
        0xa3t
        0xft
        0x46t
        0x6t
        0xft
        0x49t
        0x99t
        0xft
        0x4et
        0x61t
        0xft
        0x54t
        0x5et
        0xft
        0x5bt
        0x93t
        0xft
        0x64t
        0x2t
        0xft
        0x6dt
        0xb0t
        0xft
        0x78t
        0x9ft
        0xft
        0x84t
        0xd4t
        0xft
        0x92t
        0x54t
        0xft
        0xa1t
        0x26t
        0xft
        0xb1t
        0x4et
        0xft
        0xc2t
        0xd3t
        0xft
        0xd5t
        0xbdt
        0xft
        0xeat
        0x15t
        0xft
        0xfft
        0xe1t
        0x10t
        0x17t
        0x2dt
        0x10t
        0x30t
        0x1t
        0x10t
        0x4at
        0x6bt
        0x10t
        0x66t
        0x74t
        0x10t
        0x84t
        0x2bt
        0x10t
        0xa3t
        0x9ct
        0x10t
        0xc4t
        0xd7t
        0x10t
        0xe7t
        0xedt
        0x11t
        0xct
        0xeet
        0x11t
        0x33t
        0xect
        0x11t
        0x5ct
        0xfct
        0x11t
        0x88t
        0x34t
        0x11t
        0xb5t
        0xa9t
        0x11t
        0xe5t
        0x76t
        0x12t
        0x17t
        0xb4t
        0x12t
        0x4ct
        0x81t
        0x12t
        0x83t
        0xfdt
        0x12t
        0xbet
        0x46t
        0x12t
        0xfbt
        0x84t
        0x13t
        0x3bt
        0xdbt
        0x13t
        0x7ft
        0x77t
        0x13t
        0xc6t
        0x86t
        0x14t
        0x11t
        0x38t
        0x14t
        0x5ft
        0xc4t
        0x14t
        0xb2t
        0x64t
        0x15t
        0x9t
        0x57t
        0x15t
        0x64t
        0xe5t
        0x15t
        0xc5t
        0x56t
        0x16t
        0x2at
        0xfft
        0x16t
        0x96t
        0x3at
        0x17t
        0x7t
        0x6dt
        0x17t
        0x7ft
        0x2t
        0x17t
        0xfdt
        0x75t
        0x18t
        0x83t
        0x48t
        0x19t
        0x11t
        0x14t
        0x19t
        0xa7t
        0x78t
        0x1at
        0x47t
        0x2et
        0x1at
        0xf1t
        0x3t
        0x1bt
        0xa5t
        0xd9t
        0x1ct
        0x66t
        0xb3t
        0x1dt
        0x34t
        0xb3t
        0x1et
        0x11t
        0x1ft
        0x1et
        0xfdt
        0x6ft
        0x1ft
        0xfbt
        0x4at
        0x21t
        0xct
        0x97t
        0x22t
        0x33t
        0x88t
        0x23t
        0x72t
        0xa5t
        0x24t
        0xcct
        0xe2t
        0x26t
        0x45t
        0xb4t
        0x27t
        0xe1t
        0x2at
        0x29t
        0xa4t
        0x19t
        0x2bt
        0x94t
        0x46t
        0x2dt
        0xb8t
        0xa5t
        0x30t
        0x19t
        0xact
        0x32t
        0xc1t
        0xc1t
        0x35t
        0xbdt
        0xd1t
        0x39t
        0x1et
        0x1ct
        0x3ct
        0xf7t
        0x69t
        0x41t
        0x64t
        0xa0t
        0x46t
        0x89t
        0x52t
        0x4ct
        0x95t
        0x73t
        0x53t
        0xcbt
        0x4ft
        0x5ct
        0x89t
        0x34t
        0x67t
        0x5at
        0xct
    .end array-data
.end method

.method private static declared-synchronized j()[I
    .registers 3

    .prologue
    .line 371
    const-class v1, Lat/B;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lat/B;->b:[I

    if-nez v0, :cond_1d

    .line 372
    const/16 v0, 0x8d

    new-array v0, v0, [I

    sput-object v0, Lat/B;->b:[I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2a

    .line 375
    const/16 v0, 0x1a8

    :try_start_f
    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    .line 412
    invoke-static {v0}, Lcom/google/googlenav/common/io/i;->a([B)Ljava/io/DataInput;

    move-result-object v0

    sget-object v2, Lat/B;->b:[I

    invoke-static {v0, v2}, Lat/B;->a(Ljava/io/DataInput;[I)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_2a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_21

    .line 418
    :cond_1d
    :try_start_1d
    sget-object v0, Lat/B;->b:[I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_2a

    monitor-exit v1

    return-object v0

    .line 413
    :catch_21
    move-exception v0

    .line 414
    :try_start_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "rmercator.dat is incorrect"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 371
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 375
    nop

    :array_2e
    .array-data 0x1
        0xfft
        0xe4t
        0x89t
        0xe8t
        0x1bt
        0x76t
        0x18t
        0x1bt
        0x76t
        0x18t
        0x1bt
        0x6ft
        0x2at
        0x1bt
        0x61t
        0x55t
        0x1bt
        0x4ct
        0xaet
        0x1bt
        0x31t
        0x4bt
        0x1bt
        0xft
        0x4ft
        0x1at
        0xe6t
        0xe6t
        0x1at
        0xb8t
        0x3dt
        0x1at
        0x83t
        0x8et
        0x1at
        0x49t
        0x16t
        0x1at
        0x9t
        0x19t
        0x19t
        0xc3t
        0xddt
        0x19t
        0x79t
        0xaft
        0x19t
        0x2at
        0xdet
        0x18t
        0xd7t
        0xbat
        0x18t
        0x80t
        0x99t
        0x18t
        0x25t
        0xcdt
        0x17t
        0xc7t
        0xaet
        0x17t
        0x66t
        0x8dt
        0x17t
        0x2t
        0xc0t
        0x16t
        0x9ct
        0x9bt
        0x16t
        0x34t
        0x6dt
        0x15t
        0xcat
        0x86t
        0x15t
        0x5ft
        0x30t
        0x14t
        0xf2t
        0xb8t
        0x14t
        0x85t
        0x61t
        0x14t
        0x17t
        0x6ft
        0x13t
        0xa9t
        0x21t
        0x13t
        0x3at
        0xb4t
        0x12t
        0xcct
        0x5et
        0x12t
        0x5et
        0x55t
        0x11t
        0xf0t
        0xc8t
        0x11t
        0x83t
        0xe6t
        0x11t
        0x17t
        0xd6t
        0x10t
        0xact
        0xc0t
        0x10t
        0x42t
        0xc3t
        0xft
        0xdat
        0x2t
        0xft
        0x72t
        0x96t
        0xft
        0xct
        0x99t
        0xet
        0xa8t
        0x20t
        0xet
        0x45t
        0x40t
        0xdt
        0xe4t
        0x7t
        0xdt
        0x84t
        0x86t
        0xdt
        0x26t
        0xc6t
        0xct
        0xcat
        0xd3t
        0xct
        0x70t
        0xb5t
        0xct
        0x18t
        0x71t
        0xbt
        0xc2t
        0xat
        0xbt
        0x6dt
        0x87t
        0xbt
        0x1at
        0xe5t
        0xat
        0xcat
        0x28t
        0xat
        0x7bt
        0x4dt
        0xat
        0x2et
        0x52t
        0x9t
        0xe3t
        0x34t
        0x9t
        0x99t
        0xf0t
        0x9t
        0x52t
        0x82t
        0x9t
        0xct
        0xe3t
        0x8t
        0xc9t
        0xet
        0x8t
        0x86t
        0xfet
        0x8t
        0x46t
        0xaat
        0x8t
        0x8t
        0xdt
        0x7t
        0xcbt
        0x1et
        0x7t
        0x8ft
        0xd7t
        0x7t
        0x56t
        0x2dt
        0x7t
        0x1et
        0x1bt
        0x6t
        0xe7t
        0x98t
        0x6t
        0xb2t
        0x9at
        0x6t
        0x7ft
        0x1at
        0x6t
        0x4dt
        0xft
        0x6t
        0x1ct
        0x72t
        0x5t
        0xedt
        0x38t
        0x5t
        0xbft
        0x59t
        0x5t
        0x92t
        0xcet
        0x5t
        0x67t
        0x8et
        0x5t
        0x3dt
        0x91t
        0x5t
        0x14t
        0xcdt
        0x4t
        0xedt
        0x3bt
        0x4t
        0xc6t
        0xd5t
        0x4t
        0xa1t
        0x8ft
        0x4t
        0x7dt
        0x66t
        0x4t
        0x5at
        0x4et
        0x4t
        0x38t
        0x41t
        0x4t
        0x17t
        0x3at
        0x3t
        0xf7t
        0x2ft
        0x3t
        0xd8t
        0x1at
        0x3t
        0xb9t
        0xf3t
        0x3t
        0x9ct
        0xb5t
        0x3t
        0x80t
        0x58t
        0x3t
        0x64t
        0xd7t
        0x3t
        0x4at
        0x2bt
        0x3t
        0x30t
        0x4ct
        0x3t
        0x17t
        0x37t
        0x2t
        0xfet
        0xe4t
        0x2t
        0xe7t
        0x4ft
        0x2t
        0xd0t
        0x72t
        0x2t
        0xbat
        0x46t
        0x2t
        0xa4t
        0xc8t
        0x2t
        0x8ft
        0xf1t
        0x2t
        0x7bt
        0xbdt
        0x2t
        0x68t
        0x28t
        0x2t
        0x55t
        0x2bt
        0x2t
        0x42t
        0xc3t
        0x2t
        0x30t
        0xect
        0x2t
        0x1ft
        0xa0t
        0x2t
        0xet
        0xddt
        0x1t
        0xfet
        0x9ct
        0x1t
        0xeet
        0xdct
        0x1t
        0xdft
        0x96t
        0x1t
        0xd0t
        0xcbt
        0x1t
        0xc2t
        0x72t
        0x1t
        0xb4t
        0x8at
        0x1t
        0xa7t
        0x11t
        0x1t
        0x9at
        0x1t
        0x1t
        0x8dt
        0x58t
        0x1t
        0x81t
        0x12t
        0x1t
        0x75t
        0x2ft
        0x1t
        0x69t
        0xa7t
        0x1t
        0x5et
        0x7ct
        0x1t
        0x53t
        0xa8t
        0x1t
        0x49t
        0x2at
        0x1t
        0x3et
        0xfft
        0x1t
        0x35t
        0x23t
        0x1t
        0x2bt
        0x97t
        0x1t
        0x22t
        0x54t
        0x1t
        0x19t
        0x5bt
        0x1t
        0x10t
        0xaat
        0x1t
        0x8t
        0x3ct
        0x1t
        0x0t
        0x11t
        0x0t
        0xf8t
        0x28t
        0x0t
        0xf0t
        0x7ct
        0x0t
        0xe9t
        0xdt
        0x0t
        0xe1t
        0xd8t
        0x0t
        0xdat
        0xdet
        0x0t
        0xd4t
        0x19t
        0x0t
        0xcdt
        0x8bt
        0x0t
        0xc7t
        0x30t
        0x0t
        0xc1t
        0x8t
        0x0t
        0xbbt
        0x10t
        0x0t
        0xb5t
        0x47t
    .end array-data
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lat/Y;)I
    .registers 5
    .parameter

    .prologue
    .line 220
    sget-object v0, Lat/B;->g:Lat/Y;

    iget v1, p0, Lat/B;->c:I

    invoke-virtual {p1}, Lat/Y;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lat/Y;->a(II)I

    move-result v0

    return v0
.end method

.method public a(J)J
    .registers 5
    .parameter

    .prologue
    .line 765
    iget v0, p0, Lat/B;->e:I

    invoke-static {p1, p2, v0}, Lat/B;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lat/B;)J
    .registers 10
    .parameter

    .prologue
    const-wide/16 v6, 0x64

    .line 690
    iget v0, p0, Lat/B;->e:I

    iget v1, p1, Lat/B;->e:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lat/B;->e:I

    iget v3, p1, Lat/B;->e:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    iget v2, p0, Lat/B;->f:I

    iget v3, p1, Lat/B;->f:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Lat/B;->f:I

    iget v5, p1, Lat/B;->f:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(Lat/B;Lat/Y;)J
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 793
    invoke-virtual {p1, p2}, Lat/B;->a(Lat/Y;)I

    move-result v0

    invoke-virtual {p0, p2}, Lat/B;->a(Lat/Y;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 794
    invoke-virtual {p1, p2}, Lat/B;->b(Lat/Y;)I

    move-result v1

    invoke-virtual {p0, p2}, Lat/B;->b(Lat/Y;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 795
    int-to-long v2, v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    int-to-long v0, v1

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(IILat/Y;)Lat/B;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x16

    .line 617
    invoke-virtual {p3, p1, v3}, Lat/Y;->a(II)I

    move-result v0

    iget v1, p0, Lat/B;->c:I

    add-int/2addr v1, v0

    .line 619
    invoke-virtual {p3, p2, v3}, Lat/Y;->a(II)I

    move-result v0

    iget v2, p0, Lat/B;->d:I

    add-int/2addr v2, v0

    .line 623
    iget v4, p0, Lat/B;->e:I

    .line 624
    if-eqz p2, :cond_1a

    .line 625
    sget-object v0, Lat/B;->g:Lat/Y;

    invoke-static {v2, v0}, Lat/B;->c(ILat/Y;)I

    move-result v4

    .line 627
    :cond_1a
    iget v5, p0, Lat/B;->f:I

    .line 628
    if-eqz p1, :cond_2b

    .line 629
    int-to-long v6, p1

    const-wide/32 v8, 0x15752a00

    mul-long/2addr v6, v8

    invoke-virtual {p3}, Lat/Y;->b()I

    move-result v0

    int-to-long v8, v0

    div-long/2addr v6, v8

    long-to-int v0, v6

    add-int/2addr v5, v0

    .line 632
    :cond_2b
    new-instance v0, Lat/B;

    invoke-direct/range {v0 .. v5}, Lat/B;-><init>(IIIII)V

    return-object v0
.end method

.method public b(Lat/Y;)I
    .registers 5
    .parameter

    .prologue
    .line 360
    sget-object v0, Lat/B;->g:Lat/Y;

    iget v1, p0, Lat/B;->d:I

    invoke-virtual {p1}, Lat/Y;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lat/Y;->a(II)I

    move-result v0

    return v0
.end method

.method public b(Lat/B;)J
    .registers 8
    .parameter

    .prologue
    .line 717
    iget v0, p0, Lat/B;->e:I

    iget v1, p1, Lat/B;->e:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 718
    iget v0, p0, Lat/B;->f:I

    iget v1, p1, Lat/B;->f:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 721
    const-wide/32 v4, 0xaba9500

    cmp-long v4, v0, v4

    if-lez v4, :cond_20

    const-wide/32 v4, 0x15752a00

    sub-long v0, v4, v0

    .line 724
    :cond_20
    iget v4, p0, Lat/B;->e:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p1, Lat/B;->e:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0x1e8480

    div-int/2addr v4, v5

    .line 725
    invoke-static {v4}, Lcom/google/googlenav/common/util/j;->a(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v0, v4

    const-wide/16 v4, 0xfa

    div-long/2addr v0, v4

    .line 726
    invoke-static {v2, v3}, Lat/B;->c(J)J

    move-result-wide v4

    invoke-static {v2, v3}, Lat/B;->c(J)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-static {v0, v1}, Lat/B;->c(J)J

    move-result-wide v4

    invoke-static {v0, v1}, Lat/B;->c(J)J

    move-result-wide v0

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Lat/B;
    .registers 1

    .prologue
    .line 828
    return-object p0
.end method

.method public b(II)Lat/B;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 595
    iget v0, p0, Lat/B;->e:I

    add-int v4, v0, p1

    .line 596
    iget v0, p0, Lat/B;->f:I

    add-int v5, v0, p2

    .line 597
    iget v1, p0, Lat/B;->c:I

    .line 598
    iget v2, p0, Lat/B;->d:I

    .line 599
    if-eqz p1, :cond_14

    .line 600
    sget-object v0, Lat/B;->g:Lat/Y;

    invoke-static {v4, v0}, Lat/B;->b(ILat/Y;)I

    move-result v2

    .line 602
    :cond_14
    if-eqz p2, :cond_1c

    .line 603
    sget-object v0, Lat/B;->g:Lat/Y;

    invoke-static {v5, v0}, Lat/B;->a(ILat/Y;)I

    move-result v1

    .line 605
    :cond_1c
    new-instance v0, Lat/B;

    const/16 v3, 0x16

    invoke-direct/range {v0 .. v5}, Lat/B;-><init>(IIIII)V

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 423
    iget v0, p0, Lat/B;->e:I

    return v0
.end method

.method public c(II)Lat/B;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 646
    int-to-long v0, p1

    invoke-static {v0, v1}, Lat/B;->b(J)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lat/B;->a(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lat/B;->b(II)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Lat/B;->e:I

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 495
    iget v0, p0, Lat/B;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 863
    if-ne p0, p1, :cond_6

    move v0, v1

    .line 873
    :cond_5
    :goto_5
    return v0

    .line 866
    :cond_6
    instance-of v2, p1, Lat/B;

    if-eqz v2, :cond_5

    .line 870
    check-cast p1, Lat/B;

    .line 873
    iget v2, p0, Lat/B;->e:I

    iget v3, p1, Lat/B;->e:I

    if-ne v2, v3, :cond_18

    iget v2, p0, Lat/B;->f:I

    iget v3, p1, Lat/B;->f:I

    if-eq v2, v3, :cond_24

    :cond_18
    iget v2, p0, Lat/B;->c:I

    iget v3, p1, Lat/B;->c:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lat/B;->d:I

    iget v3, p1, Lat/B;->d:I

    if-ne v2, v3, :cond_5

    :cond_24
    move v0, v1

    goto :goto_5
.end method

.method public f()I
    .registers 2

    .prologue
    .line 500
    iget v0, p0, Lat/B;->f:I

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 519
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 521
    const/4 v1, 0x1

    iget v2, p0, Lat/B;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 522
    const/4 v1, 0x2

    iget v2, p0, Lat/B;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 523
    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 880
    const/16 v0, 0x18

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 886
    iget v0, p0, Lat/B;->e:I

    .line 887
    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lat/B;->f:I

    add-int/2addr v0, v1

    .line 888
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 514
    iget v0, p0, Lat/B;->e:I

    iget v1, p0, Lat/B;->f:I

    invoke-static {v0, v1}, Lat/B;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
