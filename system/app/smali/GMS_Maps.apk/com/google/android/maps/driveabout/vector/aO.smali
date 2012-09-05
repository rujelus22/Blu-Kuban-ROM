.class public Lcom/google/android/maps/driveabout/vector/aO;
.super Lcom/google/android/maps/driveabout/vector/ab;


# instance fields
.field private volatile a:Lcom/google/android/maps/driveabout/vector/cw;

.field private b:[B

.field private c:Lcom/google/android/maps/driveabout/vector/j;

.field private d:Z


# direct methods
.method private constructor <init>([BLjava/util/Set;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/ab;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:Z

    return-void
.end method

.method public static a(Lt/af;[Ljava/lang/String;Lt/ar;)Lcom/google/android/maps/driveabout/vector/aO;
    .registers 10

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Lt/ar;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/U;

    invoke-virtual {v0}, Lt/U;->k()[I

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v4, :cond_22

    aget v5, v3, v1

    if-ltz v5, :cond_1f

    array-length v6, p1

    if-ge v5, v6, :cond_1f

    aget-object v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_22
    new-instance v1, Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0}, Lt/U;->b()[B

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/aO;-><init>([BLjava/util/Set;)V

    return-object v1
.end method

.method public static a([B)Lcom/google/android/maps/driveabout/vector/aO;
    .registers 3

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aO;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/vector/aO;-><init>([BLjava/util/Set;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cp;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/di;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cw;)V
    .registers 8

    const/high16 v1, 0x1

    const/4 v3, 0x0

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p3, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->c:Lcom/google/android/maps/driveabout/vector/j;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->c:Lcom/google/android/maps/driveabout/vector/j;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/j;->a(Lcom/google/android/maps/driveabout/vector/aT;)I

    move-result v0

    if-ne v0, v1, :cond_19

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->c:Lcom/google/android/maps/driveabout/vector/j;

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:Z

    :cond_19
    :goto_19
    invoke-interface {v2, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {v2, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void

    :cond_22
    move v0, v1

    goto :goto_19
.end method


# virtual methods
.method public a()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->a:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cw;->h()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 8

    const/16 v3, 0x4e20

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->a:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_25

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:Z

    if-nez v2, :cond_28

    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/vector/aT;->b(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aO;->c(Lcom/google/android/maps/driveabout/vector/aT;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_12
    :goto_12
    if-eqz v1, :cond_25

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->b(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->a:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_25
    if-nez v0, :cond_3a

    :goto_27
    return-void

    :cond_28
    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/vector/aT;->a(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aO;->c(Lcom/google/android/maps/driveabout/vector/aT;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/vector/j;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/j;-><init>()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aO;->c:Lcom/google/android/maps/driveabout/vector/j;

    goto :goto_12

    :cond_3a
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/vector/aO;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cw;)V

    goto :goto_27
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->a:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->a:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->a:Lcom/google/android/maps/driveabout/vector/cw;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:Z

    :cond_f
    return-void
.end method

.method public b()I
    .registers 3

    const/16 v0, 0x60

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:[B

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    :cond_c
    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aO;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method

.method c(Lcom/google/android/maps/driveabout/vector/aT;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :try_start_e
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/bV;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_17} :catch_19

    move-result-object v0

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    const/4 v0, 0x0

    goto :goto_18
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:Z

    return v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:Z

    return-void
.end method
