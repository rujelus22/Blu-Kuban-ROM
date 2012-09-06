.class Lcom/estrongs/android/pop/app/imageviewer/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/bf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    :goto_19
    return-void

    :cond_1a
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    if-gt v0, v2, :cond_2e

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    :cond_2e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildCount()I

    move-result v0

    if-ge v0, v6, :cond_4e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move v0, v1

    :goto_40
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v2

    if-lt v0, v2, :cond_157

    :cond_4e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/o;

    move-result-object v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bi;

    const-string v3, "Image Loader - Full Size "

    invoke-direct {v2, p0, v3}, Lcom/estrongs/android/pop/app/imageviewer/bi;-><init>(Lcom/estrongs/android/pop/app/imageviewer/bh;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/app/imageviewer/o;)V

    :cond_6a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I

    move-result v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/l;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v5

    iget-object v5, v5, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-direct {v3, v4, v5}, Lcom/estrongs/android/pop/app/imageviewer/l;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/imageviewer/gallery/f;)V

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/app/imageviewer/l;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/l;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v3

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/l;->a(Lcom/estrongs/android/pop/app/imageviewer/k;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v3

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v0, 0x42a8

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v3

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/l;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/imageviewer/l;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setSelection(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    new-array v3, v0, [Z

    move v0, v1

    :goto_131
    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v4

    iget-object v4, v4, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v4}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v4

    if-lt v0, v4, :cond_17c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, v3, v6}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a([ZZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b(I)V

    goto/16 :goto_19

    :cond_157
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v3

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bh;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v3

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_40

    :cond_17c
    aput-boolean v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_131
.end method
