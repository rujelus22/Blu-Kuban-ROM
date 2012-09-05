.class public Lcom/google/android/maps/driveabout/vector/aW;
.super Lcom/google/android/maps/driveabout/vector/ab;


# static fields
.field private static final a:[I

.field private static final b:I

.field private static volatile c:Z

.field private static final i:F


# instance fields
.field private final d:Lt/af;

.field private final e:Lcom/google/android/maps/driveabout/vector/di;

.field private final f:Lcom/google/android/maps/driveabout/vector/y;

.field private final g:Lcom/google/android/maps/driveabout/vector/cp;

.field private final h:Lcom/google/android/maps/driveabout/vector/bu;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aW;->a:[I

    sget-object v0, Lcom/google/android/maps/driveabout/vector/aW;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x64

    sput v0, Lcom/google/android/maps/driveabout/vector/aW;->b:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/aW;->c:Z

    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/aW;->i:F

    return-void

    nop

    :array_1e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Lt/af;Lcom/google/android/maps/driveabout/vector/aY;Ljava/util/Set;)V
    .registers 6

    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/ab;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aW;->d:Lt/af;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/di;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aY;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->e:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/y;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aY;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/y;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->f:Lcom/google/android/maps/driveabout/vector/y;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cp;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aY;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->g:Lcom/google/android/maps/driveabout/vector/cp;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bu;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aY;->b:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->h:Lcom/google/android/maps/driveabout/vector/bu;

    return-void
.end method

.method private static a(FI)F
    .registers 4

    int-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x3fa0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4380

    div-float/2addr v0, v1

    return v0
.end method

.method private static a(IF)F
    .registers 3

    packed-switch p0, :pswitch_data_14

    const/high16 v0, 0x42a0

    div-float/2addr v0, p1

    :goto_6
    return v0

    :pswitch_7
    const/high16 v0, 0x43b4

    div-float/2addr v0, p1

    goto :goto_6

    :pswitch_b
    const/high16 v0, 0x4370

    div-float/2addr v0, p1

    goto :goto_6

    :pswitch_f
    const/high16 v0, 0x4320

    div-float/2addr v0, p1

    goto :goto_6

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public static a(Lt/af;[Ljava/lang/String;Lt/ar;)Lcom/google/android/maps/driveabout/vector/aW;
    .registers 10

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Lcom/google/android/maps/driveabout/vector/aY;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/google/android/maps/driveabout/vector/aY;-><init>(Lcom/google/android/maps/driveabout/vector/aX;)V

    invoke-interface {p2}, Lt/ar;->c()V

    :cond_e
    invoke-interface {p2}, Lt/ar;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p2}, Lt/ar;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/l;

    instance-of v1, v0, Lt/ah;

    if-eqz v1, :cond_27

    move-object v1, v0

    check-cast v1, Lt/ah;

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/vector/aW;->a(Lt/ah;Lcom/google/android/maps/driveabout/vector/aY;)Z

    move-result v1

    if-nez v1, :cond_4e

    :cond_27
    invoke-interface {p2}, Lt/ar;->d()V

    new-instance v1, Lcom/google/android/maps/driveabout/vector/aW;

    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/maps/driveabout/vector/aW;-><init>(Lt/af;Lcom/google/android/maps/driveabout/vector/aY;Ljava/util/Set;)V

    invoke-virtual {p0}, Lt/af;->i()Lt/V;

    move-result-object v2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bb;->a()Lcom/google/android/maps/driveabout/vector/bb;

    move-result-object v3

    :goto_37
    invoke-interface {p2}, Lt/ar;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p2}, Lt/ar;->b()Lt/l;

    move-result-object v0

    instance-of v4, v0, Lt/ah;

    if-eqz v4, :cond_4d

    check-cast v0, Lt/ah;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/maps/driveabout/vector/aW;->a(Lt/V;Lt/ah;Lcom/google/android/maps/driveabout/vector/bb;)Z

    move-result v0

    if-nez v0, :cond_65

    :cond_4d
    return-object v1

    :cond_4e
    invoke-interface {v0}, Lt/l;->k()[I

    move-result-object v1

    array-length v4, v1

    const/4 v0, 0x0

    :goto_54
    if-ge v0, v4, :cond_e

    aget v5, v1, v0

    if-ltz v5, :cond_62

    array-length v6, p1

    if-ge v5, v6, :cond_62

    aget-object v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_65
    invoke-interface {p2}, Lt/ar;->next()Ljava/lang/Object;

    goto :goto_37
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/google/android/maps/driveabout/vector/aW;->c:Z

    return-void
.end method

.method private a(Lt/V;Lt/ah;Lcom/google/android/maps/driveabout/vector/bb;)Z
    .registers 15

    const/4 v10, 0x1

    invoke-virtual {p2}, Lt/ah;->b()Lt/P;

    move-result-object v0

    invoke-virtual {p1}, Lt/V;->g()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lt/P;->b(F)Lt/P;

    move-result-object v1

    invoke-virtual {v1}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aW;->e:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int v5, v2, v3

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v3

    invoke-virtual {p1}, Lt/V;->g()I

    move-result v4

    invoke-virtual {p2}, Lt/ah;->e()Lt/Z;

    move-result-object v2

    invoke-virtual {v2}, Lt/Z;->c()I

    move-result v6

    if-gtz v6, :cond_37

    :goto_36
    return v10

    :cond_37
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lt/Z;->b(I)F

    move-result v6

    invoke-virtual {v2}, Lt/Z;->c()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Lt/Z;->a(I)I

    move-result v7

    invoke-static {v6, v4}, Lcom/google/android/maps/driveabout/vector/aW;->a(FI)F

    move-result v2

    invoke-virtual {p2}, Lt/ah;->c()Z

    move-result v8

    if-nez v8, :cond_51

    neg-float v2, v2

    :cond_51
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aW;->f:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v8, v5}, Lcom/google/android/maps/driveabout/vector/y;->b(I)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aW;->f:Lcom/google/android/maps/driveabout/vector/y;

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v5, v7, v0}, Lcom/google/android/maps/driveabout/vector/y;->b(II)V

    invoke-virtual {p2}, Lt/ah;->d()I

    move-result v0

    invoke-static {v0, v6}, Lcom/google/android/maps/driveabout/vector/aW;->a(IF)F

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aW;->e:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aW;->h:Lcom/google/android/maps/driveabout/vector/bu;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aW;->g:Lcom/google/android/maps/driveabout/vector/cp;

    const/4 v9, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/P;FLt/L;IFLcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;Lcom/google/android/maps/driveabout/vector/cp;)V

    goto :goto_36
.end method

.method public static a(Lt/ah;Lcom/google/android/maps/driveabout/vector/aY;)Z
    .registers 6

    invoke-virtual {p0}, Lt/ah;->b()Lt/P;

    move-result-object v0

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v1, v0, 0x4

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/aY;->a:I

    add-int/2addr v2, v1

    const/16 v3, 0x1000

    if-le v2, v3, :cond_15

    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/aY;->a:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/google/android/maps/driveabout/vector/aY;->a:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/aY;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/aY;->b:I

    const/4 v0, 0x1

    goto :goto_14
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 7

    const/4 v3, 0x4

    const/high16 v2, 0x1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p2, v0, :cond_b

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->d:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p2, v0, :cond_20

    :cond_b
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(I)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    :cond_20
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(I)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->m()V

    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/aW;->c:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->f:Lcom/google/android/maps/driveabout/vector/y;

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/y;->a(I)V

    :cond_39
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->f:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/y;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->e:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aW;->f:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/y;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aW;->g:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cp;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aW;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 10

    const/16 v5, 0x1702

    const/16 v4, 0x1700

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bu;->b()I

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->e:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->g:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aW;->d:Lt/af;

    invoke-virtual {v1}, Lt/af;->b()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5c

    const/4 v0, 0x1

    :goto_2b
    if-eqz v0, :cond_43

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    sget v2, Lcom/google/android/maps/driveabout/vector/aW;->i:F

    invoke-interface {v1, v2, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_43
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/aW;->b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)V

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    goto :goto_d

    :cond_5c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    return-void
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aW;->e:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0xb8

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aW;->f:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/y;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aW;->g:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cp;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aW;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aW;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method
