.class public Lcom/android/launcher2/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SearchDropTargetBar.java"

# interfaces
.implements Lcom/android/launcher2/DragController$DragListener;


# static fields
.field private static final sTransitionInDuration:I = 0xc8

.field private static final sTransitionOutDuration:I = 0xaf


# instance fields
.field private mBarHeight:I

.field private mDeferOnDragEnd:Z

.field private mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

.field private mDropTargetBar:Landroid/view/View;

.field private mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

.field private mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

.field private mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

.field private mIsSearchBarHidden:Z

.field private mPreviousBackground:Landroid/graphics/drawable/Drawable;

.field private mQSBSearchBar:Landroid/view/View;

.field private mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

.field private mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/SearchDropTargetBar;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/SearchDropTargetBar;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    return-object v0
.end method

.method private cancelAnimations()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 146
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 147
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 148
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 149
    return-void
.end method


# virtual methods
.method public deferOnDragEnd()V
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 203
    return-void
.end method

.method public getSearchBarBounds()Landroid/graphics/Rect;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f00

    .line 235
    iget-object v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v3, :cond_54

    .line 236
    iget-object v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 238
    .local v0, appScale:F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 239
    .local v1, pos:[I
    iget-object v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 241
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 242
    .local v2, rect:Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 243
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 244
    aget v3, v1, v4

    iget-object v4, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 245
    aget v3, v1, v6

    iget-object v4, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 248
    .end local v0           #appScale:F
    .end local v1           #pos:[I
    .end local v2           #rect:Landroid/graphics/Rect;
    :goto_53
    return-object v2

    :cond_54
    const/4 v2, 0x0

    goto :goto_53
.end method

.method public getTransitionInDuration()I
    .registers 2

    .prologue
    .line 179
    const/16 v0, 0xc8

    return v0
.end method

.method public getTransitionOutDuration()I
    .registers 2

    .prologue
    .line 182
    const/16 v0, 0xaf

    return v0
.end method

.method public hideSearchBar(Z)V
    .registers 4
    .parameter "animated"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/launcher2/SearchDropTargetBar;->cancelAnimations()V

    .line 166
    if-eqz p1, :cond_e

    .line 167
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 172
    :goto_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    .line 173
    return-void

    .line 169
    :cond_e
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a
.end method

.method public onDragEnd()V
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    if-nez v0, :cond_1d

    .line 209
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 210
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 211
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_1c

    .line 212
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 213
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 218
    :cond_1c
    :goto_1c
    return-void

    .line 216
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    goto :goto_1c
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .registers 7
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 193
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 194
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 195
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_24

    .line 196
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 197
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 199
    :cond_24
    return-void
.end method

.method protected onFinishInflate()V
    .registers 16

    .prologue
    const-wide/16 v13, 0xaf

    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    const v5, 0x7f060026

    invoke-virtual {p0, v5}, Lcom/android/launcher2/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    .line 82
    const v5, 0x7f060027

    invoke-virtual {p0, v5}, Lcom/android/launcher2/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    .line 83
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v6, 0x7f060029

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ButtonDropTarget;

    iput-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    .line 84
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v6, 0x7f060028

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ButtonDropTarget;

    iput-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher2/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    .line 87
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v5, p0}, Lcom/android/launcher2/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher2/SearchDropTargetBar;)V

    .line 88
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v5, p0}, Lcom/android/launcher2/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher2/SearchDropTargetBar;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher2/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 94
    .local v0, enableDropDownDropTargets:Z
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    .line 95
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v12, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 96
    .local v1, fadeInAlphaAnim:Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    .line 98
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 99
    .local v2, fadeInAnimators:Landroid/animation/AnimatorSet$Builder;
    if-eqz v0, :cond_98

    .line 100
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    iget v6, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v6, "translationY"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 103
    :cond_98
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 104
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeInAnim:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher2/SearchDropTargetBar$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/SearchDropTargetBar$1;-><init>(Lcom/android/launcher2/SearchDropTargetBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 111
    .local v3, fadeOutAlphaAnim:Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    .line 113
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 114
    .local v4, fadeOutAnimators:Landroid/animation/AnimatorSet$Builder;
    if-eqz v0, :cond_df

    .line 115
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v6, "translationY"

    new-array v7, v10, [F

    iget v8, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 118
    :cond_df
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 119
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarFadeOutAnim:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher2/SearchDropTargetBar$2;

    invoke-direct {v6, p0}, Lcom/android/launcher2/SearchDropTargetBar$2;-><init>(Lcom/android/launcher2/SearchDropTargetBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v12, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    .line 127
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 128
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/launcher2/SearchDropTargetBar$3;

    invoke-direct {v6, p0}, Lcom/android/launcher2/SearchDropTargetBar$3;-><init>(Lcom/android/launcher2/SearchDropTargetBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    .line 135
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 136
    iget-object v5, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/launcher2/SearchDropTargetBar$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/SearchDropTargetBar$4;-><init>(Lcom/android/launcher2/SearchDropTargetBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    return-void
.end method

.method public onSearchPackagesChanged(ZZ)V
    .registers 6
    .parameter "searchVisible"
    .parameter "voiceVisible"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v1, :cond_18

    .line 222
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    if-nez p2, :cond_19

    .line 225
    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    .line 226
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 232
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    :cond_18
    :goto_18
    return-void

    .line 227
    .restart local v0       #bg:Landroid/graphics/drawable/Drawable;
    :cond_19
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    if-nez p1, :cond_21

    if-eqz p2, :cond_18

    .line 229
    :cond_21
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .registers 4
    .parameter "launcher"
    .parameter "dragController"

    .prologue
    .line 67
    invoke-virtual {p2, p0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ButtonDropTarget;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ButtonDropTarget;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 74
    return-void
.end method

.method public showSearchBar(Z)V
    .registers 5
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Lcom/android/launcher2/SearchDropTargetBar;->cancelAnimations()V

    .line 156
    if-eqz p1, :cond_e

    .line 157
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 162
    :goto_b
    iput-boolean v2, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    .line 163
    return-void

    .line 159
    :cond_e
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_b
.end method
