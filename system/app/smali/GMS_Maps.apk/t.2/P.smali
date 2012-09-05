.class public final Lt/P;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private volatile b:Lt/V;

.field private volatile c:F


# direct methods
.method private constructor <init>([I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/P;->a:[I

    const/high16 v0, -0x4080

    iput v0, p0, Lt/P;->c:F

    return-void
.end method

.method synthetic constructor <init>([ILt/Q;)V
    .registers 3

    invoke-direct {p0, p1}, Lt/P;-><init>([I)V

    return-void
.end method

.method private a(FIIILt/L;Lt/L;Lt/L;Lt/L;[Z)I
    .registers 25

    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lt/P;->a(ILt/L;)V

    move/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {p0, v0, v1}, Lt/P;->a(ILt/L;)V

    const/4 v8, -0x1

    add-int v6, p3, p2

    move/from16 v5, p1

    :goto_13
    add-int/lit8 v4, p4, -0x1

    if-gt v6, v4, :cond_31

    move-object/from16 v0, p8

    invoke-virtual {p0, v6, v0}, Lt/P;->a(ILt/L;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lt/L;->b(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v4

    cmpl-float v7, v4, v5

    if-lez v7, :cond_6e

    move v8, v6

    :goto_2d
    add-int v6, v6, p2

    move v5, v4

    goto :goto_13

    :cond_31
    const/4 v4, 0x0

    if-ltz v8, :cond_6d

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, p9, v8

    add-int/lit8 v5, p3, 0x1

    if-le v8, v5, :cond_53

    move-object v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lt/P;->a(FIIILt/L;Lt/L;Lt/L;Lt/L;[Z)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :cond_53
    add-int/lit8 v5, p4, -0x1

    if-ge v8, v5, :cond_6d

    move-object v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lt/P;->a(FIIILt/L;Lt/L;Lt/L;Lt/L;[Z)I

    move-result v5

    add-int/2addr v4, v5

    :cond_6d
    return v4

    :cond_6e
    move v4, v5

    goto :goto_2d
.end method

.method public static a(Ljava/io/DataInput;Lt/af;)Lt/P;
    .registers 5

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v1

    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_11

    invoke-static {p0, p1, v2, v0}, Lt/L;->a(Ljava/io/DataInput;Lt/af;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_11
    new-instance v0, Lt/P;

    invoke-direct {v0, v2}, Lt/P;-><init>([I)V

    return-object v0
.end method

.method public static a(Lt/L;Lt/L;)Lt/P;
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lt/L;->a([II)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lt/L;->a([II)V

    new-instance v1, Lt/P;

    invoke-direct {v1, v0}, Lt/P;-><init>([I)V

    return-object v1
.end method

.method public static a([I)Lt/P;
    .registers 2

    new-instance v0, Lt/P;

    invoke-direct {v0, p0}, Lt/P;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public a(F)Lt/L;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_b

    invoke-virtual {p0, v0}, Lt/P;->a(I)Lt/L;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_16

    invoke-virtual {p0}, Lt/P;->c()Lt/L;

    move-result-object v0

    goto :goto_a

    :cond_16
    invoke-virtual {p0}, Lt/P;->d()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lt/P;->b()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_24
    if-ge v1, v3, :cond_4d

    invoke-virtual {p0, v1}, Lt/P;->b(I)F

    move-result v2

    cmpl-float v4, v2, v0

    if-ltz v4, :cond_46

    div-float v2, v0, v2

    new-instance v3, Lt/L;

    invoke-direct {v3}, Lt/L;-><init>()V

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    invoke-virtual {p0, v1, v3}, Lt/P;->a(ILt/L;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lt/P;->a(ILt/L;)V

    invoke-static {v3, v0, v2, v0}, Lt/L;->a(Lt/L;Lt/L;FLt/L;)V

    goto :goto_a

    :cond_46
    sub-float v2, v0, v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_24

    :cond_4d
    invoke-virtual {p0}, Lt/P;->c()Lt/L;

    move-result-object v0

    goto :goto_a
.end method

.method public a(I)Lt/L;
    .registers 7

    mul-int/lit8 v0, p1, 0x3

    new-instance v1, Lt/L;

    iget-object v2, p0, Lt/P;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lt/P;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lt/P;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lt/L;-><init>(III)V

    return-object v1
.end method

.method public a()Lt/V;
    .registers 4

    iget-object v0, p0, Lt/P;->b:Lt/V;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lt/P;->b()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_14

    invoke-static {p0}, Lt/V;->a(Lt/P;)Lt/V;

    move-result-object v0

    iput-object v0, p0, Lt/P;->b:Lt/V;

    :cond_11
    :goto_11
    iget-object v0, p0, Lt/P;->b:Lt/V;

    return-object v0

    :cond_14
    new-instance v0, Lt/V;

    new-instance v1, Lt/L;

    invoke-direct {v1}, Lt/L;-><init>()V

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    invoke-direct {v0, v1, v2}, Lt/V;-><init>(Lt/L;Lt/L;)V

    iput-object v0, p0, Lt/P;->b:Lt/V;

    goto :goto_11
.end method

.method public a(ILt/L;)V
    .registers 6

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lt/P;->a:[I

    aget v1, v1, v0

    iput v1, p2, Lt/L;->a:I

    iget-object v1, p0, Lt/P;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p2, Lt/L;->b:I

    iget-object v1, p0, Lt/P;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p2, Lt/L;->c:I

    return-void
.end method

.method public a(ILt/L;Lt/L;)V
    .registers 7

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lt/P;->a:[I

    aget v1, v1, v0

    iget v2, p2, Lt/L;->a:I

    sub-int/2addr v1, v2

    iput v1, p3, Lt/L;->a:I

    iget-object v1, p0, Lt/P;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget v2, p2, Lt/L;->b:I

    sub-int/2addr v1, v2

    iput v1, p3, Lt/L;->b:I

    iget-object v1, p0, Lt/P;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iget v1, p2, Lt/L;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, Lt/L;->c:I

    return-void
.end method

.method public a(Lt/L;)V
    .registers 5

    iget-object v0, p0, Lt/P;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    iget-object v1, p0, Lt/P;->a:[I

    aget v1, v1, v0

    iput v1, p1, Lt/L;->a:I

    iget-object v1, p0, Lt/P;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p1, Lt/L;->b:I

    iget-object v1, p0, Lt/P;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p1, Lt/L;->c:I

    return-void
.end method

.method public a(FI)[Z
    .registers 13

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lt/P;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v9, v0, [Z

    array-length v1, v9

    const/4 v2, 0x2

    if-gt v1, v2, :cond_15

    :goto_d
    array-length v0, v9

    if-ge v3, v0, :cond_38

    aput-boolean v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_15
    aput-boolean v4, v9, v3

    add-int/lit8 v1, v0, -0x1

    aput-boolean v4, v9, v1

    mul-float v1, p1, p1

    add-int/lit8 v4, v0, -0x1

    new-instance v5, Lt/L;

    invoke-direct {v5}, Lt/L;-><init>()V

    new-instance v6, Lt/L;

    invoke-direct {v6}, Lt/L;-><init>()V

    new-instance v7, Lt/L;

    invoke-direct {v7}, Lt/L;-><init>()V

    new-instance v8, Lt/L;

    invoke-direct {v8}, Lt/L;-><init>()V

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v9}, Lt/P;->a(FIIILt/L;Lt/L;Lt/L;Lt/L;[Z)I

    :cond_38
    return-object v9
.end method

.method public b(I)F
    .registers 8

    mul-int/lit8 v0, p1, 0x3

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lt/P;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iget-object v2, p0, Lt/P;->a:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lt/P;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Lt/P;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lt/P;->a:[I

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    iget-object v3, p0, Lt/P;->a:[I

    add-int/lit8 v4, v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lt/P;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public b(F)Lt/P;
    .registers 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lt/P;->a:[I

    array-length v0, v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_9

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    iget-object v0, p0, Lt/P;->a:[I

    array-length v0, v0

    div-int/lit8 v10, v0, 0x3

    new-array v9, v10, [Z

    aput-boolean v2, v9, v3

    add-int/lit8 v0, v10, -0x1

    aput-boolean v2, v9, v0

    mul-float v1, p1, p1

    add-int/lit8 v4, v10, -0x1

    new-instance v5, Lt/L;

    invoke-direct {v5}, Lt/L;-><init>()V

    new-instance v6, Lt/L;

    invoke-direct {v6}, Lt/L;-><init>()V

    new-instance v7, Lt/L;

    invoke-direct {v7}, Lt/L;-><init>()V

    new-instance v8, Lt/L;

    invoke-direct {v8}, Lt/L;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lt/P;->a(FIIILt/L;Lt/L;Lt/L;Lt/L;[Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-eq v0, v10, :cond_8

    mul-int/lit8 v0, v0, 0x3

    new-array v1, v0, [I

    move v0, v3

    :goto_3c
    if-ge v3, v10, :cond_65

    aget-boolean v2, v9, v3

    if-eqz v2, :cond_62

    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lt/P;->a:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v1, v0

    add-int/lit8 v2, v4, 0x1

    iget-object v0, p0, Lt/P;->a:[I

    add-int/lit8 v5, v6, 0x1

    aget v0, v0, v6

    aput v0, v1, v4

    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lt/P;->a:[I

    add-int/lit8 v6, v5, 0x1

    aget v4, v4, v5

    aput v4, v1, v2

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_65
    new-instance p0, Lt/P;

    invoke-direct {p0, v1}, Lt/P;-><init>([I)V

    goto :goto_8
.end method

.method public c(I)F
    .registers 6

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lt/P;->a:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lt/P;->a:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    iget-object v2, p0, Lt/P;->a:[I

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lt/P;->a:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Lt/N;->a(II)F

    move-result v0

    return v0
.end method

.method public c()Lt/L;
    .registers 6

    iget-object v0, p0, Lt/P;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    new-instance v1, Lt/L;

    iget-object v2, p0, Lt/P;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lt/P;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lt/P;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lt/L;-><init>(III)V

    return-object v1
.end method

.method public c(F)Lt/P;
    .registers 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lt/P;->a:[I

    array-length v2, v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_d

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_e

    :cond_d
    :goto_d
    return-object p0

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lt/P;->e()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lt/P;->b()I

    move-result v9

    if-eqz v8, :cond_88

    const/4 v2, 0x0

    :goto_19
    add-int/lit8 v10, v9, -0x1

    new-instance v11, Lt/R;

    invoke-direct {v11, v9}, Lt/R;-><init>(I)V

    const-wide/16 v3, 0x0

    new-instance v12, Lt/L;

    move-object/from16 v0, p0

    iget-object v5, v0, Lt/P;->a:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lt/P;->a:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x0

    invoke-direct {v12, v5, v6, v7}, Lt/L;-><init>(III)V

    new-instance v13, Lt/L;

    invoke-direct {v13}, Lt/L;-><init>()V

    new-instance v14, Lt/L;

    invoke-direct {v14}, Lt/L;-><init>()V

    move v7, v2

    :goto_41
    if-ge v7, v10, :cond_d9

    add-int/lit8 v5, v7, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lt/P;->a:[I

    mul-int/lit8 v15, v7, 0x3

    aget v6, v6, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lt/P;->a:[I

    mul-int/lit8 v16, v7, 0x3

    add-int/lit8 v16, v16, 0x1

    aget v15, v15, v16

    invoke-virtual {v13, v6, v15}, Lt/L;->d(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lt/P;->a:[I

    mul-int/lit8 v15, v5, 0x3

    aget v6, v6, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lt/P;->a:[I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v5, v15, v5

    invoke-virtual {v14, v6, v5}, Lt/L;->d(II)V

    invoke-virtual {v12, v13}, Lt/L;->c(Lt/L;)F

    move-result v15

    invoke-virtual {v14, v13}, Lt/L;->c(Lt/L;)F

    move-result v5

    add-float/2addr v5, v15

    float-to-double v5, v5

    cmpl-float v15, v15, p1

    if-lez v15, :cond_8a

    invoke-virtual {v11, v12}, Lt/R;->a(Lt/L;)Z

    invoke-virtual {v12, v13}, Lt/L;->b(Lt/L;)V

    move-wide v3, v5

    :goto_84
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_41

    :cond_88
    const/4 v2, 0x1

    goto :goto_19

    :cond_8a
    if-nez v8, :cond_93

    if-ne v7, v2, :cond_93

    invoke-virtual {v11, v12}, Lt/R;->a(Lt/L;)Z

    const-wide/16 v3, 0x0

    :cond_93
    iget v15, v12, Lt/L;->a:I

    int-to-double v15, v15

    mul-double/2addr v15, v3

    iget v0, v13, Lt/L;->a:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v5

    add-double v15, v15, v17

    add-double v17, v3, v5

    div-double v15, v15, v17

    iget v0, v12, Lt/L;->b:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v3

    iget v0, v13, Lt/L;->b:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v19, v19, v5

    add-double v17, v17, v19

    add-double v19, v3, v5

    div-double v17, v17, v19

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    long-to-int v15, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lt/L;->d(II)V

    add-double/2addr v3, v5

    goto :goto_84

    :cond_d9
    invoke-virtual {v12}, Lt/L;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v12}, Lt/L;->g()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lt/R;->a(II)Z

    if-eqz v8, :cond_104

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lt/R;->a(I)Lt/L;

    move-result-object v2

    invoke-virtual {v11, v2}, Lt/R;->a(Lt/L;)Z

    :goto_f8
    invoke-virtual {v11}, Lt/R;->a()I

    move-result v2

    if-eq v2, v9, :cond_d

    invoke-virtual {v11}, Lt/R;->d()Lt/P;

    move-result-object p0

    goto/16 :goto_d

    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lt/P;->a:[I

    mul-int/lit8 v3, v10, 0x3

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lt/P;->a:[I

    mul-int/lit8 v4, v10, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v11, v2, v3}, Lt/R;->a(II)Z

    goto :goto_f8
.end method

.method public d()F
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Lt/P;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    invoke-virtual {p0}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_18

    invoke-virtual {p0, v0}, Lt/P;->b(I)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_18
    iput v1, p0, Lt/P;->c:F

    :cond_1a
    iget v0, p0, Lt/P;->c:F

    return v0
.end method

.method public e()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lt/P;->a:[I

    array-length v2, v2

    if-lez v2, :cond_32

    iget-object v2, p0, Lt/P;->a:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    iget-object v3, p0, Lt/P;->a:[I

    aget v3, v3, v1

    iget-object v4, p0, Lt/P;->a:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Lt/P;->a:[I

    aget v3, v3, v0

    iget-object v4, p0, Lt/P;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Lt/P;->a:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lt/P;->a:[I

    add-int/lit8 v2, v2, 0x2

    aget v2, v4, v2

    if-ne v3, v2, :cond_30

    :goto_2f
    return v0

    :cond_30
    move v0, v1

    goto :goto_2f

    :cond_32
    move v0, v1

    goto :goto_2f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lt/P;

    if-eqz v0, :cond_13

    check-cast p1, Lt/P;

    iget-object v0, p0, Lt/P;->a:[I

    iget-object v1, p1, Lt/P;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_3

    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()Lt/P;
    .registers 7

    iget-object v0, p0, Lt/P;->a:[I

    array-length v1, v0

    new-array v2, v1, [I

    iget-object v3, p0, Lt/P;->a:[I

    const/4 v0, 0x0

    :goto_8
    iget-object v4, p0, Lt/P;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2c

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x3

    aget v4, v3, v4

    aput v4, v2, v0

    add-int/lit8 v4, v0, 0x1

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x2

    aget v5, v3, v5

    aput v5, v2, v4

    add-int/lit8 v4, v0, 0x2

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    aput v5, v2, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_8

    :cond_2c
    new-instance v0, Lt/P;

    invoke-direct {v0, v2}, Lt/P;-><init>([I)V

    return-object v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lt/P;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0xa0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lt/P;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
