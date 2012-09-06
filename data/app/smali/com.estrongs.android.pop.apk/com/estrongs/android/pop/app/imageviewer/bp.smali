.class Lcom/estrongs/android/pop/app/imageviewer/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/bo;

.field private final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

.field private final synthetic c:I

.field private final synthetic d:Landroid/graphics/Bitmap;

.field private final synthetic e:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/bo;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;ILandroid/graphics/Bitmap;Landroid/widget/LinearLayout;)V
    .registers 6

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    iput p3, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->c:I

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->d:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->e:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bo;->a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/bo;->a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->c:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_20
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->e:Landroid/widget/LinearLayout;

    const-string v1, "load-error"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bo;->a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->l:Landroid/view/LayoutInflater;

    const v1, 0x7f03002c

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bo;->a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    const v1, 0x7f07013d

    const v2, 0x7f09018c

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bo;->a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->c:I

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bo;->a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    goto :goto_29

    :cond_6f
    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ar;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ar;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/bo;->a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e()Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(Lcom/estrongs/android/pop/app/imageviewer/ar;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bo;->a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->c:I

    if-ne v0, v2, :cond_9e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bo;->a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iput-object v1, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    :cond_9e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->e:Landroid/widget/LinearLayout;

    const-string v2, "load-ok"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bp;->a:Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/bo;->a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_29
.end method
