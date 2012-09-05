.class public Lcom/google/android/maps/driveabout/vector/A;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/google/android/maps/driveabout/vector/cw;

.field private static e:Z

.field private static final f:Landroid/graphics/Bitmap;

.field private static final g:Ljava/util/Map;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/cw;

.field private final b:Lcom/google/android/maps/driveabout/vector/cp;

.field private final c:Lcom/google/android/maps/driveabout/vector/B;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    sput-boolean v2, Lcom/google/android/maps/driveabout/vector/A;->e:Z

    const/16 v0, 0x100

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/A;->f:Landroid/graphics/Bitmap;

    invoke-static {}, LK/cb;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/A;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/cr;->b(II)Lcom/google/android/maps/driveabout/vector/cr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->b:Lcom/google/android/maps/driveabout/vector/cp;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/B;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/B;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->c:Lcom/google/android/maps/driveabout/vector/B;

    return-void
.end method

.method static a(ILcom/google/android/maps/driveabout/vector/B;)V
    .registers 8

    const/high16 v5, 0x1

    const v4, 0x8000

    sget-object v1, Lcom/google/android/maps/driveabout/vector/A;->g:Ljava/util/Map;

    monitor-enter v1

    :try_start_8
    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3d

    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x100

    if-lt v2, v3, :cond_31

    const-string v0, "ColorPalette"

    const-string v2, "Color texture is full"

    invoke-static {v0, v2}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    :goto_30
    return-void

    :cond_31
    sget-object v2, Lcom/google/android/maps/driveabout/vector/A;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/maps/driveabout/vector/A;->e:Z

    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_57

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit16 v1, v1, 0x100

    mul-int/2addr v1, v5

    add-int/2addr v1, v4

    div-int/lit16 v1, v1, 0x100

    iput v1, p1, Lcom/google/android/maps/driveabout/vector/B;->a:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    mul-int/2addr v0, v5

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/B;->b:I

    goto :goto_30

    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public static c()V
    .registers 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_c
    return-void
.end method

.method static d()V
    .registers 6

    sget-object v2, Lcom/google/android/maps/driveabout/vector/A;->g:Ljava/util/Map;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/A;->e:Z

    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/A;->f:Landroid/graphics/Bitmap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit16 v5, v1, 0x100

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v5, v1, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_10

    :catchall_44
    move-exception v0

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_44

    throw v0

    :cond_47
    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_44

    return-void
.end method

.method public static d(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_c
    return-void
.end method

.method public static e(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    return-void
.end method

.method private static f(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    sget-object v1, Lcom/google/android/maps/driveabout/vector/A;->g:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/A;->d()V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cw;->a()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    if-eq v0, v2, :cond_17

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/A;->c()V

    :cond_17
    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_28

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    :cond_28
    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/A;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->b(Landroid/graphics/Bitmap;)V

    monitor-exit v1

    return-void

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cp;->c()I

    move-result v0

    return v0
.end method

.method public a(II)V
    .registers 6

    if-lez p2, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->c:Lcom/google/android/maps/driveabout/vector/B;

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/A;->a(ILcom/google/android/maps/driveabout/vector/B;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->b:Lcom/google/android/maps/driveabout/vector/cp;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/A;->c:Lcom/google/android/maps/driveabout/vector/B;

    iget v1, v1, Lcom/google/android/maps/driveabout/vector/B;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/A;->c:Lcom/google/android/maps/driveabout/vector/B;

    iget v2, v2, Lcom/google/android/maps/driveabout/vector/B;->b:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/maps/driveabout/vector/cp;->a(III)V

    :cond_14
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->a()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, v1, :cond_11

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/A;->e()V

    :cond_11
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/A;->e:Z

    if-nez v0, :cond_23

    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->a()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, v1, :cond_26

    :cond_23
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/A;->f(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_33

    sget-object v0, Lcom/google/android/maps/driveabout/vector/A;->d:Lcom/google/android/maps/driveabout/vector/cw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->e()V

    :cond_33
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cp;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/A;->e()V

    return-void
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/A;->e()V

    return-void
.end method
