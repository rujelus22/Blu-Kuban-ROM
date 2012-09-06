.class public final Lcom/mobfox/video/sdk/z;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Ljava/util/Formatter;

.field private c:D

.field private d:Lcom/mobfox/video/sdk/af;

.field private e:Landroid/content/Context;

.field private f:Lcom/mobfox/video/sdk/ci;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

.field private l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Lcom/mobfox/video/sdk/cs;

.field private p:Z

.field private q:Z

.field private r:Lcom/mobfox/video/sdk/ai;

.field private s:Lcom/mobfox/video/sdk/ag;

.field private t:Lcom/mobfox/video/sdk/ah;

.field private u:Landroid/os/Handler;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobfox/video/sdk/cs;)V
    .registers 12

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide v0, 0x3fb70a3d70a3d70aL

    iput-wide v0, p0, Lcom/mobfox/video/sdk/z;->c:D

    new-instance v0, Lcom/mobfox/video/sdk/aa;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/aa;-><init>(Lcom/mobfox/video/sdk/z;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/z;->u:Landroid/os/Handler;

    new-instance v0, Lcom/mobfox/video/sdk/ab;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/ab;-><init>(Lcom/mobfox/video/sdk/z;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/z;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mobfox/video/sdk/ac;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/ac;-><init>(Lcom/mobfox/video/sdk/z;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/z;->w:Landroid/view/View$OnClickListener;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/z;->setVisibility(I)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/z;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/z;->q:Z

    iput-object p1, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    if-nez v0, :cond_4d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video info cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/z;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/z;->b:Ljava/util/Formatter;

    new-instance v0, Lcom/mobfox/video/sdk/ci;

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->u:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lcom/mobfox/video/sdk/ci;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/z;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/z;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->h:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x37

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->h:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x40a0

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/z;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mobfox/video/sdk/z;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    const-wide v7, 0x3fbe666666666666L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->g:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v4, 0x7

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Lcom/mobfox/video/sdk/z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v0}, Lcom/mobfox/video/sdk/z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3fbe76c8b4395810L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x50

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mobfox/video/sdk/z;->j:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->j:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    const-wide v7, 0x3fbe666666666666L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->j:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v4, 0x50

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Lcom/mobfox/video/sdk/z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v0}, Lcom/mobfox/video/sdk/z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v4, 0x3

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/mobfox/video/sdk/z;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/mobfox/video/sdk/z;->c:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setAdjustViewBounds(Z)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v4, v2, v2, v2, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/mobfox/video/sdk/z;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/mobfox/video/sdk/z;->c:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v4, v2, v2, v2, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setAdjustViewBounds(Z)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/mobfox/video/sdk/AutoResizeTextView;

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/mobfox/video/sdk/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    const/high16 v4, 0x41b8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/z;->n:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x15

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->n:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->n:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->n:Landroid/widget/LinearLayout;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1}, Lcom/mobfox/video/sdk/z;->a(Landroid/util/DisplayMetrics;)V

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_250

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxMediaController created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_250
    return-void
.end method

.method private a(Landroid/util/DisplayMetrics;)V
    .registers 13

    const/4 v4, 0x0

    const/4 v10, 0x4

    const/16 v9, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->q:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->o:Z

    if-nez v0, :cond_173

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_25
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->m:Z

    if-nez v0, :cond_2e

    invoke-virtual {p0, v10}, Lcom/mobfox/video/sdk/z;->setVisibility(I)V

    :cond_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/mobfox/video/sdk/ad;

    invoke-direct {v1, p0}, Lcom/mobfox/video/sdk/ad;-><init>(Lcom/mobfox/video/sdk/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->r:Ljava/lang/String;

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_132

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v1, v1, Lcom/mobfox/video/sdk/cs;->r:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_5d
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->v:Ljava/lang/String;

    if-eqz v0, :cond_140

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_140

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v4}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v1, v1, Lcom/mobfox/video/sdk/cs;->v:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_80
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->w:Ljava/lang/String;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9a

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v1, v1, Lcom/mobfox/video/sdk/cs;->w:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :cond_9a
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->s:Z

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_ac
    :goto_ac
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->x:Ljava/lang/String;

    if-eqz v0, :cond_156

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_156

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v4}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v1, v1, Lcom/mobfox/video/sdk/cs;->x:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_cf
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->t:Z

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_e1
    :goto_e1
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->u:Z

    if-eqz v0, :cond_16c

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f0
    :goto_f0
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->y:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    move v1, v2

    :goto_fb
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->y:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->y:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/cd;

    new-instance v3, Lcom/mobfox/video/sdk/ca;

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->e:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/mobfox/video/sdk/ca;-><init>(Landroid/content/Context;Lcom/mobfox/video/sdk/cd;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/mobfox/video/sdk/z;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/mobfox/video/sdk/z;->c:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/z;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_fb

    :cond_132
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5d

    :cond_140
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    const/16 v3, -0xc

    invoke-virtual {v1, v3}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_80

    :cond_14f
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v9}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_ac

    :cond_156
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    const/16 v3, -0xd

    invoke-virtual {v1, v3}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_cf

    :cond_165
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v9}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_e1

    :cond_16c
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f0

    :cond_173
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/mobfox/video/sdk/ae;

    invoke-direct {v1, p0}, Lcom/mobfox/video/sdk/ae;-><init>(Lcom/mobfox/video/sdk/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->p:Ljava/lang/String;

    if-eqz v0, :cond_1a2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-object v1, v1, Lcom/mobfox/video/sdk/cs;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    goto/16 :goto_25

    :cond_1a2
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_25
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/z;)V
    .registers 1

    invoke-direct {p0}, Lcom/mobfox/video/sdk/z;->i()V

    return-void
.end method

.method static synthetic b(Lcom/mobfox/video/sdk/z;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/mobfox/video/sdk/z;)Lcom/mobfox/video/sdk/ci;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    return-object v0
.end method

.method static synthetic d(Lcom/mobfox/video/sdk/z;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/mobfox/video/sdk/z;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/mobfox/video/sdk/z;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/mobfox/video/sdk/z;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    return-object v0
.end method

.method private g()V
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/af;->e()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->a(I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_27
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    const/16 v1, -0xc

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_35
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/ci;->a(I)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_49
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->f:Lcom/mobfox/video/sdk/ci;

    const/16 v1, -0xb

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->k:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method private h()V
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/af;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/af;->b()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->s:Lcom/mobfox/video/sdk/ag;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->s:Lcom/mobfox/video/sdk/ag;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/ag;->a()V

    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/mobfox/video/sdk/z;->g()V

    goto :goto_4

    :cond_1f
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/af;->a()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->r:Lcom/mobfox/video/sdk/ai;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->r:Lcom/mobfox/video/sdk/ai;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/ai;->a()V

    goto :goto_1b
.end method

.method static synthetic h(Lcom/mobfox/video/sdk/z;)V
    .registers 1

    invoke-direct {p0}, Lcom/mobfox/video/sdk/z;->g()V

    return-void
.end method

.method static synthetic i(Lcom/mobfox/video/sdk/z;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->l:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    return-object v0
.end method

.method private i()V
    .registers 12

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mobfox/video/sdk/z;->p:Z

    if-eqz v1, :cond_2f

    invoke-direct {p0}, Lcom/mobfox/video/sdk/z;->g()V

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    if-nez v1, :cond_30

    :goto_e
    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-interface {v1}, Lcom/mobfox/video/sdk/af;->e()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->u:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->u:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->u:Landroid/os/Handler;

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2f
    return-void

    :cond_30
    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-interface {v1}, Lcom/mobfox/video/sdk/af;->d()I

    move-result v1

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-interface {v2}, Lcom/mobfox/video/sdk/af;->c()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    if-eqz v3, :cond_78

    iget-object v3, p0, Lcom/mobfox/video/sdk/z;->m:Landroid/widget/TextView;

    div-int/lit16 v2, v2, 0x3e8

    rem-int/lit8 v4, v2, 0x3c

    div-int/lit8 v5, v2, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    div-int/lit16 v2, v2, 0xe10

    iget-object v6, p0, Lcom/mobfox/video/sdk/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v2, :cond_7a

    iget-object v6, p0, Lcom/mobfox/video/sdk/z;->b:Ljava/util/Formatter;

    const-string v7, "%d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_75
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_78
    move v0, v1

    goto :goto_e

    :cond_7a
    if-lez v5, :cond_97

    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->b:Ljava/util/Formatter;

    const-string v6, "%02d:%02d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :cond_97
    iget-object v2, p0, Lcom/mobfox/video/sdk/z;->b:Ljava/util/Formatter;

    const-string v5, "0:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75
.end method

.method static synthetic j(Lcom/mobfox/video/sdk/z;)V
    .registers 1

    invoke-direct {p0}, Lcom/mobfox/video/sdk/z;->h()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/z;->a(I)V

    return-void
.end method

.method public final a(I)V
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SHOW:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    if-nez p1, :cond_22

    iput-boolean v3, p0, Lcom/mobfox/video/sdk/z;->q:Z

    :cond_22
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/z;->p:Z

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/z;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/mobfox/video/sdk/z;->p:Z

    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "MOBFOX"

    const-string v1, "Change Visibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    invoke-direct {p0}, Lcom/mobfox/video/sdk/z;->i()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->u:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_55

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/z;->q:Z

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->u:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/z;->u:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_55
    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/af;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-direct {p0}, Lcom/mobfox/video/sdk/z;->g()V

    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/z;->s:Lcom/mobfox/video/sdk/ag;

    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/z;->t:Lcom/mobfox/video/sdk/ah;

    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/z;->r:Lcom/mobfox/video/sdk/ai;

    return-void
.end method

.method public final b()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x3

    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MOBFOX"

    const-string v1, "HIDE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iput-boolean v3, p0, Lcom/mobfox/video/sdk/z;->q:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->n:Z

    if-eqz v0, :cond_47

    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "MOBFOX"

    const-string v1, "Hide can toggle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/z;->p:Z

    if-eqz v0, :cond_47

    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "MOBFOX"

    const-string v1, "Hide change visibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->u:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/z;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/mobfox/video/sdk/z;->p:Z

    :cond_47
    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mobfox/video/sdk/af;->a(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/af;->a()V

    :cond_f
    invoke-direct {p0}, Lcom/mobfox/video/sdk/z;->i()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->t:Lcom/mobfox/video/sdk/ah;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->t:Lcom/mobfox/video/sdk/ah;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/ah;->a()V

    :cond_1b
    return-void
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->o:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->n:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/z;->p:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/z;->b()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/z;->a(I)V

    goto :goto_d
.end method

.method public final e()V
    .registers 1

    invoke-direct {p0}, Lcom/mobfox/video/sdk/z;->i()V

    return-void
.end method

.method public final f()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/z;->a(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_40

    const/16 v0, 0x18

    if-eq p1, v0, :cond_40

    const/16 v0, 0x19

    if-eq p1, v0, :cond_40

    const/16 v0, 0x52

    if-eq p1, v0, :cond_40

    const/4 v0, 0x5

    if-eq p1, v0, :cond_40

    const/4 v0, 0x6

    if-eq p1, v0, :cond_40

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x55

    if-ne p1, v0, :cond_22

    :cond_1d
    invoke-direct {p0}, Lcom/mobfox/video/sdk/z;->h()V

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/16 v0, 0x56

    if-ne p1, v0, :cond_45

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/af;->e()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->d:Lcom/mobfox/video/sdk/af;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/af;->b()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->s:Lcom/mobfox/video/sdk/ag;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/mobfox/video/sdk/z;->s:Lcom/mobfox/video/sdk/ag;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/ag;->a()V

    :cond_40
    :goto_40
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_21

    :cond_45
    invoke-virtual {p0}, Lcom/mobfox/video/sdk/z;->d()V

    goto :goto_40
.end method
