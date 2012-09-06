.class public Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;


# instance fields
.field private final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/estrongs/android/pop/app/imageviewer/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->b:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized a()Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;
    .registers 2

    const-class v1, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->b:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->b:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    :cond_e
    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->b:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->c(Ljava/lang/Thread;)Lcom/estrongs/android/pop/app/imageviewer/a;

    move-result-object v0

    iput-object p2, v0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/Thread;)Lcom/estrongs/android/pop/app/imageviewer/a;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/a;

    if-nez v0, :cond_16

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/a;-><init>(Lcom/estrongs/android/pop/app/imageviewer/a;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->b(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Thread "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not allowed to decode."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_2b
    invoke-direct {p0, v1, p2}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a(Ljava/lang/Thread;)V

    goto :goto_5
.end method

.method declared-synchronized a(Ljava/lang/Thread;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Thread;Landroid/content/ContentResolver;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->c(Ljava/lang/Thread;)Lcom/estrongs/android/pop/app/imageviewer/a;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->CANCEL:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    iput-object v1, v0, Lcom/estrongs/android/pop/app/imageviewer/a;->a:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Thread;)Z
    .registers 5

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/a;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_19

    if-nez v0, :cond_e

    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/a;->a:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    sget-object v2, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->CANCEL:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_19

    if-eq v0, v2, :cond_17

    move v0, v1

    :goto_15
    move v1, v0

    goto :goto_c

    :cond_17
    const/4 v0, 0x0

    goto :goto_15

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
