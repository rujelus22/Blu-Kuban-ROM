.class Lcom/google/android/music/albumwall/AlbumWallRenderer$11;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(III)Lcom/google/android/opengl/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field final synthetic val$baseIndex:I

.field final synthetic val$isClusterExpandedLabelVertical:Z

.field final synthetic val$isExpandLabelExpandSize:Z

.field final synthetic val$maxIndex:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;IIZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$maxIndex:I

    iput p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$baseIndex:I

    iput-boolean p4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$isClusterExpandedLabelVertical:Z

    iput-boolean p5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$isExpandLabelExpandSize:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onPileClick(ZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Z
    .registers 9
    .parameter "fromDpad"
    .parameter "pile"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 836
    if-eqz p2, :cond_1d

    .line 839
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1, p2, v2}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v1

    if-ne v1, v4, :cond_1e

    .line 840
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1, p2, v2, v2}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v0

    .line 841
    .local v0, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v0, :cond_1e

    .line 842
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    invoke-static {v1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$300(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 857
    .end local v0           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :cond_1d
    :goto_1d
    return v4

    .line 846
    :cond_1e
    if-eqz p1, :cond_25

    .line 847
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #setter for: Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnFirstExpandedItem:Z
    invoke-static {v1, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$802(Lcom/google/android/music/albumwall/AlbumWallRenderer;Z)Z

    .line 850
    :cond_25
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;
    invoke-static {v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$900(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumPoseCache;->clear()V

    .line 851
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;
    invoke-static {v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$1000(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v1

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;
    invoke-static {v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$900(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/opengl/glview/TopLevelView;->visit(ILjava/lang/Object;)V

    .line 854
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/music/albumwall/Model;->setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V

    .line 855
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    goto :goto_1d
.end method

.method private preload(III)V
    .registers 14
    .parameter "first"
    .parameter "count"
    .parameter "childCount"

    .prologue
    const/4 v9, 0x0

    .line 887
    invoke-static {v9, p1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 888
    .local v7, start:I
    add-int v8, p1, p2

    invoke-static {p3, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 889
    .local v0, end:I
    move v1, v7

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_42

    .line 890
    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->getPileAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v4

    .line 891
    .local v4, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-eqz v4, :cond_3f

    .line 892
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v8, v8, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v8, v9, v4, v9, v9}, Lcom/google/android/music/albumwall/Model;->getPileTextureId(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)I

    .line 893
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v8, v8, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v8, v4, v9}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v5

    .line 894
    .local v5, pileChildCount:I
    const/4 v8, 0x4

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 895
    .local v6, pileChildPreloadCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_29
    if-ge v3, v6, :cond_3f

    .line 896
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v8, v8, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v8, v4, v9, v3}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 897
    .local v2, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v2, :cond_3c

    .line 898
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v8, v8, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v8, v2, v9}, Lcom/google/android/music/albumwall/Model;->getItemTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I

    .line 895
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 889
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v3           #j:I
    .end local v5           #pileChildCount:I
    .end local v6           #pileChildPreloadCount:I
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 903
    .end local v4           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    :cond_42
    return-void
.end method


# virtual methods
.method public adviseVisible(III)V
    .registers 7
    .parameter "firstVisible"
    .parameter "count"
    .parameter "minorAxisCount"

    .prologue
    .line 878
    if-lez p2, :cond_12

    .line 879
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->count()I

    move-result v0

    .line 880
    .local v0, childCount:I
    mul-int/lit8 v1, p3, 0x2

    .line 881
    .local v1, preloadCount:I
    sub-int v2, p1, v1

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->preload(III)V

    .line 882
    add-int v2, p1, p2

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->preload(III)V

    .line 884
    .end local v0           #childCount:I
    .end local v1           #preloadCount:I
    :cond_12
    return-void
.end method

.method public count()I
    .registers 4

    .prologue
    .line 703
    iget v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$maxIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getPileCount()I

    move-result v1

    :goto_d
    iget v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$baseIndex:I

    sub-int v0, v1, v2

    .line 704
    .local v0, count:I
    return v0

    .line 703
    .end local v0           #count:I
    :cond_12
    iget v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$maxIndex:I

    goto :goto_d
.end method

.method public getCellLength(Z)F
    .registers 6
    .parameter "horizontal"

    .prologue
    .line 724
    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$isExpandLabelExpandSize:Z

    if-nez v1, :cond_18

    .line 725
    if-eqz p1, :cond_f

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v1

    .line 734
    :goto_e
    return v1

    .line 725
    :cond_f
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v1

    goto :goto_e

    .line 728
    :cond_18
    const/high16 v0, 0x3f80

    .line 729
    .local v0, labelScale:F
    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$isClusterExpandedLabelVertical:Z

    if-eqz v1, :cond_45

    .line 730
    if-eqz p1, :cond_29

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterCellWidth()F

    move-result v1

    goto :goto_e

    :cond_29
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterCellHeight()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelHeight()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v3, v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    goto :goto_e

    .line 734
    :cond_45
    if-eqz p1, :cond_63

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterCellWidth()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelWidth()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v3, v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    goto :goto_e

    :cond_63
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterCellHeight()F

    move-result v1

    goto :goto_e
.end method

.method public getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .registers 3
    .parameter "index"

    .prologue
    .line 861
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPileAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .registers 4
    .parameter "index"

    .prologue
    .line 865
    iget v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$baseIndex:I

    add-int v0, v1, p1

    .line 866
    .local v0, pileIndex:I
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1, v0}, Lcom/google/android/music/albumwall/Model;->getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v1

    return-object v1
.end method

.method public getPileIndexAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 870
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$baseIndex:I

    add-int/2addr v0, p1

    return v0
.end method

.method public isPileList()Z
    .registers 2

    .prologue
    .line 874
    const/4 v0, 0x1

    return v0
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 16
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 747
    sparse-switch p1, :sswitch_data_aa

    .end local p3
    :cond_5
    :goto_5
    move v8, v9

    .line 823
    :goto_6
    return v8

    .line 753
    .restart local p3
    :sswitch_7
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, pileIndex:I
    move-object v7, p4

    .line 754
    check-cast v7, Lcom/google/android/opengl/glview/GLView;

    .line 755
    .local v7, view:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {p0, v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->getPileAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v4

    .line 756
    .local v4, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-eqz v4, :cond_5

    .line 757
    packed-switch p2, :pswitch_data_bc

    .line 765
    :pswitch_19
    iget v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$baseIndex:I

    add-int/2addr v8, v5

    invoke-direct {p0, v9, v4, v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->onPileClick(ZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Z

    goto :goto_5

    .line 759
    :pswitch_20
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectPileMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v8, v4, v7}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$500(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_5

    .line 762
    :pswitch_26
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectPileLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v8, v4, v7}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$600(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_5

    .line 776
    .end local v4           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v5           #pileIndex:I
    .end local v7           #view:Lcom/google/android/opengl/glview/GLView;
    .restart local p3
    :sswitch_2c
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 777
    .restart local v5       #pileIndex:I
    invoke-virtual {p0, v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->getPileAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v4

    .line 778
    .restart local v4       #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-eqz v4, :cond_5

    move-object v7, p4

    .line 779
    check-cast v7, Lcom/google/android/opengl/glview/GLView;

    .line 780
    .restart local v7       #view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v7, :cond_5

    .line 781
    iget-object v9, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->longPressPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v9, v4, v7}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$700(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 792
    .end local v4           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v5           #pileIndex:I
    .end local v7           #view:Lcom/google/android/opengl/glview/GLView;
    .restart local p3
    :sswitch_43
    instance-of v10, p4, Lcom/google/android/music/albumwall/PileView;

    if-eqz v10, :cond_5d

    move-object v0, p4

    .line 793
    check-cast v0, Lcom/google/android/music/albumwall/PileView;

    .line 794
    .local v0, albumPile:Lcom/google/android/music/albumwall/PileView;
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p3, v10, :cond_5b

    :goto_4e
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/PileView;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/PileView;->getIndex()I

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->onPileClick(ZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Z

    move-result v8

    goto :goto_6

    :cond_5b
    move v8, v9

    goto :goto_4e

    .line 796
    .end local v0           #albumPile:Lcom/google/android/music/albumwall/PileView;
    :cond_5d
    instance-of v10, p4, Lcom/google/android/music/albumwall/PileLabel;

    if-eqz v10, :cond_6e

    move-object v2, p4

    .line 797
    check-cast v2, Lcom/google/android/music/albumwall/PileLabel;

    .line 798
    .local v2, label:Lcom/google/android/music/albumwall/PileLabel;
    invoke-virtual {v2}, Lcom/google/android/music/albumwall/PileLabel;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v4

    .line 799
    .restart local v4       #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v9, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectPileLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v9, v4, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$600(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 801
    .end local v2           #label:Lcom/google/android/music/albumwall/PileLabel;
    .end local v4           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    :cond_6e
    instance-of v10, p4, Lcom/google/android/music/albumwall/MarkView;

    if-eqz v10, :cond_5

    move-object v3, p4

    .line 802
    check-cast v3, Lcom/google/android/music/albumwall/MarkView;

    .line 803
    .local v3, mark:Lcom/google/android/music/albumwall/MarkView;
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MarkView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v1

    .line 804
    .local v1, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    instance-of v9, v1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v9, :cond_86

    move-object v4, v1

    .line 805
    check-cast v4, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 806
    .restart local v4       #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v9, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectPileMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v9, v4, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$500(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 808
    .end local v4           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    :cond_86
    const-string v9, "AlbumWallRenderer"

    const-string v10, "MESSAGE_CLICK on the wrong item."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v9, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v9, v1, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$100(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    goto/16 :goto_6

    .line 815
    .end local v1           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v3           #mark:Lcom/google/android/music/albumwall/MarkView;
    :sswitch_94
    instance-of v10, p4, Lcom/google/android/music/albumwall/PileView;

    if-eqz v10, :cond_5

    instance-of v10, p3, Landroid/view/MotionEvent;

    if-eqz v10, :cond_5

    move-object v6, p4

    .line 816
    check-cast v6, Lcom/google/android/music/albumwall/PileView;

    .line 817
    .local v6, pileView:Lcom/google/android/music/albumwall/PileView;
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/PileView;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v4

    .line 818
    .restart local v4       #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v9, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->longPressPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v9, v4, v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$700(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    goto/16 :goto_6

    .line 747
    :sswitch_data_aa
    .sparse-switch
        0x0 -> :sswitch_43
        0x2 -> :sswitch_94
        0x64 -> :sswitch_7
        0x65 -> :sswitch_2c
    .end sparse-switch

    .line 757
    :pswitch_data_bc
    .packed-switch 0x3
        :pswitch_26
        :pswitch_19
        :pswitch_20
    .end packed-switch
.end method

.method public recycle(Lcom/google/android/opengl/glview/GLView;I)V
    .registers 3
    .parameter "view"
    .parameter "index"

    .prologue
    .line 741
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 742
    return-void
.end method

.method public viewAt(I)Lcom/google/android/opengl/glview/GLView;
    .registers 10
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 708
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$baseIndex:I

    add-int v5, v0, p1

    .line 709
    .local v5, pileIndex:I
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, v5}, Lcom/google/android/music/albumwall/Model;->getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v3

    .line 710
    .local v3, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-nez v3, :cond_2b

    .line 712
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v2

    iget-object v7, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v7, v7, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageHeight()F

    move-result v7

    invoke-virtual {v0, v2, v7}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPlaceHolderItem(FF)Lcom/google/android/music/albumwall/PlaceHolderItem;

    move-result-object v6

    .line 714
    .local v6, placeHolder:Lcom/google/android/music/albumwall/PlaceHolderItem;
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V
    invoke-static {v0, v6, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$000(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 719
    .end local v6           #placeHolder:Lcom/google/android/music/albumwall/PlaceHolderItem;
    :goto_2a
    return-object v6

    .line 718
    :cond_2b
    const/4 v4, 0x1

    .line 719
    .local v4, wantLabel:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-boolean v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->val$isClusterExpandedLabelVertical:Z

    if-nez v2, :cond_33

    const/4 v1, 0x1

    :cond_33
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genAlbumGroup(ZFLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v6

    goto :goto_2a
.end method
