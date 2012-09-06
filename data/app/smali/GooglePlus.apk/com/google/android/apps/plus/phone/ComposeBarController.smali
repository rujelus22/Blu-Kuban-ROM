.class public Lcom/google/android/apps/plus/phone/ComposeBarController;
.super Ljava/lang/Object;
.source "ComposeBarController.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;


# instance fields
.field private mCurrentDelta:F

.field private mLandscape:Z

.field private mPlayedAnimForCurrentTouch:Z

.field private mPreviousFirstVisibleIndex:I

.field private mPreviousScrollOffset:I

.field private final mSlideInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mState:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 4
    .parameter "view"
    .parameter "landscape"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I

    .line 37
    new-instance v0, Lcom/google/android/apps/plus/phone/ComposeBarController$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/ComposeBarController$1;-><init>(Lcom/google/android/apps/plus/phone/ComposeBarController;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mSlideInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 80
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    .line 81
    iput-boolean p2, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/ComposeBarController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/phone/ComposeBarController;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/ComposeBarController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->updateVisibility()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/phone/ComposeBarController;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/ComposeBarController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/ComposeBarController;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    return-object v0
.end method

.method private startAnimation(FI)V
    .registers 6
    .parameter "finalDelta"
    .parameter "time"

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z

    if-eqz v1, :cond_1d

    .line 182
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F

    invoke-direct {v0, v1, p1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 186
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_c
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 187
    if-lez p2, :cond_17

    .line 188
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mSlideInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 190
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    return-void

    .line 184
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_1d
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_c
.end method

.method private updateVisibility()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 194
    iget v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I

    if-nez v0, :cond_c

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :goto_b
    return-void

    .line 197
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_26

    iget v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_40

    :cond_26
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_46

    iget v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_46

    .line 199
    :cond_40
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 201
    :cond_46
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b
.end method


# virtual methods
.method public onScroll(Lcom/google/android/apps/plus/views/ColumnGridView;IIII)V
    .registers 14
    .parameter "view"
    .parameter "firstItem"
    .parameter "visibleOffset"
    .parameter "viewItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 125
    if-lt p3, p4, :cond_3

    .line 177
    :cond_2
    :goto_2
    return-void

    .line 129
    :cond_3
    add-int v2, p2, p3

    .line 130
    .local v2, firstVisibleIndex:I
    invoke-virtual {p1, p3}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, firstView:Landroid/view/View;
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z

    if-eqz v6, :cond_45

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    neg-int v0, v6

    .line 133
    .local v0, currentScrollOffset:I
    :goto_12
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mPlayedAnimForCurrentTouch:Z

    if-nez v6, :cond_3d

    .line 135
    iget v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mPreviousFirstVisibleIndex:I

    if-ge v2, v6, :cond_4b

    .line 136
    const/4 v4, 0x1

    .line 146
    .local v4, scrolledBack:Z
    :goto_1b
    if-nez v2, :cond_68

    .line 147
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 148
    const/4 v6, 0x2

    iput v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I

    .line 150
    move v5, v0

    .line 151
    .local v5, translation:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z

    if-eqz v6, :cond_5d

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 152
    .local v3, maxTranslation:I
    :goto_30
    if-le v5, v3, :cond_64

    .line 153
    move v5, v3

    .line 158
    :cond_33
    :goto_33
    neg-int v6, v5

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/plus/phone/ComposeBarController;->startAnimation(FI)V

    .line 159
    neg-int v6, v5

    int-to-float v6, v6

    iput v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F

    .line 174
    .end local v3           #maxTranslation:I
    .end local v4           #scrolledBack:Z
    .end local v5           #translation:I
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->updateVisibility()V

    .line 175
    iput v2, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mPreviousFirstVisibleIndex:I

    .line 176
    iput v0, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mPreviousScrollOffset:I

    goto :goto_2

    .line 131
    .end local v0           #currentScrollOffset:I
    :cond_45
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v0, v6

    goto :goto_12

    .line 137
    .restart local v0       #currentScrollOffset:I
    :cond_4b
    iget v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mPreviousFirstVisibleIndex:I

    if-le v2, v6, :cond_51

    .line 138
    const/4 v4, 0x0

    .restart local v4       #scrolledBack:Z
    goto :goto_1b

    .line 140
    .end local v4           #scrolledBack:Z
    :cond_51
    iget v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mPreviousScrollOffset:I

    if-eq v0, v6, :cond_2

    .line 143
    iget v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mPreviousScrollOffset:I

    if-ge v0, v6, :cond_5b

    const/4 v4, 0x1

    .restart local v4       #scrolledBack:Z
    :goto_5a
    goto :goto_1b

    .end local v4           #scrolledBack:Z
    :cond_5b
    const/4 v4, 0x0

    goto :goto_5a

    .line 151
    .restart local v4       #scrolledBack:Z
    .restart local v5       #translation:I
    :cond_5d
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_30

    .line 154
    .restart local v3       #maxTranslation:I
    :cond_64
    if-gez v5, :cond_33

    .line 155
    const/4 v5, 0x0

    goto :goto_33

    .line 160
    .end local v3           #maxTranslation:I
    .end local v5           #translation:I
    :cond_68
    iget v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I

    if-nez v6, :cond_78

    if-eqz v4, :cond_78

    .line 161
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mPlayedAnimForCurrentTouch:Z

    .line 162
    const/4 v6, 0x0

    const/16 v7, 0xc8

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/plus/phone/ComposeBarController;->startAnimation(FI)V

    goto :goto_3d

    .line 163
    :cond_78
    iget v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3d

    if-nez v4, :cond_3d

    .line 164
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z

    if-eqz v6, :cond_9b

    .line 165
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    const/16 v7, 0xc8

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/plus/phone/ComposeBarController;->startAnimation(FI)V

    .line 166
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F

    goto :goto_3d

    .line 168
    :cond_9b
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    const/16 v7, 0xc8

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/plus/phone/ComposeBarController;->startAnimation(FI)V

    .line 169
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F

    goto :goto_3d
.end method

.method public onScrollStateChanged(Lcom/google/android/apps/plus/views/ColumnGridView;I)V
    .registers 11
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 86
    if-eq p2, v7, :cond_40

    .line 87
    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mPlayedAnimForCurrentTouch:Z

    .line 93
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_40

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getVisibleOffset()I

    move-result v5

    add-int/2addr v4, v5

    if-nez v4, :cond_40

    .line 95
    invoke-virtual {p1, v6}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, firstView:Landroid/view/View;
    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z

    if-eqz v4, :cond_41

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    neg-int v0, v4

    .line 99
    .local v0, currentScrollOffset:I
    :goto_24
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 100
    iput v7, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mState:I

    .line 102
    move v3, v0

    .line 103
    .local v3, translation:I
    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mLandscape:Z

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 104
    .local v2, maxTranslation:I
    :goto_36
    if-le v3, v2, :cond_4e

    .line 105
    move v3, v2

    .line 111
    :cond_39
    :goto_39
    neg-int v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mCurrentDelta:F

    .line 113
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ComposeBarController;->updateVisibility()V

    .line 116
    .end local v0           #currentScrollOffset:I
    .end local v1           #firstView:Landroid/view/View;
    .end local v2           #maxTranslation:I
    .end local v3           #translation:I
    :cond_40
    return-void

    .line 96
    .restart local v1       #firstView:Landroid/view/View;
    :cond_41
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v0, v4

    goto :goto_24

    .line 103
    .restart local v0       #currentScrollOffset:I
    .restart local v3       #translation:I
    :cond_47
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ComposeBarController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_36

    .line 106
    .restart local v2       #maxTranslation:I
    :cond_4e
    if-gez v3, :cond_39

    .line 107
    const/4 v3, 0x0

    goto :goto_39
.end method
