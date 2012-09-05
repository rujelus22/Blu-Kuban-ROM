.class public Lcom/google/android/maps/driveabout/app/cY;
.super Lcom/google/android/maps/driveabout/app/m;


# static fields
.field private static final d:F

.field static final e:Lcom/google/android/maps/driveabout/app/cZ;

.field private static final l:F

.field private static final m:F


# instance fields
.field protected f:I

.field protected g:Lcom/google/android/maps/driveabout/app/cZ;

.field protected h:Lcom/google/android/maps/driveabout/app/cZ;

.field protected i:Lcom/google/android/maps/driveabout/app/cZ;

.field protected j:Lcom/google/android/maps/driveabout/app/cZ;

.field protected k:Lcom/google/android/maps/driveabout/app/cZ;

.field private n:F

.field private final o:Lx/ap;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-wide/16 v4, 0x0

    const-wide v0, 0x408f400000000000L

    invoke-static {v4, v5}, Lt/L;->a(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/cY;->d:F

    const-wide v0, 0x40a7700000000000L

    invoke-static {v4, v5}, Lt/L;->a(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/cY;->l:F

    new-instance v0, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v1, 0x418e

    const/high16 v2, 0x4220

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/cY;->e:Lcom/google/android/maps/driveabout/app/cZ;

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/cY;->m:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lx/ap;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/m;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cY;->f:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cY;->n:F

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cY;->g:Lcom/google/android/maps/driveabout/app/cZ;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cY;->h:Lcom/google/android/maps/driveabout/app/cZ;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cY;->j:Lcom/google/android/maps/driveabout/app/cZ;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/cY;->i:Lcom/google/android/maps/driveabout/app/cZ;

    sget-object v0, Lcom/google/android/maps/driveabout/app/cY;->e:Lcom/google/android/maps/driveabout/app/cZ;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->k:Lcom/google/android/maps/driveabout/app/cZ;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/cY;->o:Lx/ap;

    return-void
.end method

.method private a(F)F
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->h:Lcom/google/android/maps/driveabout/app/cZ;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cZ;->a:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->h:Lcom/google/android/maps/driveabout/app/cZ;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cZ;->b:F

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->g:Lcom/google/android/maps/driveabout/app/cZ;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cZ;->a:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->g:Lcom/google/android/maps/driveabout/app/cZ;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cZ;->b:F

    goto :goto_c

    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->j:Lcom/google/android/maps/driveabout/app/cZ;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cZ;->b:F

    goto :goto_c
.end method

.method private a(Lt/L;Lt/n;IILt/L;)F
    .registers 12

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v2

    aget v0, v2, v3

    if-gez v0, :cond_34

    invoke-virtual {p2}, Lt/n;->d()Lt/L;

    move-result-object v0

    invoke-virtual {p2}, Lt/n;->g()Lt/L;

    move-result-object v3

    invoke-static {v0, v3, p5, p1}, Lt/N;->a(Lt/L;Lt/L;Lt/L;Lt/L;)D

    move-result-wide v3

    double-to-float v0, v3

    div-float v0, v1, v0

    :goto_1d
    aget v3, v2, v5

    if-gez v3, :cond_48

    invoke-virtual {p2}, Lt/n;->f()Lt/L;

    move-result-object v2

    invoke-virtual {p2}, Lt/n;->g()Lt/L;

    move-result-object v3

    invoke-static {v2, v3, p5, p1}, Lt/N;->a(Lt/L;Lt/L;Lt/L;Lt/L;)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_33
    :goto_33
    return v0

    :cond_34
    aget v0, v2, v3

    if-le v0, p3, :cond_5f

    invoke-virtual {p2}, Lt/n;->e()Lt/L;

    move-result-object v0

    invoke-virtual {p2}, Lt/n;->f()Lt/L;

    move-result-object v3

    invoke-static {v0, v3, p5, p1}, Lt/N;->a(Lt/L;Lt/L;Lt/L;Lt/L;)D

    move-result-wide v3

    double-to-float v0, v3

    div-float v0, v1, v0

    goto :goto_1d

    :cond_48
    aget v2, v2, v5

    if-le v2, p4, :cond_33

    invoke-virtual {p2}, Lt/n;->e()Lt/L;

    move-result-object v2

    invoke-virtual {p2}, Lt/n;->d()Lt/L;

    move-result-object v3

    invoke-static {v2, v3, p5, p1}, Lt/N;->a(Lt/L;Lt/L;Lt/L;Lt/L;)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_33

    :cond_5f
    move v0, v1

    goto :goto_1d
.end method

.method private a(ILt/L;FF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 11

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cY;->c(I)Lcom/google/android/maps/driveabout/app/cZ;

    move-result-object v1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    iget v2, v1, Lcom/google/android/maps/driveabout/app/cZ;->a:F

    iget v3, v1, Lcom/google/android/maps/driveabout/app/cZ;->b:F

    move-object v1, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;FLt/L;IIF)Z
    .registers 14

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cY;->f:I

    if-ne v0, v2, :cond_f

    const/high16 v0, 0x4170

    :goto_9
    cmpg-float v0, p2, v0

    if-gez v0, :cond_12

    move v0, v1

    :goto_e
    return v0

    :cond_f
    const/high16 v0, 0x41a0

    goto :goto_9

    :cond_12
    if-eqz p3, :cond_25

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v0

    invoke-virtual {p3, v0}, Lt/L;->d(Lt/L;)F

    move-result v0

    sget v3, Lcom/google/android/maps/driveabout/app/cY;->l:F

    sget v4, Lcom/google/android/maps/driveabout/app/cY;->l:F

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_27

    :cond_25
    move v0, v2

    goto :goto_e

    :cond_27
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v4

    invoke-direct {p0, v5, v0, v3, v4}, Lcom/google/android/maps/driveabout/app/cY;->a(ILt/L;FF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {p0, v0, p4, p5, p6}, Lcom/google/android/maps/driveabout/app/cY;->a(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    const v0, 0x3e4ccccc

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cY;->f:I

    if-ne v3, v5, :cond_42

    const/4 v0, 0x0

    :cond_42
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v3, p3}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v3

    aget v4, v3, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_84

    aget v4, v3, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v0

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_84

    aget v4, v3, v2

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v5

    if-ge v4, v5, :cond_84

    aget v3, v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_84

    move v0, v1

    goto :goto_e

    :cond_84
    move v0, v2

    goto :goto_e
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Lt/L;IIF)Z
    .registers 13

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_16

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v0

    invoke-virtual {p2, v0}, Lt/L;->d(Lt/L;)F

    move-result v0

    sget v3, Lcom/google/android/maps/driveabout/app/cY;->d:F

    sget v4, Lcom/google/android/maps/driveabout/app/cY;->d:F

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_18

    :cond_16
    move v0, v2

    :goto_17
    return v0

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v4

    invoke-direct {p0, v5, v0, v3, v4}, Lcom/google/android/maps/driveabout/app/cY;->a(ILt/L;FF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/google/android/maps/driveabout/app/cY;->a(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    const v0, 0x3e4ccccc

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cY;->f:I

    if-ne v3, v5, :cond_33

    const/4 v0, 0x0

    :cond_33
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v3, p2}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v3

    aget v4, v3, v2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_75

    aget v4, v3, v2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v0

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_75

    aget v4, v3, v1

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v5

    if-ge v4, v5, :cond_75

    aget v3, v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_75

    move v0, v1

    goto :goto_17

    :cond_75
    move v0, v2

    goto :goto_17
.end method

.method private c(I)Lcom/google/android/maps/driveabout/app/cZ;
    .registers 3

    packed-switch p1, :pswitch_data_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->k:Lcom/google/android/maps/driveabout/app/cZ;

    :goto_5
    return-object v0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->j:Lcom/google/android/maps/driveabout/app/cZ;

    goto :goto_5

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->g:Lcom/google/android/maps/driveabout/app/cZ;

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->h:Lcom/google/android/maps/driveabout/app/cZ;

    goto :goto_5

    :pswitch_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->i:Lcom/google/android/maps/driveabout/app/cZ;

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method protected a()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cY;->g:Lcom/google/android/maps/driveabout/app/cZ;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cZ;->a:F

    return v0
.end method

.method protected a(Landroid/location/Location;)F
    .registers 3

    const/high16 v0, 0x4168

    return v0
.end method

.method a(Ls/b;FI)F
    .registers 18

    invoke-virtual {p1}, Ls/b;->h()Lt/X;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lt/X;->f()I

    move-result v1

    const/16 v3, 0x50

    if-ge v1, v3, :cond_13

    :cond_e
    invoke-virtual {p1}, Ls/b;->getBearing()F

    move-result v1

    :goto_12
    return v1

    :cond_13
    invoke-virtual {p1}, Ls/b;->i()Lt/L;

    move-result-object v5

    invoke-virtual {p1}, Ls/b;->getBearing()F

    move-result v6

    const-wide/high16 v3, 0x4000

    const/high16 v1, 0x41f0

    sub-float v1, v1, p2

    float-to-double v7, v1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    move/from16 v0, p3

    int-to-double v7, v0

    mul-double/2addr v3, v7

    const-wide/high16 v7, 0x4070

    div-double/2addr v3, v7

    double-to-float v1, v3

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v3

    invoke-virtual {v3}, Lz/l;->e()I

    move-result v7

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cY;->o:Lx/ap;

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cY;->o:Lx/ap;

    invoke-virtual {p1}, Ls/b;->getBearing()F

    move-result v4

    invoke-virtual {v3, v2, v4, v1, v7}, Lx/ap;->a(Lt/X;FFI)Ljava/util/List;

    move-result-object v1

    :goto_44
    new-instance v8, Lt/L;

    invoke-direct {v8}, Lt/L;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/X;

    invoke-virtual {v1}, Lt/X;->b()Lt/P;

    move-result-object v10

    const/4 v1, 0x0

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v13

    :goto_64
    invoke-virtual {v10}, Lt/P;->b()I

    move-result v4

    if-ge v3, v4, :cond_be

    invoke-virtual {v10, v3, v8}, Lt/P;->a(ILt/L;)V

    invoke-virtual {v8, v5}, Lt/L;->d(Lt/L;)F

    move-result v4

    mul-int v11, v7, v7

    int-to-float v11, v11

    cmpg-float v4, v4, v11

    if-gez v4, :cond_8e

    move v4, v2

    move v2, v1

    :goto_7a
    invoke-virtual {v10}, Lt/P;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, v3

    move v3, v1

    move v1, v2

    move v2, v4

    goto :goto_64

    :cond_85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_8e
    invoke-static {v5, v8}, Lt/L;->a(Lt/L;Lt/L;)D

    move-result-wide v11

    double-to-float v4, v11

    invoke-static {v6, v4}, Lt/N;->b(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x42b4

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a4

    move v4, v2

    move v2, v1

    goto :goto_7a

    :cond_a4
    const/high16 v11, -0x3d90

    const/high16 v12, 0x4270

    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    cmpg-float v11, v4, v1

    if-gez v11, :cond_b8

    move v13, v4

    move v4, v2

    move v2, v13

    goto :goto_7a

    :cond_b8
    cmpl-float v11, v4, v2

    if-lez v11, :cond_c9

    move v2, v1

    goto :goto_7a

    :cond_be
    move v3, v2

    move v2, v1

    goto :goto_4f

    :cond_c1
    add-float v1, v3, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v1, v6

    goto/16 :goto_12

    :cond_c9
    move v4, v2

    move v2, v1

    goto :goto_7a
.end method

.method a(Lcom/google/android/maps/driveabout/vector/u;Lt/L;FLt/L;IIF)I
    .registers 16

    const/4 v6, 0x3

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cY;->a(Lcom/google/android/maps/driveabout/vector/u;Lt/L;IIF)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v6

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_1b

    const/high16 v0, 0x42c8

    cmpl-float v0, p3, v0

    if-lez v0, :cond_24

    :cond_1b
    iget v0, p0, Lcom/google/android/maps/driveabout/app/cY;->f:I

    if-ne v0, v6, :cond_21

    move v0, v7

    goto :goto_f

    :cond_21
    iget v0, p0, Lcom/google/android/maps/driveabout/app/cY;->f:I

    goto :goto_f

    :cond_24
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/cY;->a(Lcom/google/android/maps/driveabout/vector/u;FLt/L;IIF)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_f

    :cond_33
    move v0, v7

    goto :goto_f
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;F)Lcom/google/android/maps/driveabout/vector/u;
    .registers 9

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cY;->g:Lcom/google/android/maps/driveabout/app/cZ;

    iget v1, v1, Lcom/google/android/maps/driveabout/app/cZ;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2b

    :cond_14
    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cY;->g:Lcom/google/android/maps/driveabout/app/cZ;

    iget v3, v3, Lcom/google/android/maps/driveabout/app/cZ;->b:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    move-object p1, v0

    :cond_2b
    return-object p1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 12

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lt/L;->a(DD)Lt/L;

    move-result-object v1

    const/high16 v0, 0x3f80

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cY;->b:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cY;->c:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float v5, v0, v2

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/cY;->a(Landroid/location/Location;)F

    move-result v2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    const/high16 v3, 0x4220

    check-cast p2, Ls/b;

    invoke-virtual {p0, p2, v2, p4}, Lcom/google/android/maps/driveabout/app/cY;->a(Ls/b;FI)F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;Lcom/google/android/maps/driveabout/vector/bS;Lu/I;FIIF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 24

    const/high16 v1, 0x3f80

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cY;->b:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cY;->c:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move/from16 v0, p7

    int-to-float v3, v0

    div-float/2addr v2, v3

    sub-float v6, v1, v2

    if-eqz p4, :cond_1e

    invoke-virtual/range {p4 .. p4}, Lu/I;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    invoke-virtual/range {p4 .. p4}, Lu/I;->j()Lu/I;

    move-result-object p4

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getSpeed()F

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/cY;->n:F

    :cond_2a
    const/4 v1, 0x0

    cmpl-float v1, p5, v1

    if-ltz v1, :cond_45

    new-instance v1, Lcom/google/android/maps/driveabout/vector/u;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/cY;->a(F)F

    move-result v4

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/maps/driveabout/vector/bS;->b:F

    move/from16 v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    :goto_44
    return-object v1

    :cond_45
    if-nez p4, :cond_6a

    const/4 v11, 0x0

    :goto_48
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    iget v10, p0, Lcom/google/android/maps/driveabout/app/cY;->n:F

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/maps/driveabout/app/cY;->a(Lcom/google/android/maps/driveabout/vector/u;Lt/L;FLt/L;IIF)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/cY;->f:I

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/bS;->b:F

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/google/android/maps/driveabout/app/cY;->a(ILt/L;FF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    goto :goto_44

    :cond_6a
    invoke-virtual/range {p4 .. p4}, Lu/I;->a()Lt/L;

    move-result-object v11

    goto :goto_48
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;Lt/ab;IIF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 21

    if-nez p3, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lt/L;->a(DD)Lt/L;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lt/ab;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lt/ab;->a(I)Lt/L;

    move-result-object v9

    new-instance v3, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cY;->a()F

    move-result v5

    const/high16 v6, 0x4220

    invoke-static {v4, v9}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v7

    const/high16 v8, 0x3f80

    const/high16 v10, 0x4000

    iget v11, p0, Lcom/google/android/maps/driveabout/app/cY;->b:I

    iget v12, p0, Lcom/google/android/maps/driveabout/app/cY;->c:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    div-float/2addr v10, v11

    sub-float/2addr v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cY;->a(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cY;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v5

    invoke-virtual {v5}, Lt/at;->c()Lt/W;

    move-result-object v7

    check-cast v7, Lt/n;

    move-object v5, p0

    move-object v6, v9

    move/from16 v8, p4

    move/from16 v9, p5

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/android/maps/driveabout/app/cY;->a(Lt/L;Lt/n;IILt/L;)F

    move-result v8

    new-instance v6, Lt/L;

    invoke-direct {v6}, Lt/L;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lt/ab;->a()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_b5

    const/4 v5, 0x1

    move v11, v5

    :goto_69
    const/4 v5, 0x0

    move v12, v5

    move v13, v8

    :goto_6c
    invoke-virtual/range {p3 .. p3}, Lt/ab;->a()I

    move-result v5

    if-ge v12, v5, :cond_8a

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v6}, Lt/ab;->a(ILt/L;)V

    move-object v5, p0

    move/from16 v8, p4

    move/from16 v9, p5

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/android/maps/driveabout/app/cY;->a(Lt/L;Lt/n;IILt/L;)F

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int v5, v12, v11

    move v12, v5

    move v13, v8

    goto :goto_6c

    :cond_8a
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v4

    float-to-double v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    double-to-float v5, v5

    sget v6, Lcom/google/android/maps/driveabout/app/cY;->m:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const v5, 0x3ecccccd

    sub-float v5, v4, v5

    new-instance p1, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    goto/16 :goto_2

    :cond_b5
    move v11, v5

    goto :goto_69
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lu/I;Z)Lcom/google/android/maps/driveabout/vector/u;
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p2}, Lu/I;->a()Lt/L;

    move-result-object v0

    if-eqz p3, :cond_11

    const/4 v1, 0x4

    invoke-virtual {p2}, Lu/I;->g()F

    move-result v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/cY;->a(ILt/L;FF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v1, 0x5

    invoke-virtual {p2}, Lu/I;->g()F

    move-result v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/cY;->a(ILt/L;FF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    goto :goto_10
.end method
