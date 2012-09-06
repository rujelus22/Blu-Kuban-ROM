.class Lcom/estrongs/android/pop/app/imageviewer/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    if-eqz v1, :cond_2c

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Z)V

    :cond_2c
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_b3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->removeViewAt(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/l;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b()V

    :cond_5b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    :goto_6a
    return-void

    :cond_6b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    if-ne v0, v1, :cond_9a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setSelection(I)V

    goto :goto_6a

    :cond_9a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;I)V

    goto :goto_6a

    :cond_b3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bj;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const v3, 0x7f09002b

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6a
.end method
