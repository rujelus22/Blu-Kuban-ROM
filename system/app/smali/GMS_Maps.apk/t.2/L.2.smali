.class public final Lt/L;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/L;->a:I

    iput p2, p0, Lt/L;->b:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/L;->a:I

    iput p2, p0, Lt/L;->b:I

    iput p3, p0, Lt/L;->c:I

    return-void
.end method

.method public constructor <init>(Lt/L;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lt/L;->a:I

    iput v0, p0, Lt/L;->a:I

    iget v0, p1, Lt/L;->b:I

    iput v0, p0, Lt/L;->b:I

    iget v0, p1, Lt/L;->c:I

    iput v0, p0, Lt/L;->c:I

    return-void
.end method

.method public static a(D)D
    .registers 6

    const-wide v0, 0x41731680b1202bfeL

    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41c0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(Lt/L;Lt/L;)D
    .registers 7

    invoke-virtual {p1, p0}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v0

    iget v1, v0, Lt/L;->a:I

    int-to-double v1, v1

    iget v0, v0, Lt/L;->b:I

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_20

    const-wide v2, 0x4076800000000000L

    add-double/2addr v0, v2

    :cond_20
    return-wide v0
.end method

.method public static a(Lt/L;Lt/L;Lt/L;Lt/L;)F
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lt/L;->a(Lt/L;Lt/L;Lt/L;ZLt/L;)V

    invoke-virtual {p2, p3}, Lt/L;->c(Lt/L;)F

    move-result v0

    return v0
.end method

.method public static a(DD)Lt/L;
    .registers 5

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lt/L;->b(DD)V

    return-object v0
.end method

.method public static a(FF)Lt/L;
    .registers 9

    const v0, 0x40490fdb

    mul-float/2addr v0, p0

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    new-instance v1, Lt/L;

    float-to-double v2, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    float-to-double v3, p1

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-direct {v1, v2, v0}, Lt/L;-><init>(II)V

    return-object v1
.end method

.method public static a(II)Lt/L;
    .registers 8

    const-wide v4, 0x3e7ad7f29abcaf48L

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lt/L;->a(DD)Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;Lt/af;)Lt/L;
    .registers 5

    iget v0, p1, Lt/af;->c:I

    if-gez v0, :cond_1e

    iget v0, p1, Lt/af;->c:I

    neg-int v0, v0

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shr-int/2addr v1, v0

    iget v2, p1, Lt/af;->a:I

    add-int/2addr v1, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shr-int v0, v2, v0

    iget v2, p1, Lt/af;->b:I

    add-int/2addr v2, v0

    new-instance v0, Lt/L;

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    :goto_1d
    return-object v0

    :cond_1e
    iget v0, p1, Lt/af;->c:I

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shl-int/2addr v1, v0

    iget v2, p1, Lt/af;->a:I

    add-int/2addr v1, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shl-int v0, v2, v0

    iget v2, p1, Lt/af;->b:I

    add-int/2addr v2, v0

    new-instance v0, Lt/L;

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    goto :goto_1d
.end method

.method public static a(Lt/L;)Lt/L;
    .registers 5

    new-instance v0, Lt/L;

    iget v1, p0, Lt/L;->a:I

    iget v2, p0, Lt/L;->b:I

    iget v3, p0, Lt/L;->c:I

    invoke-direct {v0, v1, v2, v3}, Lt/L;-><init>(III)V

    return-object v0
.end method

.method public static a(Lt/o;)Lt/L;
    .registers 3

    invoke-virtual {p0}, Lt/o;->a()I

    move-result v0

    invoke-virtual {p0}, Lt/o;->b()I

    move-result v1

    invoke-static {v0, v1}, Lt/L;->b(II)Lt/L;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/io/DataInput;Lt/af;[II)V
    .registers 10

    const/4 v5, 0x0

    mul-int/lit8 v0, p3, 0x3

    iget v1, p1, Lt/af;->c:I

    if-gez v1, :cond_28

    iget v1, p1, Lt/af;->c:I

    neg-int v1, v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lt/af;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int v1, v3, v1

    iget v3, p1, Lt/af;->b:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    add-int/lit8 v1, v0, 0x1

    aput v5, p2, v0

    :goto_27
    return-void

    :cond_28
    iget v1, p1, Lt/af;->c:I

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lt/af;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int v1, v3, v1

    iget v3, p1, Lt/af;->b:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    add-int/lit8 v1, v0, 0x1

    aput v5, p2, v0

    goto :goto_27
.end method

.method public static a(Lt/L;FLt/L;)V
    .registers 4

    iget v0, p0, Lt/L;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lt/L;->a:I

    iget v0, p0, Lt/L;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lt/L;->b:I

    iget v0, p0, Lt/L;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lt/L;->c:I

    return-void
.end method

.method public static a(Lt/L;Lt/L;FLt/L;)V
    .registers 6

    iget v0, p1, Lt/L;->a:I

    iget v1, p0, Lt/L;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lt/L;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Lt/L;->a:I

    iget v0, p1, Lt/L;->b:I

    iget v1, p0, Lt/L;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lt/L;->b:I

    add-int/2addr v0, v1

    iput v0, p3, Lt/L;->b:I

    iget v0, p1, Lt/L;->c:I

    iget v1, p0, Lt/L;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lt/L;->c:I

    add-int/2addr v0, v1

    iput v0, p3, Lt/L;->c:I

    return-void
.end method

.method public static a(Lt/L;Lt/L;Lt/L;)V
    .registers 5

    iget v0, p0, Lt/L;->a:I

    iget v1, p1, Lt/L;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Lt/L;->a:I

    iget v0, p0, Lt/L;->b:I

    iget v1, p1, Lt/L;->b:I

    add-int/2addr v0, v1

    iput v0, p2, Lt/L;->b:I

    iget v0, p0, Lt/L;->c:I

    iget v1, p1, Lt/L;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Lt/L;->c:I

    return-void
.end method

.method public static a(Lt/L;Lt/L;Lt/L;ZLt/L;)V
    .registers 7

    invoke-static {p0, p1, p2}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v0

    if-eqz p3, :cond_1d

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_f

    invoke-virtual {p4, p0}, Lt/L;->b(Lt/L;)V

    :goto_e
    return-void

    :cond_f
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_19

    invoke-virtual {p4, p1}, Lt/L;->b(Lt/L;)V

    goto :goto_e

    :cond_19
    invoke-static {p0, p1, v0, p4}, Lt/L;->a(Lt/L;Lt/L;FLt/L;)V

    goto :goto_e

    :cond_1d
    invoke-static {p0, p1, v0, p4}, Lt/L;->a(Lt/L;Lt/L;FLt/L;)V

    goto :goto_e
.end method

.method public static b(Lt/L;Lt/L;)F
    .registers 6

    iget v0, p0, Lt/L;->a:I

    int-to-float v0, v0

    iget v1, p1, Lt/L;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lt/L;->b:I

    int-to-float v1, v1

    iget v2, p1, Lt/L;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lt/L;->c:I

    int-to-float v2, v2

    iget v3, p1, Lt/L;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public static b(Lt/L;Lt/L;Lt/L;Lt/L;)F
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lt/L;->a(Lt/L;Lt/L;Lt/L;ZLt/L;)V

    invoke-virtual {p2, p3}, Lt/L;->d(Lt/L;)F

    move-result v0

    return v0
.end method

.method public static b(II)Lt/L;
    .registers 8

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lt/L;->a(DD)Lt/L;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/io/DataInput;Lt/af;[II)V
    .registers 9

    mul-int/lit8 v0, p3, 0x3

    iget v1, p1, Lt/af;->c:I

    if-gez v1, :cond_2c

    iget v1, p1, Lt/af;->c:I

    neg-int v1, v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lt/af;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lt/af;->b:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shr-int v1, v2, v1

    aput v1, p2, v0

    :goto_2b
    return-void

    :cond_2c
    iget v1, p1, Lt/af;->c:I

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lt/af;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lt/af;->b:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shl-int v1, v2, v1

    aput v1, p2, v0

    goto :goto_2b
.end method

.method public static b(Lt/L;FLt/L;)V
    .registers 5

    invoke-virtual {p0}, Lt/L;->i()F

    move-result v0

    iget v1, p0, Lt/L;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lt/L;->a:I

    iget v1, p0, Lt/L;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lt/L;->b:I

    iget v1, p0, Lt/L;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p2, Lt/L;->c:I

    return-void
.end method

.method public static b(Lt/L;Lt/L;Lt/L;)V
    .registers 5

    iget v0, p0, Lt/L;->a:I

    iget v1, p1, Lt/L;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Lt/L;->a:I

    iget v0, p0, Lt/L;->b:I

    iget v1, p1, Lt/L;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, Lt/L;->b:I

    iget v0, p0, Lt/L;->c:I

    iget v1, p1, Lt/L;->c:I

    sub-int/2addr v0, v1

    iput v0, p2, Lt/L;->c:I

    return-void
.end method

.method public static c(II)Lt/L;
    .registers 8

    const-wide v4, 0x3ee4f8b588e368f1L

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lt/L;->a(DD)Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lt/L;Lt/L;Lt/L;)V
    .registers 20

    move-object/from16 v0, p0

    iget v1, v0, Lt/L;->a:I

    int-to-long v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lt/L;->b:I

    int-to-long v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lt/L;->c:I

    int-to-long v5, v5

    move-object/from16 v0, p1

    iget v7, v0, Lt/L;->a:I

    int-to-long v7, v7

    move-object/from16 v0, p1

    iget v9, v0, Lt/L;->b:I

    int-to-long v9, v9

    move-object/from16 v0, p1

    iget v11, v0, Lt/L;->c:I

    int-to-long v11, v11

    mul-long v13, v3, v11

    mul-long v15, v5, v9

    sub-long/2addr v13, v15

    long-to-int v13, v13

    move-object/from16 v0, p2

    iput v13, v0, Lt/L;->a:I

    mul-long/2addr v5, v7

    mul-long/2addr v11, v1

    sub-long/2addr v5, v11

    long-to-int v5, v5

    move-object/from16 v0, p2

    iput v5, v0, Lt/L;->b:I

    mul-long/2addr v1, v9

    mul-long/2addr v3, v7

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p2

    iput v1, v0, Lt/L;->c:I

    return-void
.end method

.method public static d(Lt/L;Lt/L;Lt/L;)F
    .registers 10

    iget v0, p1, Lt/L;->a:I

    iget v1, p0, Lt/L;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Lt/L;->b:I

    iget v2, p0, Lt/L;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Lt/L;->c:I

    iget v3, p0, Lt/L;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p2, Lt/L;->a:I

    iget v4, p0, Lt/L;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p2, Lt/L;->b:I

    iget v5, p0, Lt/L;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p2, Lt/L;->c:I

    iget v6, p0, Lt/L;->c:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v5

    add-float/2addr v3, v4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    div-float v0, v3, v0

    return v0
.end method

.method public static f(II)Z
    .registers 4

    const/high16 v1, 0x2000

    const/high16 v0, -0x2000

    if-lt p0, v0, :cond_c

    if-ge p0, v1, :cond_c

    if-lt p1, v0, :cond_c

    if-lt p1, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a()I
    .registers 5

    invoke-virtual {p0}, Lt/L;->b()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public a(Lt/L;F)Lt/L;
    .registers 4

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lt/L;->a(Lt/L;Lt/L;FLt/L;)V

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lt/L;->a:I

    return-void
.end method

.method public a(III)V
    .registers 4

    iput p1, p0, Lt/L;->a:I

    iput p2, p0, Lt/L;->b:I

    iput p3, p0, Lt/L;->c:I

    return-void
.end method

.method public a(I[II)V
    .registers 10

    const/16 v5, 0x10

    iget v0, p0, Lt/L;->a:I

    int-to-long v0, v0

    shl-long/2addr v0, v5

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lt/L;->b:I

    int-to-long v1, v1

    shl-long/2addr v1, v5

    int-to-long v3, p1

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, Lt/L;->c:I

    int-to-long v2, v2

    shl-long/2addr v2, v5

    int-to-long v4, p1

    div-long/2addr v2, v4

    long-to-int v2, v2

    aput v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    aput v2, p2, v0

    return-void
.end method

.method public a([II)V
    .registers 6

    mul-int/lit8 v0, p2, 0x3

    iget v1, p0, Lt/L;->a:I

    aput v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lt/L;->b:I

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lt/L;->c:I

    aput v1, p1, v0

    return-void
.end method

.method public b()D
    .registers 7

    iget v0, p0, Lt/L;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v4, 0x3fe921fb54442d18L

    sub-double/2addr v0, v4

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public b(DD)V
    .registers 13

    const-wide v6, 0x41a45f306dc9c883L

    const-wide v2, 0x3f91df46a2529d39L

    mul-double v0, p1, v2

    mul-double/2addr v2, p3

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v0, v4

    const-wide v4, 0x3fe921fb54442d18L

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lt/L;->d(II)V

    return-void
.end method

.method public b(FF)V
    .registers 9

    const v0, 0x40490fdb

    mul-float/2addr v0, p1

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    float-to-double v1, p2

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    float-to-double v2, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p0, v1, v0}, Lt/L;->d(II)V

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lt/L;->b:I

    return-void
.end method

.method public b(Lt/L;)V
    .registers 3

    iget v0, p1, Lt/L;->a:I

    iput v0, p0, Lt/L;->a:I

    iget v0, p1, Lt/L;->b:I

    iput v0, p0, Lt/L;->b:I

    iget v0, p1, Lt/L;->c:I

    iput v0, p0, Lt/L;->c:I

    return-void
.end method

.method public c(Lt/L;)F
    .registers 6

    iget v0, p0, Lt/L;->a:I

    iget v1, p1, Lt/L;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lt/L;->b:I

    iget v2, p1, Lt/L;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lt/L;->c:I

    iget v3, p1, Lt/L;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public c()I
    .registers 5

    invoke-virtual {p0}, Lt/L;->d()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lt/L;->c:I

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lt/L;

    invoke-virtual {p0, p1}, Lt/L;->k(Lt/L;)I

    move-result v0

    return v0
.end method

.method public d()D
    .registers 7

    const-wide v4, 0x4076800000000000L

    iget v0, p0, Lt/L;->a:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    :goto_14
    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1f

    sub-double/2addr v0, v4

    goto :goto_14

    :cond_1f
    :goto_1f
    const-wide v2, -0x3f99800000000000L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2a

    add-double/2addr v0, v4

    goto :goto_1f

    :cond_2a
    return-wide v0
.end method

.method public d(Lt/L;)F
    .registers 6

    iget v0, p0, Lt/L;->a:I

    iget v1, p1, Lt/L;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lt/L;->b:I

    iget v2, p1, Lt/L;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lt/L;->c:I

    iget v3, p1, Lt/L;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public d(II)V
    .registers 4

    iput p1, p0, Lt/L;->a:I

    iput p2, p0, Lt/L;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lt/L;->c:I

    return-void
.end method

.method public e()D
    .registers 3

    invoke-virtual {p0}, Lt/L;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Lt/L;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public e(Lt/L;)Lt/L;
    .registers 7

    new-instance v0, Lt/L;

    iget v1, p0, Lt/L;->a:I

    iget v2, p1, Lt/L;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lt/L;->b:I

    iget v3, p1, Lt/L;->b:I

    add-int/2addr v2, v3

    iget v3, p0, Lt/L;->c:I

    iget v4, p1, Lt/L;->c:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lt/L;-><init>(III)V

    return-object v0
.end method

.method public e(II)V
    .registers 9

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    int-to-double v0, p1

    mul-double/2addr v0, v4

    int-to-double v2, p2

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lt/L;->b(DD)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lt/L;

    if-eqz v1, :cond_1a

    check-cast p1, Lt/L;

    iget v1, p0, Lt/L;->a:I

    iget v2, p1, Lt/L;->a:I

    if-ne v1, v2, :cond_1a

    iget v1, p0, Lt/L;->b:I

    iget v2, p1, Lt/L;->b:I

    if-ne v1, v2, :cond_1a

    iget v1, p0, Lt/L;->c:I

    iget v2, p1, Lt/L;->c:I

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lt/L;->a:I

    return v0
.end method

.method public f(Lt/L;)Lt/L;
    .registers 7

    new-instance v0, Lt/L;

    iget v1, p0, Lt/L;->a:I

    iget v2, p1, Lt/L;->a:I

    sub-int/2addr v1, v2

    iget v2, p0, Lt/L;->b:I

    iget v3, p1, Lt/L;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Lt/L;->c:I

    iget v4, p1, Lt/L;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lt/L;-><init>(III)V

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lt/L;->b:I

    return v0
.end method

.method public g(Lt/L;)Lt/L;
    .registers 3

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    invoke-static {p0, p1, v0}, Lt/L;->c(Lt/L;Lt/L;Lt/L;)V

    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lt/L;->c:I

    return v0
.end method

.method public h(Lt/L;)V
    .registers 6

    const/high16 v3, 0x4000

    const/high16 v2, 0x2000

    const/high16 v1, -0x2000

    iget v0, p0, Lt/L;->a:I

    iput v0, p1, Lt/L;->a:I

    iget v0, p0, Lt/L;->c:I

    iput v0, p1, Lt/L;->c:I

    :goto_e
    iget v0, p1, Lt/L;->a:I

    if-ge v0, v1, :cond_18

    iget v0, p1, Lt/L;->a:I

    add-int/2addr v0, v3

    iput v0, p1, Lt/L;->a:I

    goto :goto_e

    :cond_18
    :goto_18
    iget v0, p1, Lt/L;->a:I

    if-lt v0, v2, :cond_22

    iget v0, p1, Lt/L;->a:I

    sub-int/2addr v0, v3

    iput v0, p1, Lt/L;->a:I

    goto :goto_18

    :cond_22
    iget v0, p0, Lt/L;->b:I

    if-ge v0, v1, :cond_29

    iput v1, p1, Lt/L;->b:I

    :goto_28
    return-void

    :cond_29
    iget v0, p0, Lt/L;->b:I

    if-lt v0, v2, :cond_33

    const v0, 0x1fffffff

    iput v0, p1, Lt/L;->b:I

    goto :goto_28

    :cond_33
    iget v0, p0, Lt/L;->b:I

    iput v0, p1, Lt/L;->b:I

    goto :goto_28
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Lt/L;->a:I

    iget v1, p0, Lt/L;->b:I

    iget v2, p0, Lt/L;->c:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xd

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x8

    xor-int/2addr v1, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0xd

    xor-int/2addr v2, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xc

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x10

    xor-int/2addr v1, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0x3

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0xa

    xor-int/2addr v1, v3

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    shr-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()F
    .registers 5

    iget v0, p0, Lt/L;->a:I

    int-to-float v0, v0

    iget v1, p0, Lt/L;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lt/L;->b:I

    int-to-float v1, v1

    iget v2, p0, Lt/L;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lt/L;->c:I

    int-to-float v2, v2

    iget v3, p0, Lt/L;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public i(Lt/L;)V
    .registers 5

    const/high16 v2, 0x4000

    iget v0, p0, Lt/L;->a:I

    iput v0, p1, Lt/L;->a:I

    iget v0, p0, Lt/L;->b:I

    iput v0, p1, Lt/L;->b:I

    iget v0, p0, Lt/L;->c:I

    iput v0, p1, Lt/L;->c:I

    :goto_e
    iget v0, p1, Lt/L;->a:I

    const/high16 v1, -0x2000

    if-ge v0, v1, :cond_1a

    iget v0, p1, Lt/L;->a:I

    add-int/2addr v0, v2

    iput v0, p1, Lt/L;->a:I

    goto :goto_e

    :cond_1a
    :goto_1a
    iget v0, p1, Lt/L;->a:I

    const/high16 v1, 0x2000

    if-lt v0, v1, :cond_26

    iget v0, p1, Lt/L;->a:I

    sub-int/2addr v0, v2

    iput v0, p1, Lt/L;->a:I

    goto :goto_1a

    :cond_26
    return-void
.end method

.method public j(Lt/L;)V
    .registers 6

    const/high16 v3, 0x2000

    const v2, 0x1fffffff

    const/high16 v1, -0x2000

    iget v0, p0, Lt/L;->a:I

    if-ge v0, v1, :cond_18

    iput v1, p1, Lt/L;->a:I

    :goto_d
    iget v0, p0, Lt/L;->b:I

    if-ge v0, v1, :cond_24

    iput v1, p1, Lt/L;->b:I

    :goto_13
    iget v0, p0, Lt/L;->c:I

    iput v0, p1, Lt/L;->c:I

    return-void

    :cond_18
    iget v0, p0, Lt/L;->a:I

    if-lt v0, v3, :cond_1f

    iput v2, p1, Lt/L;->a:I

    goto :goto_d

    :cond_1f
    iget v0, p0, Lt/L;->a:I

    iput v0, p1, Lt/L;->a:I

    goto :goto_d

    :cond_24
    iget v0, p0, Lt/L;->b:I

    if-lt v0, v3, :cond_2b

    iput v2, p1, Lt/L;->b:I

    goto :goto_13

    :cond_2b
    iget v0, p0, Lt/L;->b:I

    iput v0, p1, Lt/L;->b:I

    goto :goto_13
.end method

.method public j()Z
    .registers 3

    iget v0, p0, Lt/L;->a:I

    iget v1, p0, Lt/L;->b:I

    invoke-static {v0, v1}, Lt/L;->f(II)Z

    move-result v0

    return v0
.end method

.method public k(Lt/L;)I
    .registers 4

    iget v0, p0, Lt/L;->a:I

    iget v1, p1, Lt/L;->a:I

    if-ne v0, v1, :cond_18

    iget v0, p0, Lt/L;->b:I

    iget v1, p1, Lt/L;->b:I

    if-ne v0, v1, :cond_12

    iget v0, p0, Lt/L;->c:I

    iget v1, p1, Lt/L;->c:I

    sub-int/2addr v0, v1

    :goto_11
    return v0

    :cond_12
    iget v0, p0, Lt/L;->b:I

    iget v1, p1, Lt/L;->b:I

    sub-int/2addr v0, v1

    goto :goto_11

    :cond_18
    iget v0, p0, Lt/L;->a:I

    iget v1, p1, Lt/L;->a:I

    sub-int/2addr v0, v1

    goto :goto_11
.end method

.method public k()Ljava/lang/String;
    .registers 7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%f,%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lt/L;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lt/L;->d()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/L;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/L;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/L;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
