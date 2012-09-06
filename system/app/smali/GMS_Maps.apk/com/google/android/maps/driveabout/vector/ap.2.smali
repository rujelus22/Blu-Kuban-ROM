.class public Lcom/google/android/maps/driveabout/vector/aP;
.super Lcom/google/android/maps/driveabout/vector/Z;
.source "SourceFile"


# static fields
.field private static final c:[F

.field private static final d:F


# instance fields
.field private final A:Ljava/util/ArrayList;

.field private final B:Ljava/util/ArrayList;

.field private C:Z

.field private D:F

.field b:F

.field private final e:Ln/am;

.field private final f:Lcom/google/android/maps/driveabout/vector/bH;

.field private final g:Lcom/google/android/maps/driveabout/vector/bH;

.field private final h:Lcom/google/android/maps/driveabout/vector/dY;

.field private final i:Lcom/google/android/maps/driveabout/vector/cM;

.field private final j:Lcom/google/android/maps/driveabout/vector/p;

.field private final k:Lcom/google/android/maps/driveabout/vector/p;

.field private final l:Lcom/google/android/maps/driveabout/vector/bI;

.field private final m:Lcom/google/android/maps/driveabout/vector/p;

.field private final n:Lcom/google/android/maps/driveabout/vector/dY;

.field private final o:Lcom/google/android/maps/driveabout/vector/cM;

.field private final p:Lcom/google/android/maps/driveabout/vector/bI;

.field private final q:Lcom/google/android/maps/driveabout/vector/p;

.field private final r:Lcom/google/android/maps/driveabout/vector/dY;

.field private final s:Lcom/google/android/maps/driveabout/vector/t;

.field private final t:Lcom/google/android/maps/driveabout/vector/bI;

.field private final u:Lcom/google/android/maps/driveabout/vector/bI;

.field private final v:Lcom/google/android/maps/driveabout/vector/dY;

.field private final w:Lcom/google/android/maps/driveabout/vector/cM;

.field private final x:Lcom/google/android/maps/driveabout/vector/bI;

.field private y:Lu/e;

.field private final z:Ln/Q;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_16

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aP;->c:[F

    .line 78
    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/aP;->d:F

    return-void

    .line 45
    nop

    :array_16
    .array-data 0x4
        0xb8t 0xb7t 0x37t 0x3ft
        0xb8t 0xb7t 0x37t 0x3ft
        0xf0t 0xeft 0x6ft 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private constructor <init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aQ;Ljava/util/HashSet;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, -0x4080

    const/4 v3, 0x0

    .line 258
    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/Z;-><init>(Ljava/util/Set;)V

    .line 170
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->z:Ln/Q;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->C:Z

    .line 259
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Ln/am;

    .line 274
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->f:Lcom/google/android/maps/driveabout/vector/bH;

    .line 275
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->g:Lcom/google/android/maps/driveabout/vector/bH;

    .line 276
    const/4 v0, 0x1

    .line 277
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ec;

    iget v2, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/ec;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    .line 278
    new-instance v1, Lcom/google/android/maps/driveabout/vector/cP;

    iget v2, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cP;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/cM;

    .line 279
    new-instance v1, Lcom/google/android/maps/driveabout/vector/v;

    iget v2, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/v;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/p;

    .line 280
    new-instance v1, Lcom/google/android/maps/driveabout/vector/v;

    iget v2, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/v;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/p;

    .line 281
    new-instance v1, Lcom/google/android/maps/driveabout/vector/bK;

    iget v2, p2, Lcom/google/android/maps/driveabout/vector/aQ;->b:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    .line 285
    iget-object v0, p2, Lcom/google/android/maps/driveabout/vector/aQ;->i:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_d9

    .line 286
    new-instance v0, Lcom/google/android/maps/driveabout/vector/v;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/v;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    .line 292
    :goto_53
    iget v0, p2, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    if-lez v0, :cond_dd

    .line 293
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ec;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ec;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    .line 294
    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/aU;->D()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/t;-><init>(ILcom/google/android/maps/driveabout/vector/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/t;

    .line 296
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bK;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->d:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/bI;

    .line 300
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bK;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->b:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    .line 308
    :goto_7f
    iget v0, p2, Lcom/google/android/maps/driveabout/vector/aQ;->e:I

    if-lez v0, :cond_e6

    .line 309
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ec;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->e:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ec;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    .line 310
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cP;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->e:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cP;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    .line 311
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bK;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->f:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:Lcom/google/android/maps/driveabout/vector/bI;

    .line 317
    :goto_9e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->A:Ljava/util/ArrayList;

    .line 318
    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aP;->b:F

    .line 320
    iget v0, p2, Lcom/google/android/maps/driveabout/vector/aQ;->g:I

    if-lez v0, :cond_ed

    .line 321
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ec;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->g:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ec;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    .line 322
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cP;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->g:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cP;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    .line 323
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bK;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->h:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bI;

    .line 324
    new-instance v0, Lcom/google/android/maps/driveabout/vector/v;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->g:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/v;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    .line 331
    :goto_cf
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->B:Ljava/util/ArrayList;

    .line 332
    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aP;->D:F

    .line 333
    return-void

    .line 288
    :cond_d9
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    goto/16 :goto_53

    .line 302
    :cond_dd
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    .line 303
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/t;

    .line 304
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/bI;

    .line 305
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    goto :goto_7f

    .line 313
    :cond_e6
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    .line 314
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    .line 315
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:Lcom/google/android/maps/driveabout/vector/bI;

    goto :goto_9e

    .line 326
    :cond_ed
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    .line 327
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    .line 328
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bI;

    .line 329
    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    goto :goto_cf
.end method

.method private static a(F)F
    .registers 4
    .parameter

    .prologue
    .line 861
    float-to-int v1, p0

    .line 862
    int-to-float v0, v1

    sub-float v0, p0, v0

    const/high16 v2, 0x3f00

    cmpl-float v0, v0, v2

    if-lez v0, :cond_17

    sget v0, Lcom/google/android/maps/driveabout/vector/aP;->d:F

    .line 863
    :goto_c
    const/4 v2, 0x1

    rsub-int/lit8 v1, v1, 0x1e

    shl-int v1, v2, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4380

    div-float/2addr v0, v1

    return v0

    .line 862
    :cond_17
    const/high16 v0, 0x3f80

    goto :goto_c
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;)F
    .registers 4
    .parameter

    .prologue
    .line 844
    const/high16 v0, 0x40c0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(F)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a(Ln/ag;)F
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 870
    invoke-virtual {p0}, Ln/ag;->b()I

    move-result v0

    if-nez v0, :cond_8

    .line 886
    :cond_7
    return v1

    .line 883
    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Ln/ag;->b()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 884
    invoke-virtual {p0, v0}, Ln/ag;->b(I)Ln/af;

    move-result-object v2

    invoke-virtual {v2}, Ln/af;->c()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private static a(FI)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 770
    int-to-float v0, p1

    sub-float v0, p0, v0

    .line 771
    const/high16 v1, 0x4080

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_b

    .line 772
    const/4 v0, 0x2

    .line 782
    :goto_a
    return v0

    .line 773
    :cond_b
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_13

    .line 774
    const/4 v0, 0x3

    goto :goto_a

    .line 775
    :cond_13
    const/high16 v1, 0x4010

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1b

    .line 776
    const/4 v0, 0x4

    goto :goto_a

    .line 777
    :cond_1b
    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_27

    const/16 v0, 0x11

    if-lt p1, v0, :cond_27

    .line 780
    const/4 v0, 0x5

    goto :goto_a

    .line 782
    :cond_27
    const/16 v0, 0x16

    goto :goto_a
.end method

.method private static a(FILcom/google/android/maps/driveabout/vector/D;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 792
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p2, v0, :cond_f

    .line 793
    const/high16 v0, 0x4180

    cmpg-float v0, p0, v0

    if-gez v0, :cond_c

    .line 794
    const/4 v0, 0x7

    .line 812
    :goto_b
    return v0

    .line 796
    :cond_c
    const/16 v0, 0x15

    goto :goto_b

    .line 800
    :cond_f
    int-to-float v0, p1

    sub-float v0, p0, v0

    .line 801
    const/high16 v1, 0x4080

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1a

    .line 802
    const/4 v0, 0x1

    goto :goto_b

    .line 803
    :cond_1a
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_22

    .line 804
    const/4 v0, 0x2

    goto :goto_b

    .line 805
    :cond_22
    const/high16 v1, 0x4010

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2a

    .line 806
    const/4 v0, 0x3

    goto :goto_b

    .line 807
    :cond_2a
    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_36

    const/16 v0, 0x11

    if-lt p1, v0, :cond_36

    .line 810
    const/4 v0, 0x4

    goto :goto_b

    .line 812
    :cond_36
    const/4 v0, 0x6

    goto :goto_b
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    .line 339
    sget-object v2, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p1, v2, :cond_f

    const/high16 v2, 0x418c

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_11

    .line 340
    :cond_f
    const/16 v0, 0x20

    .line 342
    :cond_11
    sget-object v2, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p1, v2, :cond_17

    .line 347
    or-int/lit8 v0, v0, 0x14

    .line 350
    :cond_17
    const/high16 v2, 0x4178

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_27

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p1, v1, :cond_25

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p1, v1, :cond_27

    .line 352
    :cond_25
    or-int/lit8 v0, v0, 0x40

    .line 355
    :cond_27
    or-int/lit16 v0, v0, 0x180

    .line 357
    return v0
.end method

.method public static a(Ln/am;[Ljava/lang/String;Ln/aI;Lz/z;Lz/z;Lcom/google/android/maps/driveabout/vector/cK;Lcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/aP;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-virtual {p0}, Ln/am;->h()Ln/aa;

    move-result-object v2

    .line 213
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 215
    new-instance v6, Ljava/util/ArrayList;

    const/16 v1, 0x200

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    invoke-virtual {p0}, Ln/am;->b()I

    move-result v7

    .line 217
    new-instance v8, Lcom/google/android/maps/driveabout/vector/aQ;

    invoke-direct {v8}, Lcom/google/android/maps/driveabout/vector/aQ;-><init>()V

    .line 218
    new-instance v4, Lcom/google/android/maps/driveabout/vector/aR;

    invoke-direct {v4}, Lcom/google/android/maps/driveabout/vector/aR;-><init>()V

    .line 220
    :goto_1e
    invoke-interface {p2}, Ln/aI;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 221
    invoke-interface {p2}, Ln/aI;->b()Ln/l;

    move-result-object v3

    .line 222
    instance-of v1, v3, Ln/ac;

    if-nez v1, :cond_50

    .line 246
    :cond_2c
    new-instance v1, Lcom/google/android/maps/driveabout/vector/aP;

    move-object/from16 v0, p6

    invoke-direct {v1, p0, v8, v5, v0}, Lcom/google/android/maps/driveabout/vector/aP;-><init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aQ;Ljava/util/HashSet;Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 247
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Lcom/google/android/maps/driveabout/vector/bc;

    move-result-object v5

    .line 248
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/ac;

    .line 249
    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/aP;->a(Ln/ac;Lcom/google/android/maps/driveabout/vector/aR;)V

    move-object/from16 v6, p5

    .line 250
    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/aP;->a(Ln/aa;Ln/ac;Lcom/google/android/maps/driveabout/vector/aR;Lcom/google/android/maps/driveabout/vector/bc;Lcom/google/android/maps/driveabout/vector/cK;)V

    goto :goto_3b

    :cond_50
    move-object v1, v3

    .line 225
    check-cast v1, Ln/ac;

    .line 226
    invoke-static {v1, v4}, Lcom/google/android/maps/driveabout/vector/aP;->a(Ln/ac;Lcom/google/android/maps/driveabout/vector/aR;)V

    .line 227
    invoke-static {v7, v1, v4, v8}, Lcom/google/android/maps/driveabout/vector/aP;->a(ILn/ac;Lcom/google/android/maps/driveabout/vector/aR;Lcom/google/android/maps/driveabout/vector/aQ;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 230
    invoke-interface {v3}, Ln/l;->l()[I

    move-result-object v9

    array-length v10, v9

    const/4 v3, 0x0

    :goto_62
    if-ge v3, v10, :cond_73

    aget v11, v9, v3

    .line 231
    if-ltz v11, :cond_70

    array-length v12, p1

    if-ge v11, v12, :cond_70

    .line 232
    aget-object v11, p1, v11

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 235
    :cond_73
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {p2}, Ln/aI;->next()Ljava/lang/Object;

    goto :goto_1e

    :cond_7a
    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 252
    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/aP;->a(Ln/am;Lz/z;Lz/z;Lcom/google/android/maps/driveabout/vector/cK;Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 253
    return-object v1
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;FILcom/google/android/maps/driveabout/vector/D;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 367
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 371
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->m()V

    .line 374
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 375
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/aP;->a(FI)I

    move-result v1

    .line 376
    invoke-static {p0, v1}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 377
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;FLcom/google/android/maps/driveabout/vector/D;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 404
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 405
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 406
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 407
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 408
    return-void
.end method

.method private a(Ln/U;Ln/Q;II)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    .line 1149
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v2

    .line 1150
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_32

    .line 1151
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->z:Ln/Q;

    invoke-virtual {p1, v0, v3}, Ln/U;->a(ILn/Q;)V

    .line 1152
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->z:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aP;->z:Ln/Q;

    invoke-static {v3, p2, v4}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 1153
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aP;->z:Ln/Q;

    invoke-virtual {v3, v4, p3}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1154
    if-lez v0, :cond_2f

    .line 1155
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/bI;

    add-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    add-int v5, v1, v0

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 1150
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1159
    :cond_32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p4, v2}, Lcom/google/android/maps/driveabout/vector/t;->a(II)V

    .line 1160
    return-void
.end method

.method private a(Ln/aa;Ln/ac;Lcom/google/android/maps/driveabout/vector/aR;Lcom/google/android/maps/driveabout/vector/bc;Lcom/google/android/maps/driveabout/vector/cK;)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 990
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/aR;->a:Z

    if-nez v1, :cond_7

    .line 1083
    :goto_6
    return-void

    .line 994
    :cond_7
    const/4 v9, 0x0

    .line 995
    const/4 v10, 0x0

    .line 998
    invoke-virtual/range {p2 .. p2}, Ln/ac;->e()Ln/ag;

    move-result-object v1

    .line 999
    invoke-virtual {v1}, Ln/ag;->b()I

    move-result v2

    if-lez v2, :cond_22

    .line 1000
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ln/ag;->b(I)Ln/af;

    move-result-object v1

    .line 1001
    if-eqz v1, :cond_22

    .line 1002
    invoke-virtual {v1}, Ln/af;->f()Z

    move-result v9

    .line 1003
    invoke-virtual {v1}, Ln/af;->g()Z

    move-result v10

    .line 1010
    :cond_22
    invoke-virtual/range {p1 .. p1}, Ln/aa;->d()Ln/Q;

    move-result-object v4

    .line 1011
    invoke-virtual/range {p1 .. p1}, Ln/aa;->g()I

    move-result v5

    .line 1014
    invoke-virtual/range {p2 .. p2}, Ln/ac;->b()Ln/U;

    move-result-object v2

    .line 1015
    move-object/from16 v0, p3

    iget v1, v0, Lcom/google/android/maps/driveabout/vector/aR;->c:F

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lcom/google/android/maps/driveabout/vector/aP;->c(FI)F

    move-result v3

    .line 1016
    move-object/from16 v0, p3

    iget v1, v0, Lcom/google/android/maps/driveabout/vector/aR;->e:I

    if-nez v1, :cond_4a

    move-object/from16 v0, p3

    iget v1, v0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    if-nez v1, :cond_4a

    move-object/from16 v0, p3

    iget v1, v0, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    if-eqz v1, :cond_b7

    .line 1025
    :cond_4a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v12

    .line 1026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->b()I

    move-result v13

    .line 1027
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/cM;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v11, 0x0

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ln/U;FLn/Q;ILcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/cO;Lcom/google/android/maps/driveabout/vector/bJ;ZZB)I

    .line 1029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    sub-int/2addr v1, v12

    .line 1030
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/p;

    move-object/from16 v0, p3

    iget v7, v0, Lcom/google/android/maps/driveabout/vector/aR;->e:I

    invoke-virtual {v6, v7, v1}, Lcom/google/android/maps/driveabout/vector/p;->b(II)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/p;

    move-object/from16 v0, p3

    iget v7, v0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    invoke-virtual {v6, v7, v1}, Lcom/google/android/maps/driveabout/vector/p;->b(II)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v6, :cond_a2

    move-object/from16 v0, p3

    iget v6, v0, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    if-eqz v6, :cond_a2

    .line 1034
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    move-object/from16 v0, p3

    iget v7, v0, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    invoke-virtual {v6, v7, v1}, Lcom/google/android/maps/driveabout/vector/p;->b(II)V

    .line 1037
    :cond_a2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v1, :cond_b7

    .line 1038
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/aR;->b:Z

    if-eqz v1, :cond_130

    .line 1041
    move-object/from16 v0, p3

    iget v1, v0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(Ln/U;Ln/Q;II)V

    .line 1056
    :cond_b7
    :goto_b7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->e:Ln/am;

    invoke-virtual {v1}, Ln/am;->b()I

    move-result v1

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/aP;->a(ILn/ac;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 1064
    const/4 v9, 0x0

    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/vector/aP;->x:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v15, 0x0

    move-object/from16 v6, p4

    move-object v7, v2

    move v8, v3

    move-object v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v15}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ln/U;FZLn/Q;IFLcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;Lcom/google/android/maps/driveabout/vector/cO;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->A:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    :cond_e5
    move-object/from16 v0, p3

    iget v1, v0, Lcom/google/android/maps/driveabout/vector/aR;->g:I

    if-eqz v1, :cond_126

    .line 1073
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    .line 1074
    const/4 v9, 0x0

    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v15, 0x0

    move-object/from16 v6, p4

    move-object v7, v2

    move v8, v3

    move-object v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v15}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ln/U;FZLn/Q;IFLcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;Lcom/google/android/maps/driveabout/vector/cO;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v2

    sub-int v1, v2, v1

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/aR;->g:I

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/vector/p;->b(II)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->B:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    :cond_126
    invoke-virtual/range {p2 .. p2}, Ln/ac;->r()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->C:Z

    goto/16 :goto_6

    .line 1045
    :cond_130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/bI;->b()I

    move-result v7

    sub-int/2addr v7, v13

    invoke-virtual {v1, v6, v13, v7}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/bI;II)V

    goto/16 :goto_b7
.end method

.method static a(Ln/ac;Lcom/google/android/maps/driveabout/vector/aR;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 1332
    invoke-virtual {p0}, Ln/ac;->e()Ln/ag;

    move-result-object v6

    .line 1333
    invoke-static {v6}, Lcom/google/android/maps/driveabout/vector/aP;->a(Ln/ag;)F

    move-result v0

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->c:F

    .line 1334
    iput v5, p1, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    .line 1335
    iput v5, p1, Lcom/google/android/maps/driveabout/vector/aR;->e:I

    .line 1336
    iput v5, p1, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    .line 1337
    invoke-virtual {v6}, Ln/ag;->b()I

    move-result v0

    if-lt v0, v1, :cond_83

    .line 1338
    invoke-virtual {v6, v5}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->b()I

    move-result v0

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    .line 1339
    invoke-virtual {v6, v4}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->b()I

    move-result v0

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->e:I

    .line 1340
    invoke-virtual {v6}, Ln/ag;->b()I

    move-result v0

    if-le v0, v1, :cond_50

    move v0, v1

    .line 1345
    :goto_35
    invoke-virtual {v6}, Ln/ag;->b()I

    move-result v2

    if-ge v0, v2, :cond_111

    .line 1346
    invoke-virtual {v6, v0}, Ln/ag;->b(I)Ln/af;

    move-result-object v2

    invoke-virtual {v2}, Ln/af;->d()[I

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_80

    .line 1351
    :goto_46
    invoke-virtual {v6, v0}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->b()I

    move-result v0

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    .line 1360
    :cond_50
    :goto_50
    iput v5, p1, Lcom/google/android/maps/driveabout/vector/aR;->g:I

    .line 1361
    invoke-virtual {v6}, Ln/ag;->b()I

    move-result v0

    if-le v0, v1, :cond_a7

    move v0, v1

    move v2, v3

    .line 1362
    :goto_5a
    invoke-virtual {v6}, Ln/ag;->b()I

    move-result v7

    if-ge v0, v7, :cond_a7

    .line 1363
    invoke-virtual {v6, v0}, Ln/ag;->b(I)Ln/af;

    move-result-object v7

    invoke-virtual {v7}, Ln/af;->d()[I

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_94

    .line 1364
    invoke-virtual {v6, v0}, Ln/ag;->b(I)Ln/af;

    move-result-object v2

    invoke-virtual {v2}, Ln/af;->c()F

    move-result v2

    .line 1365
    invoke-virtual {v6, v0}, Ln/ag;->b(I)Ln/af;

    move-result-object v7

    invoke-virtual {v7}, Ln/af;->b()I

    move-result v7

    iput v7, p1, Lcom/google/android/maps/driveabout/vector/aR;->g:I

    .line 1362
    :cond_7d
    :goto_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 1345
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 1353
    :cond_83
    invoke-virtual {v6}, Ln/ag;->b()I

    move-result v0

    if-lt v0, v4, :cond_50

    .line 1354
    invoke-virtual {v6, v5}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->b()I

    move-result v0

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->e:I

    goto :goto_50

    .line 1366
    :cond_94
    iget v7, p1, Lcom/google/android/maps/driveabout/vector/aR;->g:I

    if-eqz v7, :cond_7d

    invoke-virtual {v6, v0}, Ln/ag;->b(I)Ln/af;

    move-result-object v7

    invoke-virtual {v7}, Ln/af;->c()F

    move-result v7

    cmpl-float v7, v7, v2

    if-lez v7, :cond_7d

    .line 1370
    iput v5, p1, Lcom/google/android/maps/driveabout/vector/aR;->g:I

    goto :goto_7d

    .line 1377
    :cond_a7
    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->g:I

    if-eqz v0, :cond_ad

    .line 1378
    iput v5, p1, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    .line 1384
    :cond_ad
    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    if-eqz v0, :cond_cb

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->e:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/u;->a(I)I

    move-result v0

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/u;->a(I)I

    move-result v2

    if-lt v0, v2, :cond_c7

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->c:F

    const/high16 v2, 0x4110

    cmpg-float v0, v0, v2

    if-gez v0, :cond_cb

    .line 1388
    :cond_c7
    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->e:I

    .line 1395
    :cond_cb
    invoke-virtual {p0}, Ln/ac;->b()Ln/U;

    move-result-object v0

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    if-lt v0, v1, :cond_10d

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->c:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_10d

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->e:I

    if-nez v0, :cond_f1

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    if-nez v0, :cond_f1

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    if-nez v0, :cond_f1

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->g:I

    if-nez v0, :cond_f1

    invoke-virtual {p0}, Ln/ac;->p()Z

    move-result v0

    if-eqz v0, :cond_10d

    :cond_f1
    move v0, v4

    :goto_f2
    iput-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->a:Z

    .line 1405
    invoke-virtual {p0}, Ln/ac;->q()Z

    move-result v0

    if-eqz v0, :cond_10f

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->g:I

    if-nez v0, :cond_10f

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    if-nez v0, :cond_10f

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aR;->e:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/u;->c(I)Z

    move-result v0

    if-nez v0, :cond_10f

    :goto_10a
    iput-boolean v4, p1, Lcom/google/android/maps/driveabout/vector/aR;->b:Z

    .line 1410
    return-void

    :cond_10d
    move v0, v5

    .line 1395
    goto :goto_f2

    :cond_10f
    move v4, v5

    .line 1405
    goto :goto_10a

    :cond_111
    move v0, v1

    goto/16 :goto_46
.end method

.method private a(Ln/ac;Lcom/google/android/maps/driveabout/vector/cO;F)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 668
    const/high16 v0, 0x4180

    mul-float/2addr v0, p3

    .line 669
    const/high16 v1, 0x3f80

    div-float v4, v1, p3

    .line 670
    const/high16 v1, 0x3f80

    div-float v5, v1, v0

    .line 672
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Ln/am;

    invoke-virtual {v0}, Ln/am;->h()Ln/aa;

    move-result-object v0

    invoke-virtual {v0}, Ln/aa;->g()I

    move-result v0

    .line 673
    invoke-virtual {p1}, Ln/ac;->b()Ln/U;

    move-result-object v6

    .line 674
    invoke-virtual {v6}, Ln/U;->b()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .line 675
    invoke-virtual {p1}, Ln/ac;->e()Ln/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(Ln/ag;)F

    move-result v1

    .line 676
    const/high16 v2, 0x4000

    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/vector/aP;->c(FI)F

    move-result v0

    mul-float v8, v2, v0

    .line 679
    const/4 v0, 0x0

    move v3, v0

    :goto_31
    if-ge v3, v7, :cond_92

    .line 680
    invoke-virtual {v6, v3}, Ln/U;->b(I)F

    move-result v9

    .line 681
    const/4 v2, 0x0

    .line 682
    const/4 v1, 0x0

    .line 683
    const/4 v0, 0x0

    .line 687
    mul-float/2addr v9, v5

    .line 688
    const/high16 v10, 0x3f00

    cmpl-float v10, v9, v10

    if-lez v10, :cond_7e

    .line 689
    mul-float v1, v8, v4

    const/high16 v2, 0x4700

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 691
    const/high16 v1, 0x4780

    mul-float/2addr v1, v9

    float-to-int v1, v1

    .line 692
    float-to-int v10, v9

    int-to-float v10, v10

    sub-float/2addr v9, v10

    .line 695
    const/high16 v10, 0x3e00

    cmpl-float v10, v9, v10

    if-lez v10, :cond_5d

    const/high16 v10, 0x3ec0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5d

    .line 696
    const v0, 0xa000

    .line 706
    :cond_5d
    :goto_5d
    const v9, 0x8000

    sub-int/2addr v9, v2

    .line 707
    const v10, 0x8000

    add-int/2addr v2, v10

    .line 708
    invoke-virtual {p1}, Ln/ac;->k()Z

    move-result v10

    if-eqz v10, :cond_82

    .line 709
    add-int v10, v1, v0

    invoke-interface {p2, v2, v10}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 710
    add-int/2addr v1, v0

    invoke-interface {p2, v9, v1}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 711
    invoke-interface {p2, v9, v0}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 712
    invoke-interface {p2, v2, v0}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 679
    :goto_7a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_31

    .line 702
    :cond_7e
    const v0, 0xc000

    goto :goto_5d

    .line 714
    :cond_82
    invoke-interface {p2, v9, v0}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 715
    invoke-interface {p2, v2, v0}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 716
    add-int v10, v1, v0

    invoke-interface {p2, v2, v10}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 717
    add-int/2addr v0, v1

    invoke-interface {p2, v9, v0}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    goto :goto_7a

    .line 720
    :cond_92
    return-void
.end method

.method private a(Ln/am;Lz/z;Lz/z;Lcom/google/android/maps/driveabout/vector/cK;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1088
    return-void
.end method

.method private static a(ILn/ac;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1164
    const/16 v0, 0xe

    if-lt p0, v0, :cond_c

    invoke-virtual {p1}, Ln/ac;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static a(ILn/ac;Lcom/google/android/maps/driveabout/vector/aR;Lcom/google/android/maps/driveabout/vector/aQ;)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 928
    invoke-virtual {p1}, Ln/ac;->b()Ln/U;

    move-result-object v3

    .line 929
    invoke-virtual {v3}, Ln/U;->b()I

    move-result v4

    .line 930
    add-int/lit8 v5, v4, -0x1

    .line 931
    iget-boolean v0, p2, Lcom/google/android/maps/driveabout/vector/aR;->a:Z

    if-nez v0, :cond_11

    .line 977
    :cond_10
    :goto_10
    return v1

    .line 935
    :cond_11
    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ln/U;)I

    move-result v6

    .line 936
    iget v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    if-lez v0, :cond_22

    iget v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    add-int/2addr v0, v6

    const/16 v7, 0x4000

    if-le v0, v7, :cond_22

    move v1, v2

    .line 938
    goto :goto_10

    .line 940
    :cond_22
    invoke-virtual {p1}, Ln/ac;->e()Ln/ag;

    move-result-object v7

    .line 943
    iget v0, p2, Lcom/google/android/maps/driveabout/vector/aR;->f:I

    if-eqz v0, :cond_5d

    move v0, v1

    .line 944
    :goto_2b
    iget-object v8, p3, Lcom/google/android/maps/driveabout/vector/aQ;->i:Ljava/lang/Boolean;

    if-nez v8, :cond_5f

    .line 945
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->i:Ljava/lang/Boolean;

    .line 952
    :cond_35
    iget v0, p2, Lcom/google/android/maps/driveabout/vector/aR;->g:I

    if-eqz v0, :cond_69

    .line 953
    :goto_39
    invoke-virtual {v7}, Ln/ag;->b()I

    move-result v0

    if-ge v2, v0, :cond_69

    .line 954
    invoke-virtual {v7, v2}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->d()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_5a

    .line 955
    mul-int/lit8 v0, v5, 0x4

    .line 956
    mul-int/lit8 v8, v5, 0x2

    .line 957
    iget v9, p3, Lcom/google/android/maps/driveabout/vector/aQ;->g:I

    add-int/2addr v0, v9

    iput v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->g:I

    .line 958
    iget v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->h:I

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v0, v8

    iput v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->h:I

    .line 953
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_5d
    move v0, v2

    .line 943
    goto :goto_2b

    .line 946
    :cond_5f
    iget-object v8, p3, Lcom/google/android/maps/driveabout/vector/aQ;->i:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eq v8, v0, :cond_35

    move v1, v2

    .line 949
    goto :goto_10

    .line 963
    :cond_69
    iget v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    add-int/2addr v0, v6

    iput v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    .line 964
    iget v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->b:I

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/bc;->b(Ln/U;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->b:I

    .line 966
    iget-boolean v0, p2, Lcom/google/android/maps/driveabout/vector/aR;->b:Z

    if-eqz v0, :cond_87

    .line 967
    iget v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    add-int/2addr v0, v4

    iput v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    .line 968
    iget v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->d:I

    mul-int/lit8 v2, v5, 0x2

    add-int/2addr v0, v2

    iput v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->d:I

    .line 971
    :cond_87
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/vector/aP;->a(ILn/ac;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 972
    mul-int/lit8 v0, v5, 0x4

    .line 973
    mul-int/lit8 v2, v5, 0x2

    .line 974
    iget v3, p3, Lcom/google/android/maps/driveabout/vector/aQ;->e:I

    add-int/2addr v0, v3

    iput v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->e:I

    .line 975
    iget v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->f:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    iput v0, p3, Lcom/google/android/maps/driveabout/vector/aQ;->f:I

    goto/16 :goto_10
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/k;)F
    .registers 4
    .parameter

    .prologue
    .line 852
    const/high16 v0, 0x40c0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(F)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private static b(FI)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 822
    int-to-float v0, p1

    sub-float v0, p0, v0

    .line 823
    const/high16 v1, 0x4080

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_c

    .line 824
    const/16 v0, 0x19

    .line 834
    :goto_b
    return v0

    .line 825
    :cond_c
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_15

    .line 826
    const/16 v0, 0x1a

    goto :goto_b

    .line 827
    :cond_15
    const/high16 v1, 0x4010

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1e

    .line 828
    const/16 v0, 0x1b

    goto :goto_b

    .line 829
    :cond_1e
    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2b

    const/16 v0, 0x11

    if-lt p1, v0, :cond_2b

    .line 832
    const/16 v0, 0x1c

    goto :goto_b

    .line 834
    :cond_2b
    const/16 v0, 0x1d

    goto :goto_b
.end method

.method public static b(Lcom/google/android/maps/driveabout/vector/aU;FILcom/google/android/maps/driveabout/vector/D;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 386
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 390
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 392
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->m()V

    .line 393
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 394
    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aP;->a(FILcom/google/android/maps/driveabout/vector/D;)I

    move-result v1

    .line 395
    invoke-static {p0, v1}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 396
    return-void
.end method

.method public static b(Lcom/google/android/maps/driveabout/vector/aU;FLcom/google/android/maps/driveabout/vector/D;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 426
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 427
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 428
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->m()V

    .line 429
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 430
    const/16 v1, 0x1e

    invoke-static {p0, v1}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 431
    return-void
.end method

.method private c(FI)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Ln/am;

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_13

    const/high16 v0, 0x3f00

    .line 903
    :goto_c
    int-to-float v1, p2

    mul-float/2addr v1, p1

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0

    .line 902
    :cond_13
    const v0, 0x3e99999a

    goto :goto_c
.end method

.method public static c(Lcom/google/android/maps/driveabout/vector/aU;FILcom/google/android/maps/driveabout/vector/D;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 414
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 415
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 416
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->m()V

    .line 417
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 418
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/aP;->b(FI)I

    move-result v1

    .line 419
    invoke-static {p0, v1}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 420
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cM;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1176
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v1, :cond_2d

    .line 1177
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1179
    :cond_2d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v1, :cond_38

    .line 1180
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1182
    :cond_38
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/t;

    if-eqz v1, :cond_43

    .line 1183
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 1185
    :cond_43
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_4e

    .line 1186
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1188
    :cond_4e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_59

    .line 1189
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1191
    :cond_59
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v1, :cond_64

    .line 1192
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1194
    :cond_64
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    if-eqz v1, :cond_6f

    .line 1195
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cM;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1197
    :cond_6f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_7a

    .line 1198
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1201
    :cond_7a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v1, :cond_85

    .line 1202
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1204
    :cond_85
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    if-eqz v1, :cond_90

    .line 1205
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cM;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1207
    :cond_90
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_9b

    .line 1208
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1210
    :cond_9b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v1, :cond_a6

    .line 1211
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1214
    :cond_a6
    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 590
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 591
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 592
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 593
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 595
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_22

    .line 596
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 599
    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_3a

    .line 600
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 601
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 602
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 603
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 606
    :cond_3a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_4d

    .line 607
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 608
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 609
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 613
    :cond_4d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_65

    .line 614
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 615
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 616
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 617
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 619
    :cond_65
    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aU;F)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 642
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->b:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    .line 663
    :goto_6
    return-void

    .line 645
    :cond_7
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/aP;->b:F

    .line 649
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 650
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    .line 654
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 655
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 656
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ac;

    .line 657
    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/maps/driveabout/vector/aP;->a(Ln/ac;Lcom/google/android/maps/driveabout/vector/cO;F)V

    goto :goto_16

    .line 661
    :cond_26
    new-instance v0, Lu/e;

    const-wide/16 v1, 0x1f4

    sget-object v3, Lu/g;->a:Lu/g;

    invoke-direct {v0, v1, v2, v3}, Lu/e;-><init>(JLu/g;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->y:Lu/e;

    goto :goto_6
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x1

    const v7, 0xb7b7

    const-wide/16 v5, 0x0

    const/high16 v3, 0x3e80

    const/4 v4, 0x4

    .line 443
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Ln/am;

    invoke-virtual {v2}, Ln/am;->b()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 444
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_10c

    .line 541
    :cond_1d
    :goto_1d
    :pswitch_1d
    return-void

    .line 446
    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v1, :cond_1d

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1d

    .line 450
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 452
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/r;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 453
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 454
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/r;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_1d

    .line 458
    :pswitch_3d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 459
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 460
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/p;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 461
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_54

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5a

    .line 463
    :cond_54
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto :goto_1d

    .line 465
    :cond_5a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto :goto_1d

    .line 470
    :pswitch_60
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 471
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 472
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/p;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 473
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_77

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7d

    .line 475
    :cond_77
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto :goto_1d

    .line 477
    :cond_7d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto :goto_1d

    .line 482
    :pswitch_83
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_1d

    .line 485
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lcom/google/android/maps/driveabout/vector/k;)F

    move-result v0

    .line 486
    float-to-double v2, v0

    cmpg-double v2, v2, v5

    if-lez v2, :cond_1d

    .line 490
    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lcom/google/android/maps/driveabout/vector/aU;F)V

    .line 492
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->y:Lu/e;

    if-eqz v0, :cond_10a

    .line 493
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->y:Lu/e;

    invoke-virtual {v0, p1}, Lu/e;->a(Lcom/google/android/maps/driveabout/vector/aU;)I

    move-result v0

    .line 494
    if-ne v0, v1, :cond_a2

    .line 495
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->y:Lu/e;

    .line 498
    :cond_a2
    :goto_a2
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0xe5e5

    invoke-interface {v1, v7, v7, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 499
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 501
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto/16 :goto_1d

    .line 508
    :pswitch_bb
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v1, :cond_1d

    .line 511
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 512
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 513
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/p;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 514
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_d6

    cmpl-float v0, v0, v3

    if-lez v0, :cond_dd

    .line 516
    :cond_d6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto/16 :goto_1d

    .line 518
    :cond_dd
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto/16 :goto_1d

    .line 526
    :pswitch_e4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_1d

    .line 529
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aP;->b(Lcom/google/android/maps/driveabout/vector/k;)F

    move-result v0

    .line 530
    float-to-double v1, v0

    cmpg-double v1, v1, v5

    if-lez v1, :cond_1d

    .line 534
    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/aP;->b(Lcom/google/android/maps/driveabout/vector/aU;F)V

    .line 535
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 536
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 537
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 538
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto/16 :goto_1d

    :cond_10a
    move v0, v1

    goto :goto_a2

    .line 444
    :pswitch_data_10c
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1d
        :pswitch_3d
        :pswitch_60
        :pswitch_83
        :pswitch_bb
        :pswitch_e4
    .end packed-switch
.end method

.method public b()I
    .registers 4

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0x1d0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cM;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1229
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v1, :cond_2f

    .line 1230
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1232
    :cond_2f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v1, :cond_3a

    .line 1233
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1235
    :cond_3a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/t;

    if-eqz v1, :cond_45

    .line 1236
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1238
    :cond_45
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_50

    .line 1239
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1241
    :cond_50
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_5b

    .line 1242
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1244
    :cond_5b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v1, :cond_66

    .line 1245
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1247
    :cond_66
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    if-eqz v1, :cond_71

    .line 1248
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cM;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1250
    :cond_71
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_7c

    .line 1251
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1254
    :cond_7c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v1, :cond_87

    .line 1255
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1257
    :cond_87
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    if-eqz v1, :cond_92

    .line 1258
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cM;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1260
    :cond_92
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v1, :cond_9d

    .line 1261
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1263
    :cond_9d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v1, :cond_a8

    .line 1264
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1271
    :cond_a8
    add-int/lit8 v0, v0, 0x18

    .line 1272
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ac;

    .line 1273
    invoke-virtual {v0}, Ln/ac;->m()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_b1

    .line 1280
    :cond_c4
    add-int/lit8 v0, v1, 0x18

    .line 1281
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ac;

    .line 1282
    invoke-virtual {v0}, Ln/ac;->m()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_cd

    .line 1286
    :cond_e0
    return v1
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 552
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 553
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 554
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 555
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 557
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_22

    .line 558
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 561
    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_3a

    .line 562
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 563
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 564
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 565
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 568
    :cond_3a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_4d

    .line 569
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 570
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 571
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 575
    :cond_4d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_65

    .line 576
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 577
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 578
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 579
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 581
    :cond_65
    return-void
.end method

.method b(Lcom/google/android/maps/driveabout/vector/aU;F)V
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 728
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->D:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    .line 762
    :cond_6
    return-void

    .line 731
    :cond_7
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/aP;->D:F

    .line 734
    const/high16 v0, 0x4180

    mul-float/2addr v0, p2

    .line 735
    const/high16 v1, 0x3f80

    div-float/2addr v1, p2

    .line 736
    const/high16 v2, 0x3f80

    div-float/2addr v2, v0

    .line 738
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 739
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 740
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Ln/am;

    invoke-virtual {v0}, Ln/am;->h()Ln/aa;

    move-result-object v0

    invoke-virtual {v0}, Ln/aa;->g()I

    move-result v4

    .line 741
    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 742
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ac;

    .line 743
    invoke-virtual {v0}, Ln/ac;->b()Ln/U;

    move-result-object v5

    .line 744
    invoke-virtual {v5}, Ln/U;->b()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 745
    invoke-virtual {v0}, Ln/ac;->e()Ln/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aP;->a(Ln/ag;)F

    move-result v0

    .line 746
    const/high16 v7, 0x4000

    invoke-direct {p0, v0, v4}, Lcom/google/android/maps/driveabout/vector/aP;->c(FI)F

    move-result v0

    mul-float/2addr v7, v0

    .line 749
    const/4 v0, 0x0

    :goto_4d
    if-ge v0, v6, :cond_27

    .line 750
    invoke-virtual {v5, v0}, Ln/U;->b(I)F

    move-result v8

    .line 751
    mul-float/2addr v8, v2

    .line 752
    mul-float v9, v7, v1

    const/high16 v10, 0x4700

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 753
    const/high16 v10, 0x4780

    mul-float/2addr v8, v10

    float-to-int v8, v8

    .line 754
    const v10, 0x8000

    sub-int/2addr v10, v9

    .line 755
    const v11, 0x8000

    add-int/2addr v9, v11

    .line 756
    iget-object v11, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v11, v9, v8}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 757
    iget-object v11, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v11, v10, v8}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 758
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 759
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/cM;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
