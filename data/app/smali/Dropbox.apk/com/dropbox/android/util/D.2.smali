.class public final Lcom/dropbox/android/util/D;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field protected a:I

.field protected final b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/dropbox/android/util/D;->a:I

    .line 26
    if-nez p1, :cond_10

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_10
    iput-object p1, p0, Lcom/dropbox/android/util/D;->b:Landroid/graphics/Bitmap;

    .line 30
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/dropbox/android/util/D;->a:I

    if-nez v0, :cond_10

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding ref when already recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 33
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 36
    :cond_10
    :try_start_10
    iget v0, p0, Lcom/dropbox/android/util/D;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/util/D;->a:I
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    .line 37
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/dropbox/android/util/D;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dropbox/android/util/D;->a:I

    .line 41
    iget v0, p0, Lcom/dropbox/android/util/D;->a:I

    if-nez v0, :cond_12

    .line 42
    iget-object v0, p0, Lcom/dropbox/android/util/D;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1e

    .line 46
    :cond_10
    monitor-exit p0

    return-void

    .line 43
    :cond_12
    :try_start_12
    iget v0, p0, Lcom/dropbox/android/util/D;->a:I

    if-gez v0, :cond_10

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BitmapRefCounted released more times than AddRefd"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1e

    .line 40
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/android/util/D;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
