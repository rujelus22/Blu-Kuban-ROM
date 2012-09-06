.class public Lcom/google/android/maps/driveabout/vector/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/cV;

.field private b:Z

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;

    .line 63
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/r;->b:Z

    .line 69
    const/16 v0, 0x100

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Landroid/graphics/Bitmap;

    .line 77
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Ljava/util/Map;

    .line 79
    return-void
.end method

.method public static c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 105
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 106
    const/4 v0, 0x1

    .line 107
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 108
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 110
    return-void
.end method

.method public static d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 119
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 121
    return-void
.end method

.method private e(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/r;->b()V

    .line 162
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->a()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 163
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/r;->a()V

    .line 165
    :cond_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_25

    .line 166
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;

    .line 169
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 171
    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->b(Landroid/graphics/Bitmap;)V

    .line 172
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 3
    .parameter

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/r;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 85
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_d

    .line 181
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 184
    :cond_d
    monitor-exit p0

    return-void

    .line 178
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ILcom/google/android/maps/driveabout/vector/s;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x1

    const v3, 0x8000

    .line 138
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 139
    if-nez v0, :cond_3b

    .line 140
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_2f

    .line 142
    const-string v0, "ColorPalette"

    const-string v1, "Color texture is full"

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_54

    .line 154
    :goto_2d
    monitor-exit p0

    return-void

    .line 147
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/r;->b:Z

    .line 150
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit16 v1, v1, 0x100

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    div-int/lit16 v1, v1, 0x100

    iput v1, p2, Lcom/google/android/maps/driveabout/vector/s;->a:I

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/google/android/maps/driveabout/vector/s;->b:I
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_54

    goto :goto_2d

    .line 138
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .registers 6

    .prologue
    .line 192
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/r;->b:Z

    .line 193
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Landroid/graphics/Bitmap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit16 v4, v1, 0x100

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

    invoke-virtual {v3, v4, v1, v0}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_42

    goto :goto_e

    .line 192
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    :cond_45
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/r;->b:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_c

    .line 94
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/r;->e(Lcom/google/android/maps/driveabout/vector/aU;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 96
    :cond_c
    monitor-exit p0

    return-void

    .line 93
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
