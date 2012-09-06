.class public Lcom/google/android/apps/plus/views/PhotoAlbumView;
.super Landroid/widget/RelativeLayout;
.source "PhotoAlbumView.java"


# instance fields
.field private mDateDisplay:Landroid/widget/TextView;

.field private mDateVisibilityState:I

.field private mFadeIn:Landroid/view/animation/AlphaAnimation;

.field private mFadeOut:Landroid/view/animation/AlphaAnimation;

.field private mResetToOpaque:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PhotoAlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v4, 0xfa

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateVisibilityState:I

    .line 40
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/google/android/apps/plus/views/PhotoAlbumView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/PhotoAlbumView$1;-><init>(Lcom/google/android/apps/plus/views/PhotoAlbumView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/google/android/apps/plus/views/PhotoAlbumView$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/PhotoAlbumView$2;-><init>(Lcom/google/android/apps/plus/views/PhotoAlbumView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_60

    .line 80
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mResetToOpaque:Landroid/view/animation/AlphaAnimation;

    .line 90
    :cond_60
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/PhotoAlbumView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public enableDateDisplay(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 96
    if-eqz p1, :cond_e

    .line 97
    const v0, 0x7f090140

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PhotoAlbumView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    .line 104
    :goto_d
    return-void

    .line 99
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    goto :goto_d
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const v7, 0x7f09013f

    const/4 v4, 0x0

    .line 149
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 151
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    if-eqz v5, :cond_46

    .line 152
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_47

    const/4 v1, 0x1

    .line 157
    .local v1, isLandscape:Z
    :goto_21
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/views/PhotoAlbumView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ColumnGridView;

    .line 158
    .local v0, gridView:Lcom/google/android/apps/plus/views/ColumnGridView;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getColumnSize()I

    move-result v3

    .line 160
    .local v3, margin:I
    if-eqz v1, :cond_49

    .line 161
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 162
    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 163
    const/16 v4, 0x8

    invoke-virtual {v2, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 164
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    const v5, 0x7f0201e7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 172
    .end local v0           #gridView:Lcom/google/android/apps/plus/views/ColumnGridView;
    .end local v1           #isLandscape:Z
    .end local v2           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #margin:I
    :cond_46
    :goto_46
    return-void

    .restart local v2       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_47
    move v1, v4

    .line 154
    goto :goto_21

    .line 166
    .restart local v0       #gridView:Lcom/google/android/apps/plus/views/ColumnGridView;
    .restart local v1       #isLandscape:Z
    .restart local v3       #margin:I
    :cond_49
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 167
    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    const/4 v4, 0x7

    invoke-virtual {v2, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 169
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    const v5, 0x7f0201e8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_46
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 3
    .parameter "date"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public setDateVisibility(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateVisibilityState:I

    if-ne v0, p1, :cond_9

    .line 140
    :cond_8
    :goto_8
    return-void

    .line 121
    :cond_9
    if-nez p1, :cond_3e

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    :goto_1a
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateVisibilityState:I

    goto :goto_8

    .line 125
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_36

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 132
    :goto_2f
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a

    .line 130
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mResetToOpaque:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2f

    .line 135
    :cond_3e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1a
.end method
