.class Lcom/estrongs/android/pop/app/imageviewer/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
