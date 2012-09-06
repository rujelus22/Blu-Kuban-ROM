.class public Lcom/mobfox/video/sdk/AspectRatioImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->a:Z

    iput v1, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->b:I

    iput v1, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->a:Z

    iput v1, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->b:I

    iput v1, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->a:Z

    iput v1, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->b:I

    iput v1, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->c:I

    return-void
.end method

.method private static a(ILandroid/content/Context;)F
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    int-to-float v2, p0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(II)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->a:Z

    iput p2, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->c:I

    iput p1, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->b:I

    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->a:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-le v4, v3, :cond_61

    mul-int v0, v1, v3

    div-int/2addr v0, v4

    :goto_2a
    if-ge v4, v3, :cond_68

    const/4 v2, 0x1

    :goto_2d
    if-eqz v2, :cond_6a

    iget v2, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->b:I

    if-lez v2, :cond_46

    iget v2, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->b:I

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mobfox/video/sdk/AspectRatioImageView;->a(ILandroid/content/Context;)F

    move-result v2

    int-to-float v5, v1

    cmpg-float v5, v5, v2

    if-gez v5, :cond_46

    float-to-int v1, v2

    div-int v0, v3, v4

    mul-int/2addr v0, v1

    :cond_46
    iget v2, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->c:I

    if-lez v2, :cond_5d

    iget v2, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->c:I

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mobfox/video/sdk/AspectRatioImageView;->a(ILandroid/content/Context;)F

    move-result v2

    int-to-float v5, v0

    cmpl-float v5, v5, v2

    if-lez v5, :cond_5d

    float-to-int v0, v2

    mul-int v1, v0, v4

    div-int/2addr v1, v3

    :cond_5d
    :goto_5d
    invoke-virtual {p0, v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageView;->setMeasuredDimension(II)V

    goto :goto_14

    :cond_61
    mul-int v0, v1, v4

    div-int/2addr v0, v3

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_2a

    :cond_68
    const/4 v2, 0x0

    goto :goto_2d

    :cond_6a
    iget v2, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->c:I

    if-lez v2, :cond_81

    iget v2, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->c:I

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mobfox/video/sdk/AspectRatioImageView;->a(ILandroid/content/Context;)F

    move-result v2

    int-to-float v5, v0

    cmpl-float v5, v5, v2

    if-lez v5, :cond_81

    float-to-int v0, v2

    mul-int v1, v0, v4

    div-int/2addr v1, v3

    :cond_81
    iget v2, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->b:I

    if-lez v2, :cond_5d

    iget v2, p0, Lcom/mobfox/video/sdk/AspectRatioImageView;->b:I

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mobfox/video/sdk/AspectRatioImageView;->a(ILandroid/content/Context;)F

    move-result v2

    int-to-float v5, v1

    cmpg-float v5, v5, v2

    if-gez v5, :cond_5d

    float-to-int v1, v2

    div-int v0, v3, v4

    mul-int/2addr v0, v1

    goto :goto_5d
.end method
