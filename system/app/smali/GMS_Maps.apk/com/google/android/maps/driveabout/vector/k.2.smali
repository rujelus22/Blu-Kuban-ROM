.class public Lcom/google/android/maps/driveabout/vector/k;
.super Lz/d;
.source "SourceFile"


# static fields
.field private static final F:Ljava/util/concurrent/atomic/AtomicLong;

.field static final a:F

.field public static final b:Lcom/google/android/maps/driveabout/vector/l;

.field private static final e:F

.field private static final f:Ln/Q;

.field private static final g:F


# instance fields
.field private A:[F

.field private B:[F

.field private C:[F

.field private final D:[F

.field private final E:Ln/Q;

.field private volatile G:J

.field private final h:Ljava/lang/Thread;

.field private i:Lcom/google/android/maps/driveabout/vector/l;

.field private j:Z

.field private k:Ln/Q;

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:F

.field private s:Ln/Q;

.field private t:Ln/Q;

.field private u:Ln/Q;

.field private v:Ln/aK;

.field private w:F

.field private x:[D

.field private y:[F

.field private z:[F


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 27
    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/k;->e:F

    .line 45
    const/high16 v0, 0x4880

    const-wide v1, 0x3ff4f1a6c638d03fL

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/google/android/maps/driveabout/vector/k;->a:F

    .line 49
    new-instance v0, Ln/Q;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v6, v1}, Ln/Q;-><init>(III)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/k;->f:Ln/Q;

    .line 80
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    new-instance v1, Ln/Q;

    invoke-direct {v1, v6, v6}, Ln/Q;-><init>(II)V

    const/high16 v2, 0x41a0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/k;->b:Lcom/google/android/maps/driveabout/vector/l;

    .line 90
    const-wide/high16 v0, 0x3fe0

    const-wide v2, 0x3fd0c152382d7365L

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/k;->g:F

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIFLjava/lang/Thread;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;IIFLjava/lang/Thread;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v0, 0x10

    new-array v8, v0, [F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIFLjava/lang/Thread;Lz/w;I[F)V

    .line 244
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;IIFLjava/lang/Thread;Lz/w;I[F)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-direct {p0, p6, p7, p8}, Lz/d;-><init>(Lz/w;I[F)V

    .line 131
    sget v0, Lcom/google/android/maps/driveabout/vector/k;->g:F

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/k;->n:F

    .line 161
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->y:[F

    .line 162
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->z:[F

    .line 163
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    .line 164
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->B:[F

    .line 165
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    .line 168
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->D:[F

    .line 171
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->E:Ln/Q;

    .line 183
    sget-object v0, Lcom/google/android/maps/driveabout/vector/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/k;->G:J

    .line 224
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    .line 225
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    .line 226
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/k;->r:F

    .line 227
    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/k;->h:Ljava/lang/Thread;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/k;->j:Z

    .line 229
    const/high16 v0, 0x41f0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/k;->b(F)V

    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/k;->b(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 231
    return-void
.end method

.method private D()V
    .registers 13

    .prologue
    const-wide v6, 0x3f91df46a2529d39L

    .line 403
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    .line 404
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    .line 406
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v4

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/k;->o:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    .line 408
    iget v6, p0, Lcom/google/android/maps/driveabout/vector/k;->l:F

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

    .line 411
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    .line 412
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 413
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->f()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, Ln/Q;->g()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Ln/Q;->d(II)V

    .line 415
    return-void
.end method

.method private E()V
    .registers 7

    .prologue
    .line 418
    const-wide/high16 v0, 0x4000

    const/high16 v2, 0x41f0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 424
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    int-to-double v2, v2

    const/high16 v4, 0x4380

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/k;->r:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v2, v4

    .line 426
    mul-double/2addr v0, v2

    .line 427
    double-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->n:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/k;->l:F

    .line 428
    return-void
.end method

.method private F()[D
    .registers 11

    .prologue
    const-wide v6, 0x3f91df46a2529d39L

    const-wide v4, 0x4076800000000000L

    .line 460
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 461
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->x:[D

    if-nez v0, :cond_55

    .line 464
    const-wide v0, 0x4056800000000000L

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    .line 465
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_58

    .line 466
    add-double/2addr v0, v4

    .line 470
    :cond_25
    :goto_25
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    .line 472
    mul-double/2addr v0, v6

    .line 473
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 474
    const/4 v6, 0x3

    new-array v6, v6, [D

    iput-object v6, p0, Lcom/google/android/maps/driveabout/vector/k;->x:[D

    .line 475
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/k;->x:[D

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    aput-wide v8, v6, v7

    .line 476
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/k;->x:[D

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    aput-wide v0, v6, v7

    .line 477
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->x:[D

    const/4 v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v1

    .line 479
    :cond_55
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->x:[D

    return-object v0

    .line 467
    :cond_58
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_25

    .line 468
    sub-double/2addr v0, v4

    goto :goto_25
.end method

.method private G()V
    .registers 9

    .prologue
    const v6, 0x3dcccccd

    .line 1063
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->z:[F

    .line 1066
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->r()F

    move-result v0

    .line 1067
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->o:F

    float-to-double v1, v1

    const-wide v3, 0x3f91df46a2529d39L

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v5, v6, v1

    .line 1069
    neg-float v4, v5

    .line 1070
    mul-float v2, v4, v0

    .line 1071
    mul-float v3, v5, v0

    .line 1072
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->z:[F

    const/4 v1, 0x0

    const/high16 v7, 0x41a0

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 1074
    return-void
.end method

.method private H()V
    .registers 8

    .prologue
    .line 1083
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->y:[F

    .line 1085
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->q()F

    move-result v0

    .line 1086
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    .line 1088
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v2

    .line 1089
    invoke-virtual {v2, v1}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v3

    .line 1091
    invoke-virtual {v3}, Ln/Q;->f()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 1092
    invoke-virtual {v3}, Ln/Q;->g()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 1093
    invoke-virtual {v3}, Ln/Q;->h()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 1095
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->p()Ln/Q;

    move-result-object v6

    .line 1096
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->y:[F

    invoke-virtual {v6}, Ln/Q;->f()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, Ln/Q;->g()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, Ln/Q;->h()I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/k;->b([FFFFFFF)V

    .line 1097
    return-void
.end method

.method private I()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    .line 1100
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    .line 1103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    .line 1104
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    int-to-float v2, v2

    const/high16 v3, -0x4100

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 1105
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 1106
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    const/16 v1, 0xf

    aput v5, v0, v1

    .line 1109
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    .line 1110
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    .line 1111
    return-void
.end method

.method private J()V
    .registers 9

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 1118
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->y:[F

    if-nez v0, :cond_a

    .line 1119
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->H()V

    .line 1121
    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->z:[F

    if-nez v0, :cond_11

    .line 1122
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->G()V

    .line 1124
    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    if-nez v0, :cond_18

    .line 1125
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->I()V

    .line 1128
    :cond_18
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->B:[F

    .line 1130
    new-array v0, v2, [F

    .line 1131
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/k;->z:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1132
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->B:[F

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/k;->y:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1134
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    .line 1135
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->B:[F

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 1136
    return-void
.end method

.method private final K()V
    .registers 1

    .prologue
    .line 1214
    return-void
.end method

.method static a(F)F
    .registers 3
    .parameter

    .prologue
    .line 260
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget v1, Lcom/google/android/maps/driveabout/vector/k;->e:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/l;)V
    .registers 4
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 390
    :goto_c
    return-void

    .line 375
    :cond_d
    sget-object v0, Lcom/google/android/maps/driveabout/vector/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/k;->G:J

    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/k;->b(Z)V

    .line 377
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_39

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3c

    .line 379
    :cond_39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->x:[D

    .line 381
    :cond_3c
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    .line 382
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->E()V

    .line 383
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5a

    .line 384
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    .line 385
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->D()V

    .line 389
    :goto_56
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->x()V

    goto :goto_c

    .line 387
    :cond_5a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    goto :goto_56
.end method

.method private b(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1046
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->s:Ln/Q;

    .line 1047
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->t:Ln/Q;

    .line 1048
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->u:Ln/Q;

    .line 1049
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->v:Ln/aK;

    .line 1050
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/k;->w:F

    .line 1052
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->y:[F

    .line 1053
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->B:[F

    .line 1054
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    .line 1056
    if-eqz p1, :cond_19

    .line 1057
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->z:[F

    .line 1058
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->A:[F

    .line 1060
    :cond_19
    return-void
.end method

.method private static b([FFFFFFF)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1155
    neg-float v0, p1

    .line 1156
    neg-float v1, p2

    .line 1157
    neg-float v2, p3

    .line 1160
    const/high16 v3, 0x3f80

    invoke-static {v0, v1, v2}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v4

    div-float/2addr v3, v4

    .line 1161
    mul-float/2addr v0, v3

    .line 1162
    mul-float/2addr v1, v3

    .line 1163
    mul-float/2addr v2, v3

    .line 1166
    mul-float v3, v1, p6

    mul-float v4, v2, p5

    sub-float/2addr v3, v4

    .line 1167
    mul-float v4, v2, p4

    mul-float v5, v0, p6

    sub-float/2addr v4, v5

    .line 1168
    mul-float v5, v0, p5

    mul-float v6, v1, p4

    sub-float/2addr v5, v6

    .line 1171
    const/high16 v6, 0x3f80

    invoke-static {v3, v4, v5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v7

    div-float/2addr v6, v7

    .line 1172
    mul-float/2addr v3, v6

    .line 1173
    mul-float/2addr v4, v6

    .line 1174
    mul-float/2addr v5, v6

    .line 1177
    mul-float v6, v4, v2

    mul-float v7, v5, v1

    sub-float/2addr v6, v7

    .line 1178
    mul-float v7, v5, v0

    mul-float v8, v3, v2

    sub-float/2addr v7, v8

    .line 1179
    mul-float v8, v3, v1

    mul-float v9, v4, v0

    sub-float/2addr v8, v9

    .line 1181
    const/4 v9, 0x0

    aput v3, p0, v9

    .line 1182
    const/4 v3, 0x1

    aput v6, p0, v3

    .line 1183
    const/4 v3, 0x2

    neg-float v0, v0

    aput v0, p0, v3

    .line 1184
    const/4 v0, 0x3

    const/4 v3, 0x0

    aput v3, p0, v0

    .line 1186
    const/4 v0, 0x4

    aput v4, p0, v0

    .line 1187
    const/4 v0, 0x5

    aput v7, p0, v0

    .line 1188
    const/4 v0, 0x6

    neg-float v1, v1

    aput v1, p0, v0

    .line 1189
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1191
    const/16 v0, 0x8

    aput v5, p0, v0

    .line 1192
    const/16 v0, 0x9

    aput v8, p0, v0

    .line 1193
    const/16 v0, 0xa

    neg-float v1, v2

    aput v1, p0, v0

    .line 1194
    const/16 v0, 0xb

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1196
    const/16 v0, 0xc

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1197
    const/16 v0, 0xd

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1198
    const/16 v0, 0xe

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1199
    const/16 v0, 0xf

    const/high16 v1, 0x3f80

    aput v1, p0, v0

    .line 1201
    const/4 v0, 0x0

    neg-float v1, p1

    neg-float v2, p2

    neg-float v3, p3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1202
    return-void
.end method

.method public static c(F)F
    .registers 3
    .parameter

    .prologue
    .line 937
    sget v0, Lcom/google/android/maps/driveabout/vector/k;->a:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_15

    .line 940
    const/high16 v0, 0x4880

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    .line 946
    :goto_14
    return v0

    :cond_15
    const/high16 v0, 0x4296

    goto :goto_14
.end method


# virtual methods
.method public a(FF)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 595
    mul-float v0, p2, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->m:F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public a(Ln/Q;Z)F
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->F()[D

    move-result-object v0

    .line 624
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->E:Ln/Q;

    invoke-static {p1, v1, v2}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 625
    if-eqz p2, :cond_16

    .line 626
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->E:Ln/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->E:Ln/Q;

    invoke-virtual {v1, v2}, Ln/Q;->i(Ln/Q;)V

    .line 628
    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->E:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->f()I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/k;->E:Ln/Q;

    invoke-virtual {v3}, Ln/Q;->g()I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/k;->E:Ln/Q;

    invoke-virtual {v3}, Ln/Q;->h()I

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

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 255
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/k;->G:J

    return-wide v0
.end method

.method public a(FFFF)Ln/r;
    .registers 26
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 734
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    if-nez v2, :cond_c

    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/k;->J()V

    .line 739
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v2

    .line 740
    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v8

    .line 741
    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v9

    .line 742
    invoke-virtual {v2}, Ln/Q;->h()I

    move-result v10

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v2

    sub-int v11, v2, v8

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v2

    sub-int v12, v2, v9

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/k;->D:[F

    .line 751
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 752
    const/4 v3, 0x1

    aput p3, v2, v3

    .line 753
    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    .line 754
    const/4 v3, 0x3

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    .line 755
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 758
    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    .line 759
    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    .line 760
    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    .line 761
    const/4 v13, 0x6

    aget v13, v2, v13

    mul-float/2addr v3, v13

    float-to-double v13, v3

    .line 763
    const-wide/high16 v15, 0x3ff0

    cmpl-double v3, v13, v15

    if-ltz v3, :cond_6c

    .line 765
    const/4 v2, 0x0

    .line 832
    :goto_6b
    return-object v2

    .line 769
    :cond_6c
    const-wide/high16 v15, 0x3ff0

    const-wide/high16 v17, 0x3ff0

    sub-double v13, v17, v13

    div-double v13, v15, v13

    .line 770
    int-to-double v15, v10

    mul-double v3, v4, v15

    int-to-double v15, v11

    add-double/2addr v3, v15

    mul-double/2addr v3, v13

    int-to-double v15, v8

    add-double/2addr v3, v15

    .line 771
    int-to-double v15, v10

    mul-double v5, v6, v15

    int-to-double v15, v12

    add-double/2addr v5, v15

    mul-double/2addr v5, v13

    int-to-double v13, v9

    add-double/2addr v5, v13

    .line 772
    new-instance v13, Ln/Q;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v13, v3, v4}, Ln/Q;-><init>(II)V

    .line 778
    const/4 v3, 0x0

    aput p2, v2, v3

    .line 779
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 780
    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    .line 781
    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    .line 782
    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    .line 783
    const/4 v14, 0x6

    aget v14, v2, v14

    mul-float/2addr v3, v14

    float-to-double v14, v3

    .line 785
    const-wide/high16 v16, 0x3ff0

    cmpl-double v3, v14, v16

    if-ltz v3, :cond_b6

    .line 786
    const/4 v2, 0x0

    goto :goto_6b

    .line 788
    :cond_b6
    const-wide/high16 v16, 0x3ff0

    const-wide/high16 v18, 0x3ff0

    sub-double v14, v18, v14

    div-double v14, v16, v14

    .line 789
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

    .line 790
    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v5, v6, v16

    int-to-double v0, v12

    move-wide/from16 v16, v0

    add-double v5, v5, v16

    mul-double/2addr v5, v14

    int-to-double v14, v9

    add-double/2addr v5, v14

    .line 791
    new-instance v14, Ln/Q;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v14, v3, v4}, Ln/Q;-><init>(II)V

    .line 797
    const/4 v3, 0x1

    aput p4, v2, v3

    .line 798
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 799
    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    .line 800
    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    .line 801
    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    .line 802
    const/4 v15, 0x6

    aget v15, v2, v15

    mul-float/2addr v3, v15

    float-to-double v15, v3

    .line 804
    const-wide/high16 v17, 0x3ff0

    cmpl-double v3, v15, v17

    if-ltz v3, :cond_10e

    .line 805
    const/4 v2, 0x0

    goto/16 :goto_6b

    .line 807
    :cond_10e
    const-wide/high16 v17, 0x3ff0

    const-wide/high16 v19, 0x3ff0

    sub-double v15, v19, v15

    div-double v15, v17, v15

    .line 808
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

    .line 809
    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v5, v6, v17

    int-to-double v0, v12

    move-wide/from16 v17, v0

    add-double v5, v5, v17

    mul-double/2addr v5, v15

    int-to-double v15, v9

    add-double/2addr v5, v15

    .line 810
    new-instance v15, Ln/Q;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v15, v3, v4}, Ln/Q;-><init>(II)V

    .line 816
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 817
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 818
    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    .line 819
    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    .line 820
    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    .line 821
    const/16 v16, 0x6

    aget v2, v2, v16

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 823
    const-wide/high16 v16, 0x3ff0

    cmpl-double v16, v2, v16

    if-ltz v16, :cond_167

    .line 824
    const/4 v2, 0x0

    goto/16 :goto_6b

    .line 826
    :cond_167
    const-wide/high16 v16, 0x3ff0

    const-wide/high16 v18, 0x3ff0

    sub-double v2, v18, v2

    div-double v2, v16, v2

    .line 827
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

    .line 828
    int-to-double v10, v10

    mul-double/2addr v6, v10

    int-to-double v10, v12

    add-double/2addr v6, v10

    mul-double/2addr v2, v6

    int-to-double v6, v9

    add-double/2addr v2, v6

    .line 829
    new-instance v6, Ln/Q;

    double-to-int v4, v4

    double-to-int v2, v2

    invoke-direct {v6, v4, v2}, Ln/Q;-><init>(II)V

    .line 832
    invoke-static {v6, v15, v13, v14}, Ln/r;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Ln/r;

    move-result-object v2

    goto/16 :goto_6b
.end method

.method public a(IIF)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 327
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 328
    sget-object v0, Lcom/google/android/maps/driveabout/vector/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/k;->G:J

    .line 329
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    .line 330
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    .line 331
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/k;->r:F

    .line 332
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->E()V

    .line 333
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->D()V

    .line 334
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/k;->b(Z)V

    .line 335
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;)V
    .registers 2
    .parameter

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 395
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/k;->b(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 396
    return-void
.end method

.method public a(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 275
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {p1, v0}, Ln/Q;->b(Ln/Q;)V

    .line 276
    return-void
.end method

.method public a(Ln/Q;[F)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 865
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->B:[F

    if-nez v0, :cond_c

    .line 866
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->J()V

    .line 869
    :cond_c
    invoke-virtual {p1}, Ln/Q;->f()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v2

    sub-int/2addr v0, v2

    .line 870
    const/high16 v2, 0x2000

    if-lt v0, v2, :cond_5b

    .line 871
    sub-int/2addr v0, v4

    .line 879
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v2

    invoke-virtual {v2}, Ln/Q;->h()I

    move-result v2

    .line 880
    int-to-float v0, v0

    aput v0, p2, v3

    .line 881
    invoke-virtual {p1}, Ln/Q;->g()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v4}, Ln/Q;->g()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    aput v0, p2, v6

    .line 882
    const/4 v0, 0x2

    invoke-virtual {p1}, Ln/Q;->h()I

    move-result v4

    int-to-float v4, v4

    aput v4, p2, v0

    .line 883
    const/4 v0, 0x3

    int-to-float v2, v2

    aput v2, p2, v0

    .line 886
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->B:[F

    move-object v0, p2

    move-object v4, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 889
    const/high16 v0, 0x3f80

    const/4 v2, 0x7

    aget v2, p2, v2

    div-float/2addr v0, v2

    .line 890
    aget v1, p2, v1

    mul-float/2addr v1, v0

    aput v1, p2, v3

    .line 891
    const/4 v1, 0x5

    aget v1, p2, v1

    mul-float/2addr v0, v1

    aput v0, p2, v6

    .line 892
    return-void

    .line 872
    :cond_5b
    const/high16 v2, -0x2000

    if-ge v0, v2, :cond_1c

    .line 873
    add-int/2addr v0, v4

    goto :goto_1c
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/k;->j:Z

    if-eq v0, p1, :cond_e

    .line 366
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/k;->j:Z

    .line 367
    sget-object v0, Lcom/google/android/maps/driveabout/vector/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/k;->G:J

    .line 369
    :cond_e
    return-void
.end method

.method public b(FF)F
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 610
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->m:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    return v0
.end method

.method public b()Ln/Q;
    .registers 2

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 266
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-static {v0}, Ln/Q;->a(Ln/Q;)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x3fe0

    .line 351
    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42b4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 352
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->o:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4c

    .line 353
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/k;->o:F

    .line 354
    sget-object v0, Lcom/google/android/maps/driveabout/vector/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/k;->G:J

    .line 355
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->o:F

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double v0, v4, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/k;->m:F

    .line 356
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/k;->b(Z)V

    .line 357
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_4c

    .line 358
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    .line 359
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->D()V

    .line 362
    :cond_4c
    return-void
.end method

.method public b(Ln/Q;)[I
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 844
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 845
    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 846
    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;[F)V

    .line 847
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 848
    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v1, v3

    .line 849
    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, v1, v4

    .line 850
    return-object v1
.end method

.method public c(FF)F
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 637
    const/high16 v0, 0x41f0

    div-float v1, p1, p2

    const/high16 v2, 0x4380

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/k;->r:F

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/k;->a(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public c()Ln/Q;
    .registers 2

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 281
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public d(FF)Ln/Q;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    const/high16 v6, 0x3f80

    const-wide/high16 v9, 0x3ff0

    .line 678
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 679
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    if-nez v0, :cond_10

    .line 680
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->J()V

    .line 683
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->D:[F

    .line 687
    aput p1, v0, v3

    .line 688
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 689
    const/4 v2, 0x2

    aput v6, v0, v2

    .line 690
    const/4 v2, 0x3

    aput v6, v0, v2

    .line 691
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->C:[F

    move-object v4, v0

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 696
    const/4 v2, 0x7

    aget v2, v0, v2

    div-float v2, v6, v2

    .line 697
    aget v1, v0, v1

    mul-float/2addr v1, v2

    float-to-double v3, v1

    .line 698
    const/4 v1, 0x5

    aget v1, v0, v1

    mul-float/2addr v1, v2

    float-to-double v5, v1

    .line 699
    const/4 v1, 0x6

    aget v0, v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    .line 701
    cmpl-double v2, v0, v9

    if-ltz v2, :cond_3d

    .line 703
    const/4 v0, 0x0

    .line 715
    :goto_3c
    return-object v0

    .line 705
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v2

    .line 706
    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v7

    .line 707
    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v8

    .line 708
    invoke-virtual {v2}, Ln/Q;->h()I

    move-result v2

    .line 712
    sub-double v0, v9, v0

    div-double v0, v9, v0

    .line 713
    int-to-double v9, v2

    mul-double/2addr v3, v9

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v9}, Ln/Q;->f()I

    move-result v9

    int-to-double v9, v9

    add-double/2addr v3, v9

    int-to-double v9, v7

    sub-double/2addr v3, v9

    mul-double/2addr v3, v0

    int-to-double v9, v7

    add-double/2addr v3, v9

    .line 714
    int-to-double v9, v2

    mul-double/2addr v5, v9

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v2

    int-to-double v9, v2

    add-double/2addr v5, v9

    int-to-double v9, v8

    sub-double/2addr v5, v9

    mul-double/2addr v0, v5

    int-to-double v5, v8

    add-double v1, v0, v5

    .line 715
    new-instance v0, Ln/Q;

    double-to-int v3, v3

    double-to-int v1, v1

    invoke-direct {v0, v3, v1}, Ln/Q;-><init>(II)V

    goto :goto_3c
.end method

.method public d(F)Ln/aK;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 957
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 961
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->h()I

    move-result v0

    int-to-float v0, v0

    .line 962
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/k;->c(F)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 964
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v1

    sub-float v1, v0, v1

    .line 965
    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    .line 973
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/k;->m:F

    mul-float/2addr v2, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v2

    .line 975
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    .line 978
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    int-to-float v2, v2

    invoke-virtual {p0, v5, v2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v2

    .line 979
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v3

    .line 981
    invoke-virtual {p0, v5, v1}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v4

    .line 982
    iget v5, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    int-to-float v5, v5

    invoke-virtual {p0, v5, v1}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v5

    .line 985
    if-eqz v2, :cond_5e

    if-eqz v3, :cond_5e

    if-eqz v4, :cond_5e

    if-nez v5, :cond_a9

    .line 986
    :cond_5e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->toString()Ljava/lang/String;

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

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

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

    .line 991
    :cond_a9
    invoke-static {v2, v3, v4, v5}, Ln/aK;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Ln/aK;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/k;->j:Z

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 298
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1023
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 1024
    if-ne p0, p1, :cond_8

    .line 1035
    :cond_7
    :goto_7
    return v0

    .line 1025
    :cond_8
    instance-of v2, p1, Lcom/google/android/maps/driveabout/vector/k;

    if-eqz v2, :cond_3e

    .line 1026
    check-cast p1, Lcom/google/android/maps/driveabout/vector/k;

    .line 1027
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->l:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/k;->l:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->o:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/k;->o:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3c

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/k;->q:I

    if-ne v2, v3, :cond_3c

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/k;->p:I

    if-ne v2, v3, :cond_3c

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->r:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/k;->r:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    :cond_3c
    move v0, v1

    goto :goto_7

    :cond_3e
    move v0, v1

    .line 1035
    goto :goto_7
.end method

.method public f()I
    .registers 2

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 304
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    return v0
.end method

.method public g()F
    .registers 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 315
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->r:F

    return v0
.end method

.method public h()F
    .registers 2

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 321
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->o:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1009
    .line 1011
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->l:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1012
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    add-int/2addr v0, v1

    .line 1013
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    add-int/2addr v0, v1

    .line 1014
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->o:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1015
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->r:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1016
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    :goto_2b
    add-int/2addr v0, v1

    .line 1018
    return v0

    .line 1016
    :cond_2d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->hashCode()I

    move-result v0

    goto :goto_2b
.end method

.method public i()F
    .registers 2

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 343
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->l:F

    return v0
.end method

.method public j()F
    .registers 2

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 432
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v0

    return v0
.end method

.method public k()F
    .registers 2

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 437
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v0

    return v0
.end method

.method public l()F
    .registers 2

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 442
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    return v0
.end method

.method public m()F
    .registers 4

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 451
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->r:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/cJ;->a(D)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public n()Ln/Q;
    .registers 9

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 488
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->s:Ln/Q;

    if-nez v0, :cond_42

    .line 489
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->F()[D

    move-result-object v0

    .line 490
    new-instance v1, Ln/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->l:F

    neg-float v2, v2

    float-to-double v2, v2

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/k;->l:F

    neg-float v3, v3

    float-to-double v3, v3

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/k;->l:F

    neg-float v4, v4

    float-to-double v4, v4

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-direct {v1, v2, v3, v0}, Ln/Q;-><init>(III)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->s:Ln/Q;

    .line 494
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->s:Ln/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->s:Ln/Q;

    invoke-static {v0, v1, v2}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;)V

    .line 496
    :cond_42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->s:Ln/Q;

    return-object v0
.end method

.method public o()Ln/Q;
    .registers 9

    .prologue
    const-wide/high16 v6, 0x40f0

    const-wide v4, 0x4076800000000000L

    .line 504
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 505
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->u:Ln/Q;

    if-nez v0, :cond_5d

    .line 506
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v2

    if-ne v1, v2, :cond_66

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v2

    if-ne v1, v2, :cond_66

    .line 512
    :cond_35
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    .line 513
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_60

    .line 514
    add-double/2addr v0, v4

    .line 518
    :cond_44
    :goto_44
    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    .line 519
    new-instance v2, Ln/Q;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, Ln/Q;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->u:Ln/Q;

    .line 529
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->u:Ln/Q;

    return-object v0

    .line 515
    :cond_60
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_44

    .line 516
    sub-double/2addr v0, v4

    goto :goto_44

    .line 523
    :cond_66
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v1, v0}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v0

    .line 524
    sget-object v1, Lcom/google/android/maps/driveabout/vector/k;->f:Ln/Q;

    invoke-virtual {v0, v1}, Ln/Q;->g(Ln/Q;)Ln/Q;

    move-result-object v0

    .line 525
    const/high16 v1, 0x4780

    invoke-static {v0, v1, v0}, Ln/Q;->b(Ln/Q;FLn/Q;)V

    .line 526
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->u:Ln/Q;

    goto :goto_5d
.end method

.method public p()Ln/Q;
    .registers 11

    .prologue
    const-wide/high16 v8, 0x40f0

    const-wide/16 v6, 0x0

    const-wide v4, 0x4076800000000000L

    .line 536
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 537
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->t:Ln/Q;

    if-nez v0, :cond_62

    .line 538
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v6

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v2

    if-ne v1, v2, :cond_6b

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v2

    if-ne v1, v2, :cond_6b

    .line 544
    :cond_37
    const-wide v0, 0x4056800000000000L

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    .line 545
    cmpg-double v2, v0, v6

    if-gez v2, :cond_65

    .line 546
    add-double/2addr v0, v4

    .line 550
    :cond_49
    :goto_49
    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    .line 551
    new-instance v2, Ln/Q;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, Ln/Q;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->t:Ln/Q;

    .line 562
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->t:Ln/Q;

    return-object v0

    .line 547
    :cond_65
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_49

    .line 548
    sub-double/2addr v0, v4

    goto :goto_49

    .line 554
    :cond_6b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v1, v0}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v0

    .line 556
    const/high16 v1, 0x4680

    invoke-static {v0, v1, v0}, Ln/Q;->b(Ln/Q;FLn/Q;)V

    .line 557
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->o()Ln/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln/Q;->g(Ln/Q;)Ln/Q;

    move-result-object v0

    .line 558
    const/high16 v1, 0x4780

    invoke-static {v0, v1, v0}, Ln/Q;->b(Ln/Q;FLn/Q;)V

    .line 559
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->t:Ln/Q;

    goto :goto_62
.end method

.method public q()F
    .registers 3

    .prologue
    .line 570
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->w:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    .line 571
    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->h()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/k;->w:F

    .line 573
    :cond_15
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->w:F

    return v0
.end method

.method public r()F
    .registers 3

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 581
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/k;->p:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->q:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public s()F
    .registers 3

    .prologue
    .line 645
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->l:F

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v0

    return v0
.end method

.method public t()[F
    .registers 2

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 654
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->y:[F

    if-nez v0, :cond_a

    .line 655
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->H()V

    .line 657
    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->y:[F

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 996
    new-instance v0, Ln/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/k;->k:Ln/Q;

    invoke-virtual {v3}, Ln/Q;->h()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln/Q;-><init>(III)V

    .line 999
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

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()[F
    .registers 2

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 666
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->z:[F

    if-nez v0, :cond_a

    .line 667
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->G()V

    .line 669
    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->z:[F

    return-object v0
.end method

.method public v()Ln/aK;
    .registers 4

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 899
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->v:Ln/aK;

    if-nez v0, :cond_19

    .line 901
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/k;->o:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/k;->d(F)Ln/aK;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->v:Ln/aK;

    .line 904
    :cond_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->v:Ln/aK;

    return-object v0
.end method

.method public w()Ln/aK;
    .registers 7

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/k;->K()V

    .line 915
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 916
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v0

    .line 925
    :goto_12
    return-object v0

    .line 920
    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    .line 922
    const/high16 v1, 0x3f00

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/k;->m:F

    div-float/2addr v1, v2

    .line 923
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

    .line 925
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->i:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v1

    const v2, 0x42652ee1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/k;->d(F)Ln/aK;

    move-result-object v0

    goto :goto_12
.end method
