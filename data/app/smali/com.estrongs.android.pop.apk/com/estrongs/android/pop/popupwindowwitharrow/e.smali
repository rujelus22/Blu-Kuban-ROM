.class public abstract Lcom/estrongs/android/pop/popupwindowwitharrow/e;
.super Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field protected f:Landroid/content/Context;

.field protected g:I

.field protected h:I

.field private i:Landroid/view/View;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Landroid/view/View;

.field private n:I

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V
    .registers 7

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->t:I

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->u:I

    invoke-direct {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->j()V

    iput p5, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->a:I

    iput-object p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->i:Landroid/view/View;

    iput-object p3, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->j:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->c(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->k()V

    return-void
.end method

.method private f(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->e()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->i:Landroid/view/View;

    invoke-super {p0, v0, v1, v1, v1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(Landroid/view/View;III)V

    goto :goto_7
.end method

.method private j()V
    .registers 4

    const/high16 v2, 0x4284

    const/high16 v1, 0x4200

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->v:I

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->w:I

    :goto_20
    return-void

    :cond_21
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez v0, :cond_30

    const/16 v0, 0x30

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->v:I

    const/16 v0, 0x63

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->w:I

    goto :goto_20

    :cond_30
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->v:I

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->w:I

    goto :goto_20
.end method

.method private k()V
    .registers 8

    const v6, 0x7f0200b6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->m:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->m:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->l:I

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->k:I

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->m:Landroid/view/View;

    const v1, 0x7f0701c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->j:Ljava/lang/String;

    if-eqz v1, :cond_f6

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_65
    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->g:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->h:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->g:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->b(I)V

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->h:I

    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->a:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->m:Landroid/view/View;

    const v1, 0x7f0701bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->m:Landroid/view/View;

    const v1, 0x7f0701c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->m:Landroid/view/View;

    const v1, 0x7f0701c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->q:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->m:Landroid/view/View;

    const v1, 0x7f0701c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->a(Z)V

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->b(Z)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->b(Landroid/view/View;)V

    iput v4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->s:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->h()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->a()V

    return-void

    :cond_f6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_65
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public c(Landroid/view/View;)V
    .registers 5

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->m:Landroid/view/View;

    const v1, 0x7f0701c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public d(I)V
    .registers 4

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->v:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->b(IZ)V

    return-void
.end method

.method public e(I)V
    .registers 4

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->w:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->h:I

    if-ge v1, v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iput p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->n:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->a(IZ)V

    goto :goto_7
.end method

.method public h()V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->f()I

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->e()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->k:I

    if-ge v0, v2, :cond_3f

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->k:I

    move v1, v0

    :goto_28
    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->d:Z

    if-eqz v2, :cond_3c

    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->g:I

    iget v3, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->b:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    :cond_3c
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->g:I

    iget v3, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->l:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_4f

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->g:I

    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->l:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_28

    :cond_4f
    move v1, v0

    goto :goto_28

    :cond_51
    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->e()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->k:I

    if-ge v0, v2, :cond_84

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->k:I

    move v1, v0

    :goto_79
    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3e

    :cond_84
    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->g:I

    iget v3, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->l:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_94

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->g:I

    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->l:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_79

    :cond_94
    move v1, v0

    goto :goto_79
.end method

.method public i()V
    .registers 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->e()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->f(I)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->b()V

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
