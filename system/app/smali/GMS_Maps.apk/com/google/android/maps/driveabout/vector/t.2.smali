.class public Lcom/google/android/maps/driveabout/vector/t;
.super Ljava/lang/Object;


# static fields
.field private static final C:Ljava/util/concurrent/atomic/AtomicLong;

.field static final a:F

.field public static final b:Lcom/google/android/maps/driveabout/vector/u;

.field private static final c:F

.field private static final d:Lt/L;

.field private static final e:F


# instance fields
.field private final A:[F

.field private final B:Lt/L;

.field private volatile D:J

.field private final f:Ljava/lang/Thread;

.field private g:Lcom/google/android/maps/driveabout/vector/u;

.field private h:Lt/L;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:F

.field private p:Lt/L;

.field private q:Lt/L;

.field private r:Lt/L;

.field private s:Lt/at;

.field private t:F

.field private u:[D

.field private v:[F

.field private w:[F

.field private x:[F

.field private y:[F

.field private z:[F


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/t;->c:F

    const/high16 v0, 0x4880

    const-wide v1, 0x3ff4f1a6c638d03fL

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/google/android/maps/driveabout/vector/t;->a:F

    new-instance v0, Lt/L;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v6, v1}, Lt/L;-><init>(III)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/t;->d:Lt/L;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    new-instance v1, Lt/L;

    invoke-direct {v1, v6, v6}, Lt/L;-><init>(II)V

    const/high16 v2, 0x41a0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/u;

    const-wide/high16 v0, 0x3fe0

    const-wide v2, 0x3fd0c152382d7365L

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/t;->e:F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/t;->C:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIFLjava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/u;IIFLjava/lang/Thread;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/maps/driveabout/vector/t;->e:F

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/t;->k:F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->v:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->w:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->y:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->A:[F

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->B:Lt/L;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/t;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/t;->D:J

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/t;->o:F

    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/t;->f:Ljava/lang/Thread;

    const/high16 v0, 0x41f0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/t;->b(F)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/t;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method private A()V
    .registers 8

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->v:[F

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->p()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v2

    invoke-virtual {v2, v1}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v3

    invoke-virtual {v3}, Lt/L;->f()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {v3}, Lt/L;->g()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v3}, Lt/L;->h()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->o()Lt/L;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->v:[F

    invoke-virtual {v6}, Lt/L;->f()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, Lt/L;->g()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, Lt/L;->h()I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/t;->a([FFFFFFF)V

    return-void
.end method

.method private B()V
    .registers 7

    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    int-to-float v2, v2

    const/high16 v3, -0x4100

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    const/16 v1, 0xa

    aput v5, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    const/16 v1, 0xf

    aput v5, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    return-void
.end method

.method private C()V
    .registers 9

    const/16 v2, 0x10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->v:[F

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->A()V

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->w:[F

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->z()V

    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->B()V

    :cond_18
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->y:[F

    new-array v0, v2, [F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/t;->w:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->y:[F

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/t;->v:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->y:[F

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    return-void
.end method

.method private final D()V
    .registers 3

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->f:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on render thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    return-void
.end method

.method static a(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget v1, Lcom/google/android/maps/driveabout/vector/t;->c:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(Z)V
    .registers 4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->p:Lt/L;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->q:Lt/L;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->r:Lt/L;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->s:Lt/at;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/t;->t:F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->v:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->y:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    if-eqz p1, :cond_19

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->w:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->x:[F

    :cond_19
    return-void
.end method

.method private static a([FFFFFFF)V
    .registers 17

    neg-float v0, p1

    neg-float v1, p2

    neg-float v2, p3

    const/high16 v3, 0x3f80

    invoke-static {v0, v1, v2}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v4

    div-float/2addr v3, v4

    mul-float/2addr v0, v3

    mul-float/2addr v1, v3

    mul-float/2addr v2, v3

    mul-float v3, v1, p6

    mul-float v4, v2, p5

    sub-float/2addr v3, v4

    mul-float v4, v2, p4

    mul-float v5, v0, p6

    sub-float/2addr v4, v5

    mul-float v5, v0, p5

    mul-float v6, v1, p4

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f80

    invoke-static {v3, v4, v5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v7

    div-float/2addr v6, v7

    mul-float/2addr v3, v6

    mul-float/2addr v4, v6

    mul-float/2addr v5, v6

    mul-float v6, v4, v2

    mul-float v7, v5, v1

    sub-float/2addr v6, v7

    mul-float v7, v5, v0

    mul-float v8, v3, v2

    sub-float/2addr v7, v8

    mul-float v8, v3, v1

    mul-float v9, v4, v0

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    aput v3, p0, v9

    const/4 v3, 0x1

    aput v6, p0, v3

    const/4 v3, 0x2

    neg-float v0, v0

    aput v0, p0, v3

    const/4 v0, 0x3

    const/4 v3, 0x0

    aput v3, p0, v0

    const/4 v0, 0x4

    aput v4, p0, v0

    const/4 v0, 0x5

    aput v7, p0, v0

    const/4 v0, 0x6

    neg-float v1, v1

    aput v1, p0, v0

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, p0, v0

    const/16 v0, 0x8

    aput v5, p0, v0

    const/16 v0, 0x9

    aput v8, p0, v0

    const/16 v0, 0xa

    neg-float v1, v2

    aput v1, p0, v0

    const/16 v0, 0xb

    const/4 v1, 0x0

    aput v1, p0, v0

    const/16 v0, 0xc

    const/4 v1, 0x0

    aput v1, p0, v0

    const/16 v0, 0xd

    const/4 v1, 0x0

    aput v1, p0, v0

    const/16 v0, 0xe

    const/4 v1, 0x0

    aput v1, p0, v0

    const/16 v0, 0xf

    const/high16 v1, 0x3f80

    aput v1, p0, v0

    const/4 v0, 0x0

    neg-float v1, p1

    neg-float v2, p2

    neg-float v3, p3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/u;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    sget-object v0, Lcom/google/android/maps/driveabout/vector/t;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/t;->D:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_39

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3c

    :cond_39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->u:[D

    :cond_3c
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->x()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_57

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->w()V

    goto :goto_c

    :cond_57
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    goto :goto_c
.end method

.method public static c(F)F
    .registers 3

    sget v0, Lcom/google/android/maps/driveabout/vector/t;->a:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_15

    const/high16 v0, 0x4880

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    :goto_14
    return v0

    :cond_15
    const/high16 v0, 0x4296

    goto :goto_14
.end method

.method private w()V
    .registers 13

    const-wide v6, 0x3f91df46a2529d39L

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v4

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/t;->l:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/t;->i:F

    float-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    sub-double v2, v8, v2

    mul-double/2addr v2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lt/L;->d(II)V

    return-void
.end method

.method private x()V
    .registers 7

    const-wide/high16 v0, 0x4000

    const/high16 v2, 0x41f0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    int-to-double v2, v2

    const/high16 v4, 0x4380

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/t;->o:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->k:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/t;->i:F

    return-void
.end method

.method private y()[D
    .registers 11

    const-wide v6, 0x3f91df46a2529d39L

    const-wide v4, 0x4076800000000000L

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->u:[D

    if-nez v0, :cond_5b

    const-wide v0, 0x4056800000000000L

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_5e

    add-double/2addr v0, v4

    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    mul-double/2addr v0, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const/4 v6, 0x3

    new-array v6, v6, [D

    iput-object v6, p0, Lcom/google/android/maps/driveabout/vector/t;->u:[D

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/t;->u:[D

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    aput-wide v8, v6, v7

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/t;->u:[D

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    aput-wide v0, v6, v7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->u:[D

    const/4 v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v1

    :cond_5b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->u:[D

    return-object v0

    :cond_5e
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_2b

    sub-double/2addr v0, v4

    goto :goto_2b
.end method

.method private z()V
    .registers 9

    const v6, 0x3dcccccd

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->w:[F

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->q()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->l:F

    float-to-double v1, v1

    const-wide v3, 0x3f91df46a2529d39L

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v5, v6, v1

    neg-float v4, v5

    mul-float v2, v4, v0

    mul-float v3, v5, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->w:[F

    const/4 v1, 0x0

    const/high16 v7, 0x41a0

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method


# virtual methods
.method public a(FF)F
    .registers 6

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    mul-float v0, p2, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->j:F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public a(Lt/L;Z)F
    .registers 10

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->y()[D

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->B:Lt/L;

    invoke-static {p1, v1, v2}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    if-eqz p2, :cond_16

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->B:Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->B:Lt/L;

    invoke-virtual {v1, v2}, Lt/L;->i(Lt/L;)V

    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->B:Lt/L;

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/t;->B:Lt/L;

    invoke-virtual {v3}, Lt/L;->g()I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/t;->B:Lt/L;

    invoke-virtual {v3}, Lt/L;->h()I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    add-double v0, v1, v3

    double-to-float v0, v0

    return v0
.end method

.method public a()J
    .registers 3

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/t;->D:J

    return-wide v0
.end method

.method public a(FFFF)Lt/n;
    .registers 26

    invoke-static {}, Ln/a;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    if-nez v2, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/t;->C()V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v8

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v9

    invoke-virtual {v2}, Lt/L;->h()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v2

    sub-int v11, v2, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    sub-int v12, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/t;->A:[F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    const/4 v3, 0x3

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/4 v13, 0x6

    aget v13, v2, v13

    mul-float/2addr v3, v13

    float-to-double v13, v3

    const-wide/high16 v15, 0x3ff0

    cmpl-double v3, v13, v15

    if-ltz v3, :cond_72

    const/4 v2, 0x0

    :goto_71
    return-object v2

    :cond_72
    const-wide/high16 v15, 0x3ff0

    const-wide/high16 v17, 0x3ff0

    sub-double v13, v17, v13

    div-double v13, v15, v13

    int-to-double v15, v10

    mul-double v3, v4, v15

    int-to-double v15, v11

    add-double/2addr v3, v15

    mul-double/2addr v3, v13

    int-to-double v15, v8

    add-double/2addr v3, v15

    int-to-double v15, v10

    mul-double v5, v6, v15

    int-to-double v15, v12

    add-double/2addr v5, v15

    mul-double/2addr v5, v13

    int-to-double v13, v9

    add-double/2addr v5, v13

    new-instance v13, Lt/L;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v13, v3, v4}, Lt/L;-><init>(II)V

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/4 v14, 0x6

    aget v14, v2, v14

    mul-float/2addr v3, v14

    float-to-double v14, v3

    const-wide/high16 v16, 0x3ff0

    cmpl-double v3, v14, v16

    if-ltz v3, :cond_bc

    const/4 v2, 0x0

    goto :goto_71

    :cond_bc
    const-wide/high16 v16, 0x3ff0

    const-wide/high16 v18, 0x3ff0

    sub-double v14, v18, v14

    div-double v14, v16, v14

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v3, v4, v16

    int-to-double v0, v11

    move-wide/from16 v16, v0

    add-double v3, v3, v16

    mul-double/2addr v3, v14

    int-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v3, v3, v16

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v5, v6, v16

    int-to-double v0, v12

    move-wide/from16 v16, v0

    add-double v5, v5, v16

    mul-double/2addr v5, v14

    int-to-double v14, v9

    add-double/2addr v5, v14

    new-instance v14, Lt/L;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v14, v3, v4}, Lt/L;-><init>(II)V

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/4 v15, 0x6

    aget v15, v2, v15

    mul-float/2addr v3, v15

    float-to-double v15, v3

    const-wide/high16 v17, 0x3ff0

    cmpl-double v3, v15, v17

    if-ltz v3, :cond_114

    const/4 v2, 0x0

    goto/16 :goto_71

    :cond_114
    const-wide/high16 v17, 0x3ff0

    const-wide/high16 v19, 0x3ff0

    sub-double v15, v19, v15

    div-double v15, v17, v15

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v3, v4, v17

    int-to-double v0, v11

    move-wide/from16 v17, v0

    add-double v3, v3, v17

    mul-double/2addr v3, v15

    int-to-double v0, v8

    move-wide/from16 v17, v0

    add-double v3, v3, v17

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v5, v6, v17

    int-to-double v0, v12

    move-wide/from16 v17, v0

    add-double v5, v5, v17

    mul-double/2addr v5, v15

    int-to-double v15, v9

    add-double/2addr v5, v15

    new-instance v15, Lt/L;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v15, v3, v4}, Lt/L;-><init>(II)V

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/16 v16, 0x6

    aget v2, v2, v16

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v16, 0x3ff0

    cmpl-double v16, v2, v16

    if-ltz v16, :cond_16d

    const/4 v2, 0x0

    goto/16 :goto_71

    :cond_16d
    const-wide/high16 v16, 0x3ff0

    const-wide/high16 v18, 0x3ff0

    sub-double v2, v18, v2

    div-double v2, v16, v2

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v4, v4, v16

    int-to-double v0, v11

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    mul-double/2addr v4, v2

    int-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    int-to-double v10, v10

    mul-double/2addr v6, v10

    int-to-double v10, v12

    add-double/2addr v6, v10

    mul-double/2addr v2, v6

    int-to-double v6, v9

    add-double/2addr v2, v6

    new-instance v6, Lt/L;

    double-to-int v4, v4

    double-to-int v2, v2

    invoke-direct {v6, v4, v2}, Lt/L;-><init>(II)V

    invoke-static {v6, v15, v13, v14}, Lt/n;->a(Lt/L;Lt/L;Lt/L;Lt/L;)Lt/n;

    move-result-object v2

    goto/16 :goto_71
.end method

.method public a(IIF)V
    .registers 7

    const/4 v2, 0x1

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_a
    sget-object v0, Lcom/google/android/maps/driveabout/vector/t;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/t;->D:J

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/t;->o:F

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->x()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->w()V

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/t;->a(Z)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .registers 3

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/t;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method public a(Lt/L;)V
    .registers 3

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {p1, v0}, Lt/L;->b(Lt/L;)V

    return-void
.end method

.method public a(Lt/L;[F)V
    .registers 10

    const/high16 v4, 0x4000

    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->y:[F

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->C()V

    :cond_c
    invoke-virtual {p1}, Lt/L;->f()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v2

    sub-int/2addr v0, v2

    const/high16 v2, 0x2000

    if-lt v0, v2, :cond_5b

    sub-int/2addr v0, v4

    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->h()I

    move-result v2

    int-to-float v0, v0

    aput v0, p2, v3

    invoke-virtual {p1}, Lt/L;->g()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v4}, Lt/L;->g()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    aput v0, p2, v6

    const/4 v0, 0x2

    invoke-virtual {p1}, Lt/L;->h()I

    move-result v4

    int-to-float v4, v4

    aput v4, p2, v0

    const/4 v0, 0x3

    int-to-float v2, v2

    aput v2, p2, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->y:[F

    move-object v0, p2

    move-object v4, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v0, 0x3f80

    const/4 v2, 0x7

    aget v2, p2, v2

    div-float/2addr v0, v2

    aget v1, p2, v1

    mul-float/2addr v1, v0

    aput v1, p2, v3

    const/4 v1, 0x5

    aget v1, p2, v1

    mul-float/2addr v0, v1

    aput v0, p2, v6

    return-void

    :cond_5b
    const/high16 v2, -0x2000

    if-ge v0, v2, :cond_1c

    add-int/2addr v0, v4

    goto :goto_1c
.end method

.method public b(FF)F
    .registers 5

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->j:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    return v0
.end method

.method public b()Lt/L;
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-static {v0}, Lt/L;->a(Lt/L;)Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .registers 9

    const/4 v6, 0x0

    const-wide/high16 v4, 0x3fe0

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42b4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->l:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4c

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/t;->l:F

    sget-object v0, Lcom/google/android/maps/driveabout/vector/t;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/t;->D:J

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->l:F

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double v0, v4, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/t;->j:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_4c

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->w()V

    :cond_4c
    return-void
.end method

.method public b(Lt/L;)[I
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_b
    const/16 v0, 0x8

    new-array v0, v0, [F

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;[F)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v1, v3

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, v1, v4

    return-object v1
.end method

.method public c(FF)F
    .registers 7

    const/high16 v0, 0x41f0

    div-float v1, p1, p2

    const/high16 v2, 0x4380

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/t;->o:F

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/t;->a(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public c()Lt/L;
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    return v0
.end method

.method public d(FF)Lt/L;
    .registers 14

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/high16 v6, 0x3f80

    const-wide/high16 v9, 0x3ff0

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->C()V

    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->A:[F

    aput p1, v0, v3

    const/4 v2, 0x1

    aput p2, v0, v2

    const/4 v2, 0x2

    aput v6, v0, v2

    const/4 v2, 0x3

    aput v6, v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->z:[F

    move-object v4, v0

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 v2, 0x7

    aget v2, v0, v2

    div-float v2, v6, v2

    aget v1, v0, v1

    mul-float/2addr v1, v2

    float-to-double v3, v1

    const/4 v1, 0x5

    aget v1, v0, v1

    mul-float/2addr v1, v2

    float-to-double v5, v1

    const/4 v1, 0x6

    aget v0, v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    cmpl-double v2, v0, v9

    if-ltz v2, :cond_43

    const/4 v0, 0x0

    :goto_42
    return-object v0

    :cond_43
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v7

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v8

    invoke-virtual {v2}, Lt/L;->h()I

    move-result v2

    sub-double v0, v9, v0

    div-double v0, v9, v0

    int-to-double v9, v2

    mul-double/2addr v3, v9

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v9}, Lt/L;->f()I

    move-result v9

    int-to-double v9, v9

    add-double/2addr v3, v9

    int-to-double v9, v7

    sub-double/2addr v3, v9

    mul-double/2addr v3, v0

    int-to-double v9, v7

    add-double/2addr v3, v9

    int-to-double v9, v2

    mul-double/2addr v5, v9

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    int-to-double v9, v2

    add-double/2addr v5, v9

    int-to-double v9, v8

    sub-double/2addr v5, v9

    mul-double/2addr v0, v5

    int-to-double v5, v8

    add-double v1, v0, v5

    new-instance v0, Lt/L;

    double-to-int v3, v3

    double-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lt/L;-><init>(II)V

    goto :goto_42
.end method

.method public d(F)Lt/at;
    .registers 8

    const/4 v5, 0x0

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/t;->c(F)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v1

    sub-float v1, v0, v1

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/t;->j:F

    mul-float/2addr v2, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    int-to-float v2, v2

    invoke-virtual {p0, v5, v2}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v3

    invoke-virtual {p0, v5, v1}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v4

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    int-to-float v5, v5

    invoke-virtual {p0, v5, v1}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v5

    if-eqz v2, :cond_64

    if-eqz v3, :cond_64

    if-eqz v4, :cond_64

    if-nez v5, :cond_af

    :cond_64
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " farAngle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " top:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_af
    invoke-static {v2, v3, v4, v5}, Lt/at;->a(Lt/L;Lt/L;Lt/L;Lt/L;)Lt/at;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ln/a;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_b
    if-ne p0, p1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    instance-of v2, p1, Lcom/google/android/maps/driveabout/vector/t;

    if-eqz v2, :cond_44

    check-cast p1, Lcom/google/android/maps/driveabout/vector/t;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->i:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/t;->i:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/u;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->l:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/t;->l:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_42

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/t;->n:I

    if-ne v2, v3, :cond_42

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/t;->m:I

    if-ne v2, v3, :cond_42

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->o:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/t;->o:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_d

    :cond_42
    move v0, v1

    goto :goto_d

    :cond_44
    move v0, v1

    goto :goto_d
.end method

.method public f()F
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->o:F

    return v0
.end method

.method public g()F
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->l:F

    return v0
.end method

.method public h()F
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->i:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->i:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->l:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->o:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    :goto_2b
    add-int/2addr v0, v1

    return v0

    :cond_2d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->hashCode()I

    move-result v0

    goto :goto_2b
.end method

.method public i()F
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v0

    return v0
.end method

.method public j()F
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v0

    return v0
.end method

.method public k()F
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    return v0
.end method

.method public l()F
    .registers 4

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->o:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/cn;->a(D)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public m()Lt/L;
    .registers 9

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->p:Lt/L;

    if-nez v0, :cond_48

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->y()[D

    move-result-object v0

    new-instance v1, Lt/L;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->i:F

    neg-float v2, v2

    float-to-double v2, v2

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/t;->i:F

    neg-float v3, v3

    float-to-double v3, v3

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/t;->i:F

    neg-float v4, v4

    float-to-double v4, v4

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-direct {v1, v2, v3, v0}, Lt/L;-><init>(III)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->p:Lt/L;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->p:Lt/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->p:Lt/L;

    invoke-static {v0, v1, v2}, Lt/L;->a(Lt/L;Lt/L;Lt/L;)V

    :cond_48
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->p:Lt/L;

    return-object v0
.end method

.method public n()Lt/L;
    .registers 9

    const-wide/high16 v6, 0x40f0

    const-wide v4, 0x4076800000000000L

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->r:Lt/L;

    if-nez v0, :cond_63

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v2

    if-ne v1, v2, :cond_6c

    invoke-virtual {v0}, Lt/L;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    if-ne v1, v2, :cond_6c

    :cond_3b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_66

    add-double/2addr v0, v4

    :cond_4a
    :goto_4a
    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    new-instance v2, Lt/L;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, Lt/L;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->r:Lt/L;

    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->r:Lt/L;

    return-object v0

    :cond_66
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_4a

    sub-double/2addr v0, v4

    goto :goto_4a

    :cond_6c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v1, v0}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/t;->d:Lt/L;

    invoke-virtual {v0, v1}, Lt/L;->g(Lt/L;)Lt/L;

    move-result-object v0

    const/high16 v1, 0x4780

    invoke-static {v0, v1, v0}, Lt/L;->b(Lt/L;FLt/L;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->r:Lt/L;

    goto :goto_63
.end method

.method public o()Lt/L;
    .registers 11

    const-wide/high16 v8, 0x40f0

    const-wide/16 v6, 0x0

    const-wide v4, 0x4076800000000000L

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->q:Lt/L;

    if-nez v0, :cond_68

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v6

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v2

    if-ne v1, v2, :cond_71

    invoke-virtual {v0}, Lt/L;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    if-ne v1, v2, :cond_71

    :cond_3d
    const-wide v0, 0x4056800000000000L

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    cmpg-double v2, v0, v6

    if-gez v2, :cond_6b

    add-double/2addr v0, v4

    :cond_4f
    :goto_4f
    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    new-instance v2, Lt/L;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, Lt/L;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->q:Lt/L;

    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->q:Lt/L;

    return-object v0

    :cond_6b
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_4f

    sub-double/2addr v0, v4

    goto :goto_4f

    :cond_71
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v1, v0}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v0

    const/high16 v1, 0x4680

    invoke-static {v0, v1, v0}, Lt/L;->b(Lt/L;FLt/L;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->n()Lt/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lt/L;->g(Lt/L;)Lt/L;

    move-result-object v0

    const/high16 v1, 0x4780

    invoke-static {v0, v1, v0}, Lt/L;->b(Lt/L;FLt/L;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->q:Lt/L;

    goto :goto_68
.end method

.method public p()F
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->t:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->h()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/t;->t:F

    :cond_15
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->t:F

    return v0
.end method

.method public q()F
    .registers 3

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/t;->m:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->n:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public r()F
    .registers 3

    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->i:F

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v0

    return v0
.end method

.method public s()[F
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->v:[F

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->A()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->v:[F

    return-object v0
.end method

.method public t()[F
    .registers 2

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->w:[F

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->z()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->w:[F

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Lt/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/t;->h:Lt/L;

    invoke-virtual {v3}, Lt/L;->h()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lt/L;-><init>(III)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lt/at;
    .registers 4

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->s:Lt/at;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/t;->l:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/t;->d(F)Lt/at;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->s:Lt/at;

    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->s:Lt/at;

    return-object v0
.end method

.method public v()Lt/at;
    .registers 7

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->D()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/t;->j:F

    div-float/2addr v1, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v4, v1

    add-double v1, v2, v4

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v0, v1, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v1

    const v2, 0x42652ee1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/t;->d(F)Lt/at;

    move-result-object v0

    goto :goto_18
.end method
