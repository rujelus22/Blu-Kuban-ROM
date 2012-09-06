.class Lcom/estrongs/android/pop/app/imageviewer/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/m;

.field private final synthetic b:I

.field private final synthetic c:Landroid/graphics/Bitmap;

.field private final synthetic d:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/m;ILandroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iput p2, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->b:I

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->c:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->b:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/m;->a(Lcom/estrongs/android/pop/app/imageviewer/m;)Lcom/estrongs/android/pop/app/imageviewer/l;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/l;->a(Lcom/estrongs/android/pop/app/imageviewer/l;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_27

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/m;->a(Lcom/estrongs/android/pop/app/imageviewer/m;)Lcom/estrongs/android/pop/app/imageviewer/l;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/l;->b(Lcom/estrongs/android/pop/app/imageviewer/l;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_27
.end method
