.class Lcom/estrongs/android/pop/app/imageviewer/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/b;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/b;->b(Lcom/estrongs/android/pop/app/imageviewer/b;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/b;->d:I

    if-le v0, v1, :cond_63

    move v0, v1

    :goto_f
    iput-boolean v0, v3, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/b;->d:I

    if-lez v0, :cond_73

    move v0, v2

    :goto_18
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    iget v3, v3, Lcom/estrongs/android/pop/app/imageviewer/b;->d:I

    if-lt v0, v3, :cond_65

    :goto_1e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/b;->b(Lcom/estrongs/android/pop/app/imageviewer/b;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->invalidate()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/b;->b(Lcom/estrongs/android/pop/app/imageviewer/b;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_62

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/b;->b(Lcom/estrongs/android/pop/app/imageviewer/b;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/b;->b(Lcom/estrongs/android/pop/app/imageviewer/b;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    iput-object v0, v3, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/b;->b(Lcom/estrongs/android/pop/app/imageviewer/b;)Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a(Z)V

    :cond_62
    return-void

    :cond_63
    move v0, v2

    goto :goto_f

    :cond_65
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/imageviewer/b;->c:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/b;->a(Lcom/estrongs/android/pop/app/imageviewer/b;Landroid/media/FaceDetector$Face;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_73
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/c;->a:Lcom/estrongs/android/pop/app/imageviewer/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/b;->a(Lcom/estrongs/android/pop/app/imageviewer/b;)V

    goto :goto_1e
.end method
