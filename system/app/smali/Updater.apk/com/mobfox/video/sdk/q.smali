.class public final Lcom/mobfox/video/sdk/q;
.super Landroid/widget/LinearLayout;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnClickListener;

.field a:Ljava/lang/StringBuilder;

.field b:Ljava/util/Formatter;

.field private c:Lcom/mobfox/video/sdk/w;

.field private d:Lcom/mobfox/video/sdk/g;

.field private e:Landroid/content/Context;

.field private f:Lcom/mobfox/video/sdk/ci;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/mobfox/video/sdk/AspectRatioImageView;

.field private k:Lcom/mobfox/video/sdk/AspectRatioImageView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

.field private n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

.field private o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

.field private p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Lcom/mobfox/video/sdk/x;

.field private y:Lcom/mobfox/video/sdk/y;

.field private z:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobfox/video/sdk/g;)V
    .registers 16

    const/high16 v12, 0x3f80

    const/4 v1, 0x1

    const/4 v8, -0x1

    const/4 v11, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-wide v3, 0x3fb70a3d70a3d70aL

    iput-wide v3, p0, Lcom/mobfox/video/sdk/q;->z:D

    new-instance v0, Lcom/mobfox/video/sdk/r;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/r;-><init>(Lcom/mobfox/video/sdk/q;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->A:Landroid/os/Handler;

    new-instance v0, Lcom/mobfox/video/sdk/s;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/s;-><init>(Lcom/mobfox/video/sdk/q;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->B:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mobfox/video/sdk/t;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/t;-><init>(Lcom/mobfox/video/sdk/q;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->C:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mobfox/video/sdk/u;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/u;-><init>(Lcom/mobfox/video/sdk/q;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mobfox/video/sdk/v;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/v;-><init>(Lcom/mobfox/video/sdk/q;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->E:Landroid/view/View$OnClickListener;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iput-object p1, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    if-nez v0, :cond_57

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interstitial info cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->b:Ljava/util/Formatter;

    iput-boolean v2, p0, Lcom/mobfox/video/sdk/q;->t:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget v0, v0, Lcom/mobfox/video/sdk/g;->a:I

    if-lez v0, :cond_296

    move v0, v1

    :goto_74
    iput-boolean v0, p0, Lcom/mobfox/video/sdk/q;->u:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/mobfox/video/sdk/q;->v:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->j:Z

    if-nez v0, :cond_86

    iput v2, p0, Lcom/mobfox/video/sdk/q;->v:I

    :cond_86
    new-instance v0, Lcom/mobfox/video/sdk/ci;

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/mobfox/video/sdk/q;->A:Landroid/os/Handler;

    invoke-direct {v0, v4, v5}, Lcom/mobfox/video/sdk/ci;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    invoke-virtual {p0, v12}, Lcom/mobfox/video/sdk/q;->setWeightSum(F)V

    invoke-virtual {p0, v1}, Lcom/mobfox/video/sdk/q;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/q;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x30

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v4, 0x4080

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/q;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Lcom/mobfox/video/sdk/AspectRatioImageView;

    iget-object v5, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/mobfox/video/sdk/AspectRatioImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mobfox/video/sdk/q;->k:Lcom/mobfox/video/sdk/AspectRatioImageView;

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->k:Lcom/mobfox/video/sdk/AspectRatioImageView;

    invoke-virtual {v4, v0}, Lcom/mobfox/video/sdk/AspectRatioImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->k:Lcom/mobfox/video/sdk/AspectRatioImageView;

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/q;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/mobfox/video/sdk/AspectRatioImageView;->a(II)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->k:Lcom/mobfox/video/sdk/AspectRatioImageView;

    invoke-virtual {p0, v4, v0}, Lcom/mobfox/video/sdk/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v0}, Lcom/mobfox/video/sdk/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->r:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->r:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    const v6, 0x1030046

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->r:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->r:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/mobfox/video/sdk/q;->r:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->g:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x30

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v12, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v0}, Lcom/mobfox/video/sdk/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3fbe76c8b4395810L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v0, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x50

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v4, Lcom/mobfox/video/sdk/AspectRatioImageView;

    iget-object v5, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/mobfox/video/sdk/AspectRatioImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mobfox/video/sdk/q;->j:Lcom/mobfox/video/sdk/AspectRatioImageView;

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->j:Lcom/mobfox/video/sdk/AspectRatioImageView;

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/q;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/mobfox/video/sdk/AspectRatioImageView;->a(II)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->j:Lcom/mobfox/video/sdk/AspectRatioImageView;

    invoke-virtual {p0, v4}, Lcom/mobfox/video/sdk/q;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v0}, Lcom/mobfox/video/sdk/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v4, v11, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0x13

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x4080

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/q;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    new-instance v5, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/mobfox/video/sdk/q;->z:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v7, v7

    iget-wide v9, p0, Lcom/mobfox/video/sdk/q;->z:D

    mul-double/2addr v7, v9

    double-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x4

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v6, 0x4

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v6, 0x10

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v6, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setAdjustViewBounds(Z)V

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v6, v4, v2, v4, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v7, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v6, v4, v2, v4, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v7, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v6, v4, v2, v4, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v7, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mobfox/video/sdk/q;->p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v6, v4, v2, v4, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/mobfox/video/sdk/AutoResizeTextView;

    iget-object v5, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/mobfox/video/sdk/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mobfox/video/sdk/q;->q:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/mobfox/video/sdk/q;->q:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->l:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0x15

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->l:Landroid/widget/LinearLayout;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mobfox/video/sdk/q;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v3}, Lcom/mobfox/video/sdk/q;->a(Landroid/util/DisplayMetrics;)V

    return-void

    :cond_296
    move v0, v2

    goto/16 :goto_74
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/q;)I
    .registers 2

    invoke-direct {p0}, Lcom/mobfox/video/sdk/q;->f()I

    move-result v0

    return v0
.end method

.method private a(Landroid/util/DisplayMetrics;)V
    .registers 14

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/16 v9, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->o:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->k:Z

    if-nez v0, :cond_201

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->i:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2b
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->p:Ljava/lang/String;

    if-eqz v0, :cond_18f

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18f

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_53
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->v:Ljava/lang/String;

    if-eqz v0, :cond_19d

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19d

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v4}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->v:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_76
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->q:Z

    if-eqz v0, :cond_1b1

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_88
    :goto_88
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->w:Ljava/lang/String;

    if-eqz v0, :cond_1b8

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b8

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v4}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v11}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_aa
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->r:Z

    if-eqz v0, :cond_1c7

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_bc
    :goto_bc
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->x:Ljava/lang/String;

    if-eqz v0, :cond_1ce

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1ce

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v4}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->x:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_df
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->s:Z

    if-eqz v0, :cond_1dd

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_f1
    :goto_f1
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-eqz v0, :cond_126

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->y:Ljava/lang/String;

    if-eqz v0, :cond_1e4

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e4

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v4}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->y:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_114
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->t:Z

    if-eqz v0, :cond_1f3

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_126
    :goto_126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/q;->b:Ljava/util/Formatter;

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_14d

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->u:Z

    if-eqz v0, :cond_1fa

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/q;->u:Z

    if-eqz v0, :cond_1fa

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_14d
    :goto_14d
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->z:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    move v1, v2

    :goto_158
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->z:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_11

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->z:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/cd;

    new-instance v3, Lcom/mobfox/video/sdk/ca;

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->e:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/mobfox/video/sdk/ca;-><init>(Landroid/content/Context;Lcom/mobfox/video/sdk/cd;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/mobfox/video/sdk/q;->z:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/mobfox/video/sdk/q;->z:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/mobfox/video/sdk/q;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_158

    :cond_18f
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_53

    :cond_19d
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    const/16 v3, -0xe

    invoke-virtual {v1, v3}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto/16 :goto_76

    :cond_1b1
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v9}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_88

    :cond_1b8
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    const/16 v3, -0xf

    invoke-virtual {v1, v3}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_aa

    :cond_1c7
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v9}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_bc

    :cond_1ce
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    const/16 v3, -0x10

    invoke-virtual {v1, v3}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_df

    :cond_1dd
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v9}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_f1

    :cond_1e4
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    const/16 v3, -0x11

    invoke-virtual {v1, v3}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_114

    :cond_1f3
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v9}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_126

    :cond_1fa
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_14d

    :cond_201
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->l:Ljava/lang/String;

    if-eqz v0, :cond_235

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_235

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->l:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_220
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget v0, v0, Lcom/mobfox/video/sdk/g;->m:I

    if-nez v0, :cond_242

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    :cond_235
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->k:Lcom/mobfox/video/sdk/AspectRatioImageView;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_220

    :cond_242
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget v0, v0, Lcom/mobfox/video/sdk/g;->m:I

    if-ne v0, v10, :cond_1c

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1c
.end method

.method static synthetic b(Lcom/mobfox/video/sdk/q;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/q;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/g;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    return-object v0
.end method

.method static synthetic d(Lcom/mobfox/video/sdk/q;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/ci;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->f:Lcom/mobfox/video/sdk/ci;

    return-object v0
.end method

.method private f()I
    .registers 12

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/w;->a()I

    move-result v0

    :goto_d
    iget-object v2, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget v2, v2, Lcom/mobfox/video/sdk/g;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    sub-int v3, v2, v0

    iget-boolean v4, p0, Lcom/mobfox/video/sdk/q;->u:Z

    if-eqz v4, :cond_bd

    if-lez v2, :cond_bd

    if-ltz v3, :cond_bd

    iget-object v2, p0, Lcom/mobfox/video/sdk/q;->q:Landroid/widget/TextView;

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/mobfox/video/sdk/q;->q:Landroid/widget/TextView;

    div-int/lit16 v3, v3, 0x3e8

    rem-int/lit8 v4, v3, 0x3c

    div-int/lit8 v5, v3, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    div-int/lit16 v3, v3, 0xe10

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v3, :cond_8b

    iget-object v6, p0, Lcom/mobfox/video/sdk/q;->b:Ljava/util/Formatter;

    const-string v7, "%d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v10

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_55
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget v1, v1, Lcom/mobfox/video/sdk/g;->m:I

    if-ne v1, v9, :cond_87

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->w:Ljava/lang/String;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    invoke-interface {v2}, Lcom/mobfox/video/sdk/w;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    :cond_78
    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    invoke-interface {v1}, Lcom/mobfox/video/sdk/w;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/video/sdk/q;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mobfox/video/sdk/q;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_87
    invoke-direct {p0}, Lcom/mobfox/video/sdk/q;->g()V

    return v0

    :cond_8b
    if-lez v5, :cond_a8

    iget-object v3, p0, Lcom/mobfox/video/sdk/q;->b:Ljava/util/Formatter;

    const-string v6, "%02d:%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :cond_a8
    iget-object v3, p0, Lcom/mobfox/video/sdk/q;->b:Ljava/util/Formatter;

    const-string v5, "0:%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :cond_bd
    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->q:Landroid/widget/TextView;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->q:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_58

    :cond_c9
    move v0, v1

    goto/16 :goto_d
.end method

.method static synthetic f(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageView;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->k:Lcom/mobfox/video/sdk/AspectRatioImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/mobfox/video/sdk/q;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/w;->b()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setEnabled(Z)V

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/w;->c()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto :goto_6

    :cond_2a
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto :goto_18

    :cond_34
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto :goto_6
.end method

.method static synthetic h(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->m:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    return-object v0
.end method

.method static synthetic i(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->n:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    return-object v0
.end method

.method static synthetic j(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->o:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    return-object v0
.end method

.method static synthetic k(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->p:Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    return-object v0
.end method

.method static synthetic l(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/w;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    return-object v0
.end method

.method static synthetic m(Lcom/mobfox/video/sdk/q;)I
    .registers 2

    iget v0, p0, Lcom/mobfox/video/sdk/q;->v:I

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/q;->u:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/q;->u:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->y:Lcom/mobfox/video/sdk/y;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->y:Lcom/mobfox/video/sdk/y;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/y;->a()V

    :cond_10
    return-void
.end method

.method public final a(I)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_6

    iput-boolean v2, p0, Lcom/mobfox/video/sdk/q;->t:Z

    :cond_6
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/q;->s:Z

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/mobfox/video/sdk/q;->f()I

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->k:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1c
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->o:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2b
    iput-boolean v2, p0, Lcom/mobfox/video/sdk/q;->s:Z

    :cond_2d
    invoke-direct {p0}, Lcom/mobfox/video/sdk/q;->g()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->A:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->A:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_4d

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/q;->t:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->A:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/q;->A:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4d
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 6

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->g:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/w;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    invoke-direct {p0}, Lcom/mobfox/video/sdk/q;->g()V

    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/y;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/q;->y:Lcom/mobfox/video/sdk/y;

    return-void
.end method

.method public final b()V
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->j:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/q;->s:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->A:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1c
    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_25
    iput-boolean v2, p0, Lcom/mobfox/video/sdk/q;->s:Z

    iput-boolean v2, p0, Lcom/mobfox/video/sdk/q;->t:Z

    :cond_29
    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->d:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->j:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/q;->s:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/q;->b()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lcom/mobfox/video/sdk/q;->v:I

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/q;->a(I)V

    goto :goto_d
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->c:Lcom/mobfox/video/sdk/w;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/w;->f()V

    :cond_9
    invoke-direct {p0}, Lcom/mobfox/video/sdk/q;->f()I

    iget v0, p0, Lcom/mobfox/video/sdk/q;->v:I

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/q;->a(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->x:Lcom/mobfox/video/sdk/x;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mobfox/video/sdk/q;->x:Lcom/mobfox/video/sdk/x;

    :cond_17
    return-void
.end method

.method public final e()V
    .registers 1

    invoke-direct {p0}, Lcom/mobfox/video/sdk/q;->f()I

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/mobfox/video/sdk/q;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/q;->a()V

    const/4 v0, 0x1

    return v0
.end method
