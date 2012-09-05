.class public Lcom/google/android/finsky/exploreactivity/InfoBoxController;
.super Ljava/lang/Object;
.source "InfoBoxController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/InfoBoxController$1;,
        Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;
    }
.end annotation


# instance fields
.field private mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

.field private mCurrentPage:I

.field private mImageAnimationProgressPercentage:F

.field private mInfoBoxAlpha:F

.field private mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

.field private mInfoBoxNodeChildrenCreated:Z

.field private mScrollProgressPercentage:F

.field private mScrolling:Z

.field private mSplitAnimationProgressPercentage:F

.field private mTimePassed:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    .line 34
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    .line 47
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    .line 60
    sget-object v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_NONE:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    .line 75
    iput v2, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mCurrentPage:I

    .line 78
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mTimePassed:F

    .line 81
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrollProgressPercentage:F

    .line 84
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrolling:Z

    return-void
.end method

.method private animatePages(F)V
    .registers 7
    .parameter "deltaTime"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 269
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mTimePassed:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mTimePassed:F

    .line 271
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mTimePassed:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrolling:Z

    if-nez v0, :cond_16

    .line 272
    iput-boolean v4, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrolling:Z

    .line 275
    :cond_16
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrolling:Z

    if-ne v0, v4, :cond_44

    .line 276
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrollProgressPercentage:F

    const/high16 v1, 0x4020

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrollProgressPercentage:F

    .line 278
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrollProgressPercentage:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_44

    .line 279
    iput-boolean v3, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrolling:Z

    .line 280
    iput v2, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrollProgressPercentage:F

    .line 281
    iput v2, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mTimePassed:F

    .line 282
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mCurrentPage:I

    .line 283
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mCurrentPage:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_3d

    .line 284
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mCurrentPage:I

    .line 286
    :cond_3d
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->loadPage(I)V

    .line 289
    :cond_44
    return-void
.end method


# virtual methods
.method public animateImage(Lcom/google/android/finsky/exploreactivity/AppNode;FZ)V
    .registers 12
    .parameter "appNode"
    .parameter "deltaTime"
    .parameter "infoBoxOn"

    .prologue
    const/high16 v7, 0x4080

    const/4 v6, 0x0

    const v5, 0x40533333

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 98
    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$1;->$SwitchMap$com$google$android$finsky$exploreactivity$InfoBoxController$AnimationState:[I

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_14e

    .line 261
    :cond_16
    :goto_16
    return-void

    .line 102
    :pswitch_17
    if-eqz p3, :cond_16

    .line 104
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    .line 105
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    .line 106
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    .line 107
    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_IN:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    .line 110
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-eq p1, v1, :cond_16

    .line 112
    :cond_2b
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrollProgressPercentage:F

    .line 113
    iput-boolean v6, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrolling:Z

    .line 114
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mTimePassed:F

    .line 115
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mCurrentPage:I

    .line 116
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    .line 117
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->loadDescription()V

    .line 118
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->loadInfoBox()V

    goto :goto_16

    .line 129
    :pswitch_40
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->loadDescription()V

    .line 132
    if-eqz p3, :cond_ae

    .line 135
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5c

    .line 136
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    mul-float v2, p2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    .line 138
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5c

    .line 139
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    .line 144
    :cond_5c
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_71

    .line 145
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    mul-float v2, p2, v7

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    .line 146
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_71

    .line 147
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    .line 152
    :cond_71
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_86

    .line 153
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    mul-float v2, p2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    .line 154
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_86

    .line 155
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    .line 160
    :cond_86
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/exploreactivity/AppNode;->pushOutSurroundingNodes(F)Z

    move-result v0

    .line 163
    .local v0, pushDone:Z
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_16

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_16

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_16

    if-eqz v0, :cond_16

    .line 167
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasCreatedChildren()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNodeChildrenCreated:Z

    .line 169
    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_DONE:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    goto/16 :goto_16

    .line 173
    .end local v0           #pushDone:Z
    :cond_ae
    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_OUT:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    goto/16 :goto_16

    .line 180
    :pswitch_b4
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->loadDescription()V

    .line 183
    if-nez p3, :cond_c1

    .line 185
    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_OUT:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    goto/16 :goto_16

    .line 189
    :cond_c1
    invoke-direct {p0, p2}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->animatePages(F)V

    .line 192
    iget-boolean v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNodeChildrenCreated:Z

    if-nez v1, :cond_16

    .line 194
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasCreatedChildren()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 196
    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_IN:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    goto/16 :goto_16

    .line 204
    :pswitch_d6
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->loadDescription()V

    .line 207
    if-nez p3, :cond_13c

    .line 210
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_f2

    .line 211
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    mul-float v2, p2, v5

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    .line 213
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_f2

    .line 214
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    .line 219
    :cond_f2
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_107

    .line 220
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    mul-float v2, p2, v7

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    .line 221
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_107

    .line 222
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    .line 227
    :cond_107
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_11c

    .line 228
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    mul-float v2, p2, v5

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    .line 229
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_11c

    .line 230
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    .line 235
    :cond_11c
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/exploreactivity/AppNode;->pushInSurroundingNodes(F)Z

    move-result v0

    .line 238
    .restart local v0       #pushDone:Z
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_16

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_16

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_16

    if-eqz v0, :cond_16

    .line 241
    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_NONE:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    goto/16 :goto_16

    .line 247
    .end local v0           #pushDone:Z
    :cond_13c
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-ne p1, v1, :cond_149

    .line 248
    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_IN:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->animateImage(Lcom/google/android/finsky/exploreactivity/AppNode;FZ)V

    goto/16 :goto_16

    .line 254
    :cond_149
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->animateImage(Lcom/google/android/finsky/exploreactivity/AppNode;FZ)V

    goto/16 :goto_16

    .line 98
    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_40
        :pswitch_b4
        :pswitch_d6
    .end packed-switch
.end method

.method public getImageAnimationProgessPercentage()F
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mImageAnimationProgressPercentage:F

    return v0
.end method

.method public getInfoBoxAlpha()F
    .registers 2

    .prologue
    .line 319
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxAlpha:F

    return v0
.end method

.method public getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mInfoBoxNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    return-object v0
.end method

.method public getScrollProgressPercentage()F
    .registers 2

    .prologue
    .line 307
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mScrollProgressPercentage:F

    return v0
.end method

.method public getSplitAnimationProgress()F
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mSplitAnimationProgressPercentage:F

    return v0
.end method

.method public isDisplayingInfoBox()Z
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->mAnimationState:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_NONE:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    if-ne v0, v1, :cond_8

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method
