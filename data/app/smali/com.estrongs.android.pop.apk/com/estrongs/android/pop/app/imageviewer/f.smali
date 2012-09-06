.class Lcom/estrongs/android/pop/app/imageviewer/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/f;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/f;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/f;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/f;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->i(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/f;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->i(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    const/4 v2, -0x1

    const/high16 v3, 0x10

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1b
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/f;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/g;

    invoke-direct {v3, p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/g;-><init>(Lcom/estrongs/android/pop/app/imageviewer/f;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_29
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_3b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/f;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_34
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/f;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->b(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1b

    :catch_3b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
