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

    .line 810
    iput-object p1, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->this$0:Lcom/google/android/music/ActionbarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    #getter for: Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/music/ActionbarController;->access$1000(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    .line 812
    #getter for: Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/music/ActionbarController;->access$1100(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 813
    #getter for: Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/music/ActionbarController;->access$1100(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    .line 817
    :goto_20
    #getter for: Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/music/ActionbarController;->access$1200(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 818
    #getter for: Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/music/ActionbarController;->access$1200(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    .line 822
    :goto_30
    return-void

    .line 815
    :cond_31
    iput-object v1, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    goto :goto_20

    .line 820
    :cond_34
    iput-object v1, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    goto :goto_30
.end method

.method static synthetic access$600(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    return-object v0
.end method

.method private setVisibility(ILandroid/view/View;I)V
    .registers 5
    .parameter "visibility"
    .parameter "view"
    .parameter "barIndex"

    .prologue
    .line 872
    if-nez p2, :cond_3

    .line 880
    :goto_2
    return-void

    .line 875
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->this$0:Lcom/google/android/music/ActionbarController;

    #getter for: Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$1400(Lcom/google/android/music/ActionbarController;)[I

    move-result-object v0

    aget v0, v0, p3

    if-nez v0, :cond_11

    .line 876
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 878
    :cond_11
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getBottomBarView()Landroid/view/View;
    .registers 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    return-object v0
.end method

.method public getSideBarView()Landroid/view/View;
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    return-object v0
.end method

.method public getTopBarView()Landroid/view/View;
    .registers 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 887
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    .line 892
    :goto_6
    return-object v0

    .line 889
    :cond_7
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->this$0:Lcom/google/android/music/ActionbarController;

    #getter for: Lcom/google/android/music/ActionbarController;->mSplitMode:Z
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$1300(Lcom/google/android/music/ActionbarController;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 890
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    goto :goto_6

    .line 892
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

    .line 842
    if-nez p1, :cond_47

    .line 843
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 844
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 845
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 846
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 861
    :goto_1a
    return-void

    .line 847
    :cond_1b
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->this$0:Lcom/google/android/music/ActionbarController;

    #getter for: Lcom/google/android/music/ActionbarController;->mSplitMode:Z
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$1300(Lcom/google/android/music/ActionbarController;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    if-eqz v0, :cond_37

    .line 848
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 849
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 850
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v4}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    goto :goto_1a

    .line 852
    :cond_37
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 853
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v4}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 854
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    goto :goto_1a

    .line 857
    :cond_47
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 858
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    .line 859
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;

    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(ILandroid/view/View;I)V

    goto :goto_1a
.end method
