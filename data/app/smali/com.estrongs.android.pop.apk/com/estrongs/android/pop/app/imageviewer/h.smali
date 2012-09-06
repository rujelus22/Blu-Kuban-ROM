.class Lcom/estrongs/android/pop/app/imageviewer/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->b(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Bitmap;)V

    return-void
.end method
