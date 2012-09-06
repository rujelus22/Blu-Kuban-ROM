.class public Lcom/google/android/apps/plus/views/EventThemeView;
.super Lcom/google/android/apps/plus/views/EsImageView;
.source "EventThemeView.java"


# instance fields
.field private mImageRequested:Z

.field private mThemeImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 80
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/plus/views/EsImageView;->onLayout(ZIIII)V

    .line 81
    sub-int v1, p5, p3

    if-lez v1, :cond_16

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventThemeView;->mImageRequested:Z

    if-nez v1, :cond_16

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/EventThemeView;->mImageRequested:Z

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventThemeView;->mThemeImageUrl:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventThemeView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 99
    :cond_16
    :goto_16
    return-void

    .line 87
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventThemeView;->mThemeImageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 88
    new-instance v1, Lcom/google/android/apps/plus/content/EventThemeImageRequest;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventThemeView;->mThemeImageUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/content/EventThemeImageRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventThemeView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    goto :goto_16

    .line 90
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventThemeView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventThemeView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventThemeView;->mThemeImageUrl:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->getCenterCroppedAndResizedUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, resizedImageUrl:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/plus/content/EventThemeImageRequest;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/content/EventThemeImageRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventThemeView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    goto :goto_16
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 65
    .local v2, widthMode:I
    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_17

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 71
    :cond_d
    :goto_d
    int-to-float v3, v1

    const v4, 0x40570a3d

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 72
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/views/EventThemeView;->setMeasuredDimension(II)V

    .line 73
    return-void

    .line 67
    .end local v0           #height:I
    :cond_17
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_d

    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_d
.end method

.method public onRecycle()V
    .registers 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventThemeView;->mThemeImageUrl:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setEventTheme(Lcom/google/api/services/plusi/model/Theme;)V
    .registers 3
    .parameter "theme"

    .prologue
    .line 42
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsEventData;->getImageUrl(Lcom/google/api/services/plusi/model/Theme;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventThemeView;->setImageUrl(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "imageUrl"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventThemeView;->mThemeImageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 47
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EventThemeView;->mThemeImageUrl:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EventThemeView;->mImageRequested:Z

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventThemeView;->requestLayout()V

    .line 51
    :cond_10
    return-void
.end method
