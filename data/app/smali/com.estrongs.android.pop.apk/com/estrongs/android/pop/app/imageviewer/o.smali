.class public Lcom/estrongs/android/pop/app/imageviewer/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/q;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/Thread;

.field private d:Landroid/content/ContentResolver;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    const-string v0, "Image Loader - Mini"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/o;->c()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    const-string v0, "Image Loader - Mini"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/o;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/o;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/o;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->b:Z

    return v0
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->b:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/imageviewer/r;-><init>(Lcom/estrongs/android/pop/app/imageviewer/o;Lcom/estrongs/android/pop/app/imageviewer/r;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/p;I)V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->c:Ljava/lang/Thread;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/o;->c()V

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_a
    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/q;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/pop/app/imageviewer/q;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/p;I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public a()[I
    .registers 6

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-lt v1, v3, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2

    return-object v4

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/q;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/q;->c:I

    aput v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :catchall_26
    move-exception v0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public b()V
    .registers 4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_26

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->d:Landroid/content/ContentResolver;

    if-eqz v0, :cond_25

    :try_start_14
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->c:Ljava/lang/Thread;

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a()Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->d:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a(Ljava/lang/Thread;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/o;->c:Ljava/lang/Thread;
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_25} :catch_29

    :cond_25
    :goto_25
    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    :catch_29
    move-exception v0

    goto :goto_25
.end method
