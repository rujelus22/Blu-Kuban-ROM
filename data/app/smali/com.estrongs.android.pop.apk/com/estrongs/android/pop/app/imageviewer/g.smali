.class Lcom/estrongs/android/pop/app/imageviewer/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/f;

.field private final synthetic b:Landroid/graphics/Bitmap;

.field private final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/f;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/f;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/f;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/f;->a(Lcom/estrongs/android/pop/app/imageviewer/f;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->b(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_3a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/f;->a(Lcom/estrongs/android/pop/app/imageviewer/f;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/f;->a(Lcom/estrongs/android/pop/app/imageviewer/f;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->b(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/f;->a(Lcom/estrongs/android/pop/app/imageviewer/f;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Bitmap;)V

    :cond_3a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/f;->a(Lcom/estrongs/android/pop/app/imageviewer/f;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/f;->a(Lcom/estrongs/android/pop/app/imageviewer/f;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(ZZ)V

    :cond_5b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
