.class public Lcom/google/android/finsky/exploreactivity/NodeController;
.super Ljava/lang/Object;
.source "NodeController.java"


# instance fields
.field private mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

.field private mCenterX:F

.field private mCenterY:F

.field private mCurrentNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/AppNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDeltaTime:F

.field private final mExistingNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFadeOutNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/AppNode;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/AppNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mReturnNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/AppNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    .line 44
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mExistingNodes:Ljava/util/Set;

    return-void
.end method

.method private collapse()V
    .registers 3

    .prologue
    .line 403
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 404
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->collapseNode(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    :cond_1f
    return-void
.end method

.method private collapseNode(Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 4
    .parameter "appNode"

    .prologue
    .line 414
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasExpandedChildren()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 415
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->collapseChildren()V

    .line 417
    const/4 v0, 0x0

    .local v0, j:I
    :goto_a
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 418
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->collapseNode(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 421
    .end local v0           #j:I
    :cond_24
    return-void
.end method

.method private expand()V
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    .line 386
    .local v0, currNode:Lcom/google/android/finsky/exploreactivity/AppNode;
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasExpandedChildren()Z

    move-result v1

    if-nez v1, :cond_16

    .line 387
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->expandChildren()V

    .line 388
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasParent()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 389
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getParent()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v0

    goto :goto_2

    .line 395
    :cond_16
    return-void
.end method

.method private getChildrenScreenNodes(Lcom/google/android/finsky/exploreactivity/AppNode;FFFF)V
    .registers 13
    .parameter "appNode"
    .parameter "x1"
    .parameter "x2"
    .parameter "y1"
    .parameter "y2"

    .prologue
    .line 251
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDeltaTime:F

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->repositionAndAnimate(F)V

    .line 258
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->setAlphaScaleAndScore(FF)V

    .line 261
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasCreatedChildren()Z

    move-result v0

    if-nez v0, :cond_17

    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mExistingNodes:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->createChildren(Ljava/util/Set;)V

    .line 266
    :cond_17
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/exploreactivity/AppNode;->isInBoundaries(FFFF)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-ne p1, v0, :cond_4d

    .line 269
    :cond_21
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->loadTexture()V

    .line 275
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->usePrimaryLineTexture(Z)V

    .line 278
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2e
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_4d

    .line 279
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/AppNode;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getChildrenScreenNodes(Lcom/google/android/finsky/exploreactivity/AppNode;FFFF)V

    .line 278
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 284
    .end local v6           #i:I
    :cond_4d
    return-void
.end method

.method private getFadeOutNodes(F)Ljava/util/List;
    .registers 4
    .parameter "deltaTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/AppNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 347
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->repositionAndAnimate(F)V

    .line 350
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->isFading()Z

    move-result v1

    if-nez v1, :cond_34

    .line 352
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->disposeTexture()V

    .line 355
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 356
    add-int/lit8 v0, v0, -0x1

    .line 344
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    :cond_37
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    return-object v1
.end method

.method private getParentScreenNodes(Lcom/google/android/finsky/exploreactivity/AppNode;FFFF)V
    .registers 12
    .parameter "appNode"
    .parameter "x1"
    .parameter "x2"
    .parameter "y1"
    .parameter "y2"

    .prologue
    .line 302
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDeltaTime:F

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->repositionAndAnimate(F)V

    .line 308
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->setAlphaScaleAndScore(FF)V

    .line 311
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/exploreactivity/AppNode;->isInBoundaries(FFFF)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 314
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 317
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->loadTexture()V

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->usePrimaryLineTexture(Z)V

    .line 326
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 327
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getParent()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getParentScreenNodes(Lcom/google/android/finsky/exploreactivity/AppNode;FFFF)V

    .line 333
    :cond_38
    return-void
.end method

.method private setCenter(FFFF)V
    .registers 7
    .parameter "x1"
    .parameter "x2"
    .parameter "y1"
    .parameter "y2"

    .prologue
    const/high16 v1, 0x4000

    .line 373
    sub-float v0, p2, p1

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterX:F

    .line 374
    sub-float v0, p4, p3

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterY:F

    .line 375
    return-void
.end method


# virtual methods
.method public declared-synchronized createRoot(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;I)V
    .registers 7
    .parameter "doc"
    .parameter "dfeApi"
    .parameter "bitmapLoader"
    .parameter "radius"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-nez v0, :cond_1b

    .line 63
    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/finsky/exploreactivity/AppNode;-><init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;I)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mExistingNodes:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 66
    :cond_1b
    monitor-exit p0

    return-void

    .line 62
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCenterNode()Lcom/google/android/finsky/exploreactivity/AppNode;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    return-object v0
.end method

.method public getNodes(FFFFF)Ljava/util/List;
    .registers 15
    .parameter "x1"
    .parameter "x2"
    .parameter "y1"
    .parameter "y2"
    .parameter "deltaTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFF)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/AppNode;",
            ">;"
        }
    .end annotation

    .prologue
    const v1, 0x3dcccccd

    .line 97
    iput p5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDeltaTime:F

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/exploreactivity/NodeController;->setCenter(FFFF)V

    .line 104
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    .line 105
    .local v7, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/AppNode;>;"
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    .line 106
    iput-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    sub-float v0, p2, p1

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 111
    sub-float v0, p2, p1

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 112
    sub-float v0, p4, p3

    mul-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 113
    sub-float v0, p4, p3

    mul-float/2addr v0, v1

    add-float/2addr p4, v0

    .line 116
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getChildrenScreenNodes(Lcom/google/android/finsky/exploreactivity/AppNode;FFFF)V

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getParent()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getParentScreenNodes(Lcom/google/android/finsky/exploreactivity/AppNode;FFFF)V

    .line 125
    :cond_45
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->usePrimaryLineTexture(Z)V

    .line 130
    iget-object v8, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    .line 132
    .local v8, tempNode:Lcom/google/android/finsky/exploreactivity/AppNode;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4e
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_81

    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getInverseCenterScore()F

    move-result v0

    invoke-virtual {v8}, Lcom/google/android/finsky/exploreactivity/AppNode;->getInverseCenterScore()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7e

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #tempNode:Lcom/google/android/finsky/exploreactivity/AppNode;
    check-cast v8, Lcom/google/android/finsky/exploreactivity/AppNode;

    .line 132
    .restart local v8       #tempNode:Lcom/google/android/finsky/exploreactivity/AppNode;
    :cond_7e
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 139
    :cond_81
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getParent()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getInverseCenterScore()F

    move-result v0

    invoke-virtual {v8}, Lcom/google/android/finsky/exploreactivity/AppNode;->getInverseCenterScore()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a1

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getParent()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v8

    .line 145
    :cond_a1
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    if-eq v0, v8, :cond_a7

    .line 146
    iput-object v8, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    .line 150
    :cond_a7
    const/4 v6, 0x0

    :goto_a8
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_e5

    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    :cond_d7
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->fadeIn()V

    .line 150
    :cond_e2
    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    .line 164
    :cond_e5
    const/4 v6, 0x0

    :goto_e6
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_115

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->fadeOut()V

    .line 164
    :cond_112
    add-int/lit8 v6, v6, 0x1

    goto :goto_e6

    .line 174
    :cond_115
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-direct {p0, p5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getFadeOutNodes(F)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->expand()V

    .line 183
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->collapse()V

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized hasRoot()Z
    .registers 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/AppNode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_6

    .line 75
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isExpandingOrCollapsing()Z
    .registers 5

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, isExpandingOrCollpasing:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 207
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/AppNode;->isExpandingOrCollapsing()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 208
    const/4 v1, 0x1

    .line 212
    :cond_1a
    return v1

    .line 206
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public resetTexture(FFFF)V
    .registers 13
    .parameter "x1"
    .parameter "x2"
    .parameter "y1"
    .parameter "y2"

    .prologue
    .line 226
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodes(FFFFF)Ljava/util/List;

    move-result-object v7

    .line 228
    .local v7, nodesToReset:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/AppNode;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2a

    .line 229
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->setImageState(Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;)V

    .line 230
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$TextState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$TextState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->setTextState(Lcom/google/android/finsky/exploreactivity/AppNode$TextState;)V

    .line 228
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 233
    :cond_2a
    return-void
.end method
