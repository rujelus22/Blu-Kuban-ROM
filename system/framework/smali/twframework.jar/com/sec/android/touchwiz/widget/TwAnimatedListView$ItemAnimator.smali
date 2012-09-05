.class public Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;
.super Ljava/lang/Object;
.source "TwAnimatedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemAnimator"
.end annotation


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mTempItemList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;


# direct methods
.method protected constructor <init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V
    .registers 3
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    .line 474
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 471
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    .line 475
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    .line 476
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    .line 478
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .registers 2
    .parameter "indent"

    .prologue
    .line 776
    return-void
.end method

.method public forceFinish()V
    .registers 3

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    .line 767
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 768
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 769
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 770
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 771
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    .line 773
    :cond_27
    return-void
.end method

.method public getDeleteItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .registers 4
    .parameter "position"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .registers 4
    .parameter "position"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public getRetainItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .registers 4
    .parameter "position"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public putDeleteItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .registers 4
    .parameter "position"
    .parameter "a"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    return-void
.end method

.method public putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .registers 4
    .parameter "position"
    .parameter "a"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 513
    return-void
.end method

.method public putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .registers 4
    .parameter "position"
    .parameter "a"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 501
    return-void
.end method

.method public removeAll()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 600
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 601
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 602
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 603
    .local v2, aniKey:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 604
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_26

    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_29

    .line 601
    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_29
    move-object v1, v0

    .line 606
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 607
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 608
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 609
    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_26

    .line 613
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #aniKey:I
    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_71

    .line 614
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 615
    .restart local v2       #aniKey:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 616
    .restart local v0       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_5a

    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_5d

    .line 613
    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_5d
    move-object v1, v0

    .line 618
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 619
    .restart local v1       #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5a

    .line 620
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 621
    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_5a

    .line 625
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #aniKey:I
    :cond_71
    const/4 v3, 0x0

    :goto_72
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_a5

    .line 626
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 627
    .restart local v2       #aniKey:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 628
    .restart local v0       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_8e

    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_91

    .line 625
    :cond_8e
    :goto_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    :cond_91
    move-object v1, v0

    .line 630
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 631
    .restart local v1       #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_8e

    .line 632
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 633
    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_8e

    .line 638
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #aniKey:I
    .end local v3           #i:I
    :cond_a5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 639
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 640
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 641
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_cb

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_cb

    .line 642
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 643
    :cond_cb
    return-void
.end method

.method public removeDeleteItemAnimation(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 581
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 582
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 583
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_2a

    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_2a

    move-object v1, v0

    .line 584
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 585
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 586
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 587
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 591
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 592
    return-void
.end method

.method public removeDeleteItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .registers 6
    .parameter "a"

    .prologue
    .line 563
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 564
    .local v1, i:I
    if-ltz v1, :cond_33

    .line 565
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_28

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_28

    move-object v0, p1

    .line 566
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 567
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 568
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 569
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 572
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_28
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 575
    :cond_33
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_4a

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_4a

    .line 576
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 577
    :cond_4a
    return-void
.end method

.method public removeItemAnimation(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 547
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 548
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 549
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_2a

    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_2a

    move-object v1, v0

    .line 550
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 551
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 552
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 553
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 557
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 558
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_46

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_46

    .line 559
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 560
    :cond_46
    return-void
.end method

.method public removeItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .registers 6
    .parameter "a"

    .prologue
    .line 523
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 524
    .local v1, i:I
    if-ltz v1, :cond_33

    .line 525
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_28

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_28

    move-object v0, p1

    .line 526
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 527
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 528
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 529
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 532
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_28
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 534
    :cond_33
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_4a

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_4a

    .line 535
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 536
    :cond_4a
    return-void
.end method

.method public removeRetainItemAnimation(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 663
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 664
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 665
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_2a

    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_2a

    move-object v1, v0

    .line 666
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 667
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 668
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 669
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 673
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 674
    return-void
.end method

.method public removeRetainItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .registers 6
    .parameter "a"

    .prologue
    .line 647
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 648
    .local v1, i:I
    if-ltz v1, :cond_33

    .line 649
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_28

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_28

    move-object v0, p1

    .line 650
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 651
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 652
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 653
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 656
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_28
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 658
    :cond_33
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_4a

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_4a

    .line 659
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 660
    :cond_4a
    return-void
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 695
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 696
    .local v3, curTime:J
    const/4 v1, 0x1

    .line 697
    .local v1, allFinished:Z
    const/4 v2, 0x0

    .line 698
    .local v2, animationCount:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 699
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 700
    .local v10, size:I
    add-int/2addr v2, v10

    .line 701
    add-int/lit8 v6, v10, -0x1

    .local v6, i:I
    :goto_15
    if-ltz v6, :cond_3d

    .line 702
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 703
    .local v9, position:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 705
    .local v8, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 706
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 707
    .local v5, finished:Z
    and-int/2addr v1, v5

    .line 708
    if-eqz v5, :cond_3a

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_3a

    .line 709
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_3a
    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    .line 712
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_3d
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 713
    add-int/2addr v2, v10

    .line 714
    add-int/lit8 v6, v10, -0x1

    :goto_46
    if-ltz v6, :cond_6e

    .line 715
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 716
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 718
    .restart local v8       #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 719
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 720
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 721
    if-eqz v5, :cond_6b

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_6b

    .line 722
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_6b
    add-int/lit8 v6, v6, -0x1

    goto :goto_46

    .line 725
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_6e
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 726
    add-int/2addr v2, v10

    .line 727
    add-int/lit8 v6, v10, -0x1

    :goto_77
    if-ltz v6, :cond_9f

    .line 728
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 729
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 731
    .restart local v8       #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 732
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 733
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 734
    if-eqz v5, :cond_9c

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_9c

    .line 735
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_9c
    add-int/lit8 v6, v6, -0x1

    goto :goto_77

    .line 739
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_9f
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_a5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_bb

    .line 740
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 741
    .local v0, aToDelete:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 742
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeRetainItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 739
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeDeleteItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_a5

    .line 745
    .end local v0           #aToDelete:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    :cond_bb
    if-nez v2, :cond_c4

    .line 746
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 747
    :cond_c4
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 749
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->invalidate()V

    .line 750
    if-nez v1, :cond_d6

    .line 751
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v11, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->post(Ljava/lang/Runnable;)Z

    .line 759
    :cond_d5
    :goto_d5
    return-void

    .line 753
    :cond_d6
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v11

    if-eqz v11, :cond_d5

    .line 754
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v12, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v11, v12}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 755
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v11

    if-eqz v11, :cond_d5

    .line 756
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    goto :goto_d5
.end method

.method public start()V
    .registers 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 683
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 684
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->run()V

    .line 685
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 686
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStart()V

    .line 687
    :cond_27
    return-void
.end method
