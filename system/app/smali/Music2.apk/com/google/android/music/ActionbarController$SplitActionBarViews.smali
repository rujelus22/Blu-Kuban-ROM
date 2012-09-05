.class Lcom/google/android/music/ActionbarController$SplitActionBarViews;
.super Ljava/lang/Object;
.source "ActionbarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ActionbarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplitActionBarViews"
.end annotation


# instance fields
.field private final mBottomBarView:Landroid/view/View;

.field private final mSideBarView:Landroid/view/View;

.field private final mTopBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/music/ActionbarController;


# direct methods
.method constructor <init>(Lcom/google/android/music/ActionbarController;I)V
    .registers 5
    .parameter
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 588
    iput-object p1, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->this$0:Lcom/google/android/music/ActionbarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    #getter for: Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/music/ActionbarController;->access$800(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    .line 590
    #getter for: Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/music/ActionbarController;->access$900(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 591
    #getter for: Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/music/ActionbarController;->access$900(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    .line 595
    :goto_20
    #getter for: Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/music/ActionbarController;->access$1000(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 596
    #getter for: Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/music/ActionbarController;->access$1000(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    .line 600
    :goto_30
    return-void

    .line 593
    :cond_31
    iput-object v1, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    goto :goto_20

    .line 598
    :cond_34
    iput-object v1, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    goto :goto_30
.end method

.method static synthetic access$400(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    return-object v0
.end method

.method private setVisibility(ILandroid/view/View;I)V
    .registers 5
    .parameter "visibility"
    .parameter "views"
    .parameter "barIndex"

    .prologue
    .line 648
    if-nez p2, :cond_3

    .line 654
    :cond_2
    :goto_2
    return-void

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->this$0:Lcom/google/android/music/ActionbarController;

    #getter for: Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$1200(Lcom/google/android/music/ActionbarController;)[I

    move-result-object v0

    aget v0, v0, p3

    if-nez v0, :cond_2

    .line 652
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getBottomBarView()Landroid/view/View;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    return-object v0
.end method

.method public getSideBarView()Landroid/view/View;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    return-object v0
.end method

.method public getTopBarView()Landroid/view/View;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 661
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    .line 666
    :goto_6
    return-object v0

    .line 663
    :cond_7
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->this$0:Lcom/google/android/music/ActionbarController;

    #getter for: Lcom/google/android/music/ActionbarController;->mSplitMode:Z
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$1100(Lcom/google/android/music/ActionbarController;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 664
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    goto :goto_6

    .line 666
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    goto :goto_6
.end method

.method public setVisibility(I)V
    .registers 7
    .parameter "visibility"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 620
    if-nez p1, :cond_47

    .line 621
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 622
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 623
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 624
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 639
    :goto_1a
    return-void

    .line 625
    :cond_1b
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->this$0:Lcom/google/android/music/ActionbarController;

    #getter for: Lcom/google/android/music/ActionbarController;->mSplitMode:Z
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$1100(Lcom/google/android/music/ActionbarController;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    if-eqz v0, :cond_37

    .line 626
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 627
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 628
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v4}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    goto :goto_1a

    .line 630
    :cond_37
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 631
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v4}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 632
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    goto :goto_1a

    .line 635
    :cond_47
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 636
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 637
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    goto :goto_1a
.end method
