.class public Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
.super Landroid/widget/RelativeLayout;
.source "VideoSubTitleView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    .line 23
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mContext:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->initView()V

    .line 26
    return-void
.end method

.method private initView()V
    .registers 9

    .prologue
    const/high16 v7, 0x4040

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, subTitleLayout:Landroid/view/View;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    const/16 v3, 0x18

    invoke-virtual {v1, v6, v6, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 35
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->removeAllViews()V

    .line 37
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f03001b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 40
    const v3, 0x7f0a005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    .line 42
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleColor()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 43
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleColorType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_60

    .line 44
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    const v4, -0x7f7f80

    invoke-virtual {v3, v7, v5, v5, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 47
    :goto_52
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void

    .line 46
    :cond_60
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    const/high16 v4, -0x100

    invoke-virtual {v3, v7, v5, v5, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_52
.end method


# virtual methods
.method public updateLayout(Z)V
    .registers 10
    .parameter "isControlShow"

    .prologue
    const/16 v7, 0x113

    const/16 v6, 0xba

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isHDPI()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 77
    if-eqz p1, :cond_2e

    .line 79
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-nez v1, :cond_2a

    .line 80
    const/16 v1, 0xa6

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    :goto_26
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-void

    .line 82
    :cond_2a
    invoke-virtual {v0, v3, v3, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_26

    .line 86
    :cond_2e
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-ne v1, v4, :cond_46

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getFitToScreenMode()I

    move-result v1

    if-ne v1, v5, :cond_46

    .line 89
    :cond_40
    const/16 v1, 0x18

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_26

    .line 91
    :cond_46
    invoke-virtual {v0, v3, v3, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_26

    .line 97
    :cond_4a
    if-eqz p1, :cond_5c

    .line 99
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-nez v1, :cond_58

    .line 100
    const/16 v1, 0xf0

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_26

    .line 102
    :cond_58
    invoke-virtual {v0, v3, v3, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_26

    .line 106
    :cond_5c
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-eqz v1, :cond_6e

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-ne v1, v4, :cond_74

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getFitToScreenMode()I

    move-result v1

    if-ne v1, v5, :cond_74

    .line 109
    :cond_6e
    const/16 v1, 0x20

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_26

    .line 111
    :cond_74
    invoke-virtual {v0, v3, v3, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_26
.end method

.method public updateSubTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "subTitle"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_9
    return-void
.end method

.method public updateSubTitleProperty()V
    .registers 5

    .prologue
    const/high16 v3, 0x4040

    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleColorType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    const v1, -0x7f7f80

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 64
    :goto_23
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    :cond_2d
    return-void

    .line 63
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_23
.end method
