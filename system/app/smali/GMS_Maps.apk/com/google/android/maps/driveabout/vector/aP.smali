.class public Lcom/google/android/maps/driveabout/vector/aP;
.super Lcom/google/android/maps/driveabout/vector/ab;


# static fields
.field private static final b:F


# instance fields
.field a:F

.field private final c:Lt/af;

.field private final d:Lcom/google/android/maps/driveabout/vector/di;

.field private final e:Lcom/google/android/maps/driveabout/vector/cp;

.field private final f:Lcom/google/android/maps/driveabout/vector/y;

.field private final g:Lcom/google/android/maps/driveabout/vector/y;

.field private final h:Lcom/google/android/maps/driveabout/vector/bu;

.field private final i:Lcom/google/android/maps/driveabout/vector/di;

.field private final j:Lcom/google/android/maps/driveabout/vector/A;

.field private final k:Lcom/google/android/maps/driveabout/vector/bu;

.field private final l:Lcom/google/android/maps/driveabout/vector/bu;

.field private final m:Lcom/google/android/maps/driveabout/vector/di;

.field private final n:Lcom/google/android/maps/driveabout/vector/cp;

.field private final o:Lcom/google/android/maps/driveabout/vector/bu;

.field private p:Lcom/google/android/maps/driveabout/vector/f;

.field private final q:Lt/L;

.field private final r:Ljava/util/ArrayList;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/aP;->b:F

    return-void
.end method

.method private constructor <init>(Lt/af;Lcom/google/android/maps/driveabout/vector/aQ;Ljava/util/HashSet;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/ab;-><init>(Ljava/util/Set;)V

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lt/L;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aP;->c:Lt/af;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dk;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cr;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cr;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Lcom/google/android/maps/driveabout/vector/cp;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/D;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/D;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->g:Lcom/google/android/maps/driveabout/vector/y;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/D;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/D;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->f:Lcom/google/android/maps/driveabout/vector/y;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bv;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->b:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bv;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    iget v0, p2, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    if-lez v0, :cond_90

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dk;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/A;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/A;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/A;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bv;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->d:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bv;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/bu;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bv;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->b:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bv;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    :goto_65
    iget v0, p2, Lcom/google/android/maps/driveabout/vector/aQ;->e:I

    if-lez v0, :cond_99

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dk;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->e:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cr;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->e:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cr;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bv;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->f:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bv;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/bu;

    :goto_84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Ljava/util/ArrayList;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->a:F

    return-void

    :cond_90
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/A;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/bu;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    goto :goto_65

    :cond_99
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/bu;

    goto :goto_84
.end method

.method private static a(F)F
    .registers 4

    float-to-int v1, p0

    int-to-float v0, v1

    sub-float v0, p0, v0

    const/high16 v2, 0x3f00

    cmpl-float v0, v0, v2

    if-lez v0, :cond_17

    sget v0, Lcom/google/android/maps/driveabout/vector/aP;->b:F

    :goto_c
    const/4 v2, 0x1

    rsub-int/lit8 v1, v1, 0x1e

    shl-int v1, v2, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4380

    div-float/2addr v0, v1

    return v0

    :cond_17
    const/high16 v0, 0x3f80

    goto :goto_c
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/t;)F
    .registers 4

    const/high16 v0, 0x40c0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(F)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a(Lt/Z;)F
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lt/Z;->c()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt/Z;->b(I)F

    move-result v0

    :cond_d
    return v0
.end method

.method private static a(FI)I
    .registers 4

    int-to-float v0, p1

    sub-float v0, p0, v0

    const/high16 v1, 0x4080

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_b

    const/4 v0, 0x2

    :goto_a
    return v0

    :cond_b
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_13

    const/4 v0, 0x3

    goto :goto_a

    :cond_13
    const/high16 v1, 0x4010

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1b

    const/4 v0, 0x4

    goto :goto_a

    :cond_1b
    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_27

    const/16 v0, 0x11

    if-lt p1, v0, :cond_27

    const/4 v0, 0x5

    goto :goto_a

    :cond_27
    const/16 v0, 0x16

    goto :goto_a
.end method

.method private static a(FILcom/google/android/maps/driveabout/vector/I;)I
    .registers 5

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p2, v0, :cond_f

    const/high16 v0, 0x4180

    cmpg-float v0, p0, v0

    if-gez v0, :cond_c

    const/4 v0, 0x7

    :goto_b
    return v0

    :cond_c
    const/16 v0, 0x15

    goto :goto_b

    :cond_f
    int-to-float v0, p1

    sub-float v0, p0, v0

    const/high16 v1, 0x4080

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_b

    :cond_1a
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_22

    const/4 v0, 0x2

    goto :goto_b

    :cond_22
    const/high16 v1, 0x4010

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2a

    const/4 v0, 0x3

    goto :goto_b

    :cond_2a
    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_36

    const/16 v0, 0x11

    if-lt p1, v0, :cond_36

    const/4 v0, 0x4

    goto :goto_b

    :cond_36
    const/4 v0, 0x6

    goto :goto_b
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p1, v2, :cond_f

    const/high16 v2, 0x418c

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_11

    :cond_f
    const/16 v0, 0x20

    :cond_11
    sget-object v2, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p1, v2, :cond_17

    or-int/lit8 v0, v0, 0x14

    :cond_17
    const/high16 v2, 0x4178

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_27

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p1, v1, :cond_25

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p1, v1, :cond_27

    :cond_25
    or-int/lit8 v0, v0, 0x40

    :cond_27
    return v0
.end method

.method public static a(Lt/af;[Ljava/lang/String;Lt/ar;)Lcom/google/android/maps/driveabout/vector/aP;
    .registers 15

    const/4 v2, 0x0

    invoke-virtual {p0}, Lt/af;->i()Lt/V;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    const/16 v0, 0x200

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lt/af;->b()I

    move-result v6

    new-instance v7, Lcom/google/android/maps/driveabout/vector/aQ;

    invoke-direct {v7}, Lcom/google/android/maps/driveabout/vector/aQ;-><init>()V

    :goto_1a
    invoke-interface {p2}, Lt/ar;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p2}, Lt/ar;->b()Lt/l;

    move-result-object v1

    instance-of v0, v1, Lt/X;

    if-eqz v0, :cond_31

    move-object v0, v1

    check-cast v0, Lt/X;

    invoke-static {v6, v0, v7}, Lcom/google/android/maps/driveabout/vector/aP;->a(ILt/X;Lcom/google/android/maps/driveabout/vector/aQ;)Z

    move-result v0

    if-nez v0, :cond_4e

    :cond_31
    new-instance v6, Lcom/google/android/maps/driveabout/vector/aP;

    invoke-direct {v6, p0, v7, v4}, Lcom/google/android/maps/driveabout/vector/aP;-><init>(Lt/af;Lcom/google/android/maps/driveabout/vector/aQ;Ljava/util/HashSet;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bb;->a()Lcom/google/android/maps/driveabout/vector/bb;

    move-result-object v4

    move v1, v2

    :goto_3b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6e

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/X;

    invoke-direct {v6, v3, v0, v4}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lt/V;Lt/X;Lcom/google/android/maps/driveabout/vector/bb;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3b

    :cond_4e
    invoke-interface {v1}, Lt/l;->k()[I

    move-result-object v8

    array-length v9, v8

    move v0, v2

    :goto_54
    if-ge v0, v9, :cond_65

    aget v10, v8, v0

    if-ltz v10, :cond_62

    array-length v11, p1

    if-ge v10, v11, :cond_62

    aget-object v10, p1, v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_65
    check-cast v1, Lt/X;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lt/ar;->next()Ljava/lang/Object;

    goto :goto_1a

    :cond_6e
    return-object v6
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aT;FILcom/google/android/maps/driveabout/vector/I;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->m()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/aP;->a(FI)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/cy;->a(I)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aT;FLcom/google/android/maps/driveabout/vector/I;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/cy;->a(I)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method private a(Lt/P;Lt/L;II)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_32

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lt/L;

    invoke-virtual {p1, v0, v3}, Lt/P;->a(ILt/L;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lt/L;

    invoke-static {v3, p2, v4}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lt/L;

    invoke-virtual {v3, v4, p3}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    if-lez v0, :cond_2f

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/bu;

    add-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    add-int v5, v1, v0

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bu;->a(SS)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v0, p4, v2}, Lcom/google/android/maps/driveabout/vector/A;->a(II)V

    return-void
.end method

.method private a(Lt/V;Lt/X;Lcom/google/android/maps/driveabout/vector/bb;)V
    .registers 20

    invoke-virtual/range {p2 .. p2}, Lt/X;->b()Lt/P;

    move-result-object v2

    invoke-virtual {v2}, Lt/P;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lt/X;->e()Lt/Z;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lt/Z;)F

    move-result v6

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {v4}, Lt/Z;->c()I

    move-result v5

    const/4 v7, 0x2

    if-lt v5, v7, :cond_eb

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lt/Z;->a(I)I

    move-result v3

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lt/Z;->a(I)I

    move-result v1

    move v11, v1

    move v12, v3

    :goto_2d
    invoke-virtual {v4}, Lt/Z;->c()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_49

    invoke-virtual {v4}, Lt/Z;->b()Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lt/Z;->d(I)Lt/Y;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lt/Y;->d()Z

    move-result v9

    invoke-virtual {v1}, Lt/Y;->e()Z

    move-result v10

    :cond_49
    const/4 v1, 0x0

    cmpl-float v1, v6, v1

    if-eqz v1, :cond_f

    if-nez v11, :cond_58

    if-nez v12, :cond_58

    invoke-virtual/range {p2 .. p2}, Lt/X;->p()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_58
    invoke-virtual/range {p1 .. p1}, Lt/V;->d()Lt/L;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lt/V;->g()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/google/android/maps/driveabout/vector/aP;->b(FI)F

    move-result v3

    if-nez v11, :cond_6a

    if-eqz v12, :cond_b3

    :cond_6a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->b()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/driveabout/vector/aP;->e:Lcom/google/android/maps/driveabout/vector/cp;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/P;FLt/L;ILcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/cp;Lcom/google/android/maps/driveabout/vector/bu;ZZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    sub-int/2addr v1, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aP;->f:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v6, v11, v1}, Lcom/google/android/maps/driveabout/vector/y;->b(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aP;->g:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v6, v12, v1}, Lcom/google/android/maps/driveabout/vector/y;->b(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v1, :cond_b3

    invoke-virtual/range {p2 .. p2}, Lt/X;->q()Z

    move-result v1

    if-eqz v1, :cond_fb

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v12}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lt/P;Lt/L;II)V

    :cond_b3
    :goto_b3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->c:Lt/af;

    invoke-virtual {v1}, Lt/af;->b()I

    move-result v1

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/aP;->a(ILt/X;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/4 v9, 0x0

    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v15, 0x0

    move-object/from16 v6, p3

    move-object v7, v2

    move v8, v3

    move-object v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v15}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/P;FZLt/L;IFLcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->r:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    invoke-virtual/range {p2 .. p2}, Lt/X;->r()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->s:Z

    goto/16 :goto_f

    :cond_eb
    invoke-virtual {v4}, Lt/Z;->c()I

    move-result v5

    const/4 v7, 0x1

    if-lt v5, v7, :cond_110

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lt/Z;->a(I)I

    move-result v1

    move v11, v1

    move v12, v3

    goto/16 :goto_2d

    :cond_fb
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/bu;->b()I

    move-result v7

    sub-int/2addr v7, v14

    invoke-virtual {v1, v6, v14, v7}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/bu;II)V

    goto :goto_b3

    :cond_110
    move v11, v1

    move v12, v3

    goto/16 :goto_2d
.end method

.method private static a(ILt/X;)Z
    .registers 3

    const/16 v0, 0xe

    if-lt p0, v0, :cond_c

    invoke-virtual {p1}, Lt/X;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static a(ILt/X;Lcom/google/android/maps/driveabout/vector/aQ;)Z
    .registers 10

    const/4 v0, 0x1

    invoke-virtual {p1}, Lt/X;->b()Lt/P;

    move-result-object v1

    invoke-virtual {v1}, Lt/P;->b()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    if-ge v3, v0, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/P;)I

    move-result v4

    iget v5, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    if-lez v5, :cond_1f

    iget v5, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    add-int/2addr v5, v4

    const/16 v6, 0x4000

    if-le v5, v6, :cond_1f

    const/4 v0, 0x0

    goto :goto_d

    :cond_1f
    iget v5, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/google/android/maps/driveabout/vector/aQ;->a:I

    iget v4, p2, Lcom/google/android/maps/driveabout/vector/aQ;->b:I

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bb;->b(Lt/P;)I

    move-result v1

    add-int/2addr v1, v4

    iput v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->b:I

    invoke-virtual {p1}, Lt/X;->q()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    add-int/2addr v1, v2

    iput v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->d:I

    mul-int/lit8 v2, v3, 0x2

    add-int/2addr v1, v2

    iput v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->d:I

    :cond_3f
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/vector/aP;->a(ILt/X;)Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v1, v3, 0x4

    mul-int/lit8 v2, v3, 0x2

    iget v3, p2, Lcom/google/android/maps/driveabout/vector/aQ;->e:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->e:I

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->f:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, p2, Lcom/google/android/maps/driveabout/vector/aQ;->f:I

    goto :goto_d
.end method

.method private b(FI)F
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->c:Lt/af;

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_13

    const/high16 v0, 0x3f00

    :goto_c
    int-to-float v1, p2

    mul-float/2addr v1, p1

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0

    :cond_13
    const v0, 0x3e99999a

    goto :goto_c
.end method

.method public static b(Lcom/google/android/maps/driveabout/vector/aT;FILcom/google/android/maps/driveabout/vector/I;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->m()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aP;->a(FILcom/google/android/maps/driveabout/vector/I;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/cy;->a(I)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cp;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->f:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/y;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->g:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/y;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/A;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/A;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/bu;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_43
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_59
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cp;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_64
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/bu;

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6f
    return v0
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aT;F)V
    .registers 20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/maps/driveabout/vector/aP;->a:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_9

    :goto_8
    return-void

    :cond_9
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->a:F

    const/high16 v2, 0x4180

    mul-float v2, v2, p2

    const/high16 v3, 0x3f80

    div-float v7, v3, p2

    const/high16 v3, 0x3f80

    div-float v8, v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/cp;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/aP;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/aP;->c:Lt/af;

    invoke-virtual {v2}, Lt/af;->i()Lt/V;

    move-result-object v2

    invoke-virtual {v2}, Lt/V;->g()I

    move-result v10

    :cond_38
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/X;

    invoke-virtual {v2}, Lt/X;->b()Lt/P;

    move-result-object v11

    invoke-virtual {v11}, Lt/P;->b()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    invoke-virtual {v2}, Lt/X;->e()Lt/Z;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lt/Z;)F

    move-result v3

    const/high16 v4, 0x4000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/google/android/maps/driveabout/vector/aP;->b(FI)F

    move-result v3

    mul-float v13, v4, v3

    const/4 v3, 0x0

    move v6, v3

    :goto_62
    if-ge v6, v12, :cond_38

    invoke-virtual {v11, v6}, Lt/P;->b(I)F

    move-result v14

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    mul-float/2addr v14, v8

    const/high16 v15, 0x3f00

    cmpl-float v15, v14, v15

    if-lez v15, :cond_c1

    mul-float v4, v13, v7

    const/high16 v5, 0x4700

    mul-float/2addr v4, v5

    float-to-int v5, v4

    const/high16 v4, 0x4780

    mul-float/2addr v4, v14

    float-to-int v4, v4

    float-to-int v15, v14

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3e00

    cmpl-float v15, v14, v15

    if-lez v15, :cond_8e

    const/high16 v15, 0x3ec0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_8e

    const v3, 0xa000

    :cond_8e
    :goto_8e
    const v14, 0x8000

    sub-int/2addr v14, v5

    const v15, 0x8000

    add-int/2addr v5, v15

    invoke-virtual {v2}, Lt/X;->m()Z

    move-result v15

    if-eqz v15, :cond_c5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    add-int v16, v4, v3

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    add-int/2addr v4, v3

    invoke-virtual {v15, v14, v4}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v4, v14, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v4, v5, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    :goto_bd
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_62

    :cond_c1
    const v3, 0xc000

    goto :goto_8e

    :cond_c5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v15, v14, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v15, v5, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    add-int v16, v4, v3

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    add-int/2addr v3, v4

    invoke-virtual {v5, v14, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    goto :goto_bd

    :cond_e7
    new-instance v2, Lcom/google/android/maps/driveabout/vector/f;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/f;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/f;

    goto/16 :goto_8
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 12

    const/high16 v1, 0x1

    const v7, 0xb7b7

    const/high16 v3, 0x3e80

    const/4 v6, 0x4

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->c:Lt/af;

    invoke-virtual {v2}, Lt/af;->b()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_be

    :cond_1b
    :goto_1b
    :pswitch_1b
    return-void

    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v1, :cond_1b

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/A;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/A;->e(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_1b

    :pswitch_3b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->g:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/y;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    if-eqz v1, :cond_52

    cmpl-float v0, v0, v3

    if-lez v0, :cond_58

    :cond_52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1, v6}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    goto :goto_1b

    :cond_58
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1, v6}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    goto :goto_1b

    :pswitch_5e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->f:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/y;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    if-eqz v1, :cond_75

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7b

    :cond_75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1, v6}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    goto :goto_1b

    :cond_7b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1, v6}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    goto :goto_1b

    :pswitch_81
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_1b

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lcom/google/android/maps/driveabout/vector/t;)F

    move-result v0

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_1b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lcom/google/android/maps/driveabout/vector/aT;F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/f;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/f;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/f;->a(Lcom/google/android/maps/driveabout/vector/aT;)I

    move-result v0

    if-ne v0, v1, :cond_a2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/f;

    :cond_a2
    :goto_a2
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0xe5e5

    invoke-interface {v1, v7, v7, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1, v6}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    goto/16 :goto_1b

    :cond_bb
    move v0, v1

    goto :goto_a2

    nop

    :pswitch_data_be
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_1b
        :pswitch_3b
        :pswitch_5e
        :pswitch_81
    .end packed-switch
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->g:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/y;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->f:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/y;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_31
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_44
    return-void
.end method

.method public b()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0x1d0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cp;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->f:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/y;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->g:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/y;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/A;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/A;->b()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/bu;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_45
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_50
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cp;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_66
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/bu;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_71
    add-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/X;

    invoke-virtual {v0}, Lt/X;->l()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_7a

    :cond_8d
    return v1
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->g:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/y;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->f:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/y;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_31
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_44
    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
