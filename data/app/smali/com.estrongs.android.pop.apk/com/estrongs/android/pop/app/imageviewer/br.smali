.class Lcom/estrongs/android/pop/app/imageviewer/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/l;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/estrongs/android/pop/app/imageviewer/l;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    if-le p3, v0, :cond_7b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/l;

    move-result-object v0

    add-int/lit8 v1, p3, -0x6

    add-int/lit8 v2, p3, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/l;->a(II)V

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c()F

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(F)V

    :cond_4f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/k;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0, p3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(I)V

    return-void

    :cond_7b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/l;

    move-result-object v0

    add-int/lit8 v1, p3, -0xa

    add-int/lit8 v2, p3, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/l;->a(II)V

    goto :goto_24
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
