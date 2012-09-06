.class Lcom/estrongs/android/pop/app/imageviewer/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/o;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/o;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/r;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/o;Lcom/estrongs/android/pop/app/imageviewer/r;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/r;-><init>(Lcom/estrongs/android/pop/app/imageviewer/o;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/r;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(Lcom/estrongs/android/pop/app/imageviewer/o;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/r;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->b(Lcom/estrongs/android/pop/app/imageviewer/o;)Z

    move-result v0

    if-eqz v0, :cond_11

    monitor-exit v1

    return-void

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/r;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(Lcom/estrongs/android/pop/app/imageviewer/o;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/r;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(Lcom/estrongs/android/pop/app/imageviewer/o;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/q;

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_4b

    const/4 v1, 0x0

    :try_start_2c
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/r;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/imageviewer/q;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Landroid/graphics/Bitmap;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_33} :catch_4e

    move-result-object v1

    :goto_34
    iget-object v2, v0, Lcom/estrongs/android/pop/app/imageviewer/q;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/imageviewer/q;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/q;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v2, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/p;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/r;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(Lcom/estrongs/android/pop/app/imageviewer/o;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_4b
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_49} :catch_53

    :goto_49
    :try_start_49
    monitor-exit v1

    goto :goto_0

    :catchall_4b
    move-exception v0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4b

    throw v0

    :catch_4e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_34

    :catch_53
    move-exception v0

    goto :goto_49
.end method
