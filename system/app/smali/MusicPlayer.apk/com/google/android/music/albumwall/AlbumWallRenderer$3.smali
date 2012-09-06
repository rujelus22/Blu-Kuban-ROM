.class Lcom/google/android/music/albumwall/AlbumWallRenderer$3;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;->createAlbumList(IZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field final synthetic val$defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;

.field final synthetic val$isExpandLabelExpandSize:Z

.field final synthetic val$isExpanded:Z

.field final synthetic val$isExpandedLabelVertical:Z

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field final synthetic val$pileIndex:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZZLcom/google/android/opengl/glview/TexturedQuad$Pose;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-boolean p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandLabelExpandSize:Z

    iput-boolean p4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpanded:Z

    iput-boolean p5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandedLabelVertical:Z

    iput-object p6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    iput p7, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pileIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private preload(III)V
    .registers 10
    .parameter "first"
    .parameter "count"
    .parameter "childCount"

    .prologue
    const/4 v5, 0x0

    .line 586
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 587
    .local v3, start:I
    add-int v4, p1, p2

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 588
    .local v0, end:I
    move v1, v3

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_25

    .line 589
    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 590
    .local v2, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v2, :cond_22

    .line 591
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v4, v4, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/music/albumwall/Model;->getItemTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I

    .line 592
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v4, v4, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/music/albumwall/Model;->getItemLabelTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I

    .line 588
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 595
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :cond_25
    return-void
.end method


# virtual methods
.method public adviseVisible(III)V
    .registers 7
    .parameter "firstVisible"
    .parameter "count"
    .parameter "minorAxisCount"

    .prologue
    .line 577
    if-lez p2, :cond_12

    .line 578
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->count()I

    move-result v0

    .line 579
    .local v0, childCount:I
    mul-int/lit8 v1, p3, 0x2

    .line 580
    .local v1, preloadCount:I
    sub-int v2, p1, v1

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->preload(III)V

    .line 581
    add-int v2, p1, p2

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->preload(III)V

    .line 583
    .end local v0           #childCount:I
    .end local v1           #preloadCount:I
    :cond_12
    return-void
.end method

.method public count()I
    .registers 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v0

    return v0
.end method

.method public getCellLength(Z)F
    .registers 5
    .parameter "horizontal"

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandLabelExpandSize:Z

    if-nez v0, :cond_18

    .line 436
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getCellWidth()F

    move-result v0

    .line 443
    :goto_e
    return v0

    .line 436
    :cond_f
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getCellHeight()F

    move-result v0

    goto :goto_e

    .line 438
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandedLabelVertical:Z

    if-eqz v0, :cond_42

    .line 439
    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v0

    goto :goto_e

    :cond_27
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_e

    .line 443
    :cond_42
    if-eqz p1, :cond_5f

    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_e

    :cond_5f
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v0

    goto :goto_e
.end method

.method public getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .registers 5
    .parameter "index"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v0

    return-object v0
.end method

.method public getPileAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .registers 3
    .parameter "index"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v0
.end method

.method public getPileIndexAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 569
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pileIndex:I

    return v0
.end method

.method public isPileList()Z
    .registers 2

    .prologue
    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 15
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 456
    sparse-switch p1, :sswitch_data_be

    .end local p3
    :cond_5
    move v7, v8

    .line 557
    .end local p4
    :cond_6
    :goto_6
    return v7

    .line 462
    .restart local p3
    .restart local p4
    :sswitch_7
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, itemIndex:I
    move-object v6, p4

    .line 463
    check-cast v6, Lcom/google/android/opengl/glview/GLView;

    .line 465
    .local v6, view:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {p0, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 466
    .local v2, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v2, :cond_5

    .line 467
    packed-switch p2, :pswitch_data_dc

    .line 475
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    invoke-static {v8, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$300(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    goto :goto_6

    .line 469
    :pswitch_1f
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v8, v2, v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$100(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 472
    :pswitch_25
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v8, v2, v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$200(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 487
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v3           #itemIndex:I
    .end local v6           #view:Lcom/google/android/opengl/glview/GLView;
    .restart local p3
    :sswitch_2b
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 488
    .restart local v3       #itemIndex:I
    invoke-virtual {p0, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 489
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v2, :cond_5

    move-object v6, p4

    .line 490
    check-cast v6, Lcom/google/android/opengl/glview/GLView;

    .line 491
    .restart local v6       #view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v6, :cond_6

    .line 492
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->longPressItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v8, v2, v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$400(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 503
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v3           #itemIndex:I
    .end local v6           #view:Lcom/google/android/opengl/glview/GLView;
    .restart local p3
    :sswitch_42
    instance-of v9, p4, Lcom/google/android/music/albumwall/ItemView;

    if-eqz v9, :cond_52

    .line 504
    check-cast p4, Lcom/google/android/music/albumwall/ItemView;

    .end local p4
    invoke-virtual {p4}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 506
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    invoke-static {v8, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$300(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    goto :goto_6

    .line 508
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .restart local p4
    :cond_52
    instance-of v9, p4, Lcom/google/android/music/albumwall/ItemLabel;

    if-eqz v9, :cond_63

    move-object v4, p4

    .line 509
    check-cast v4, Lcom/google/android/music/albumwall/ItemLabel;

    .line 510
    .local v4, label:Lcom/google/android/music/albumwall/ItemLabel;
    invoke-virtual {v4}, Lcom/google/android/music/albumwall/ItemLabel;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 511
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v8, v2, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$200(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 513
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v4           #label:Lcom/google/android/music/albumwall/ItemLabel;
    :cond_63
    instance-of v9, p4, Lcom/google/android/music/albumwall/MarkView;

    if-eqz v9, :cond_5

    move-object v5, p4

    .line 514
    check-cast v5, Lcom/google/android/music/albumwall/MarkView;

    .line 515
    .local v5, mark:Lcom/google/android/music/albumwall/MarkView;
    invoke-virtual {v5}, Lcom/google/android/music/albumwall/MarkView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 516
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v8, v2, v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$100(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 521
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v5           #mark:Lcom/google/android/music/albumwall/MarkView;
    :sswitch_74
    instance-of v9, p4, Lcom/google/android/music/albumwall/ItemView;

    if-eqz v9, :cond_5

    move-object v0, p4

    .line 522
    check-cast v0, Lcom/google/android/music/albumwall/ItemView;

    .line 523
    .local v0, album:Lcom/google/android/music/albumwall/ItemView;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 524
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->longPressItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v8, v2, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$400(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 529
    .end local v0           #album:Lcom/google/android/music/albumwall/ItemView;
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :sswitch_85
    instance-of v9, p3, Lcom/google/android/music/albumwall/ItemView;

    if-eqz v9, :cond_5

    move-object v0, p3

    .line 530
    check-cast v0, Lcom/google/android/music/albumwall/ItemView;

    .line 531
    .restart local v0       #album:Lcom/google/android/music/albumwall/ItemView;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 532
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v8, v8, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v9, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$1;

    invoke-direct {v9, p0, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$1;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer$3;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    invoke-virtual {v8, v9, v7}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    goto/16 :goto_6

    .line 543
    .end local v0           #album:Lcom/google/android/music/albumwall/ItemView;
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :sswitch_9e
    const/4 v9, 0x4

    if-ne p1, v9, :cond_bb

    move v1, v7

    .line 544
    .local v1, entered:Z
    :goto_a2
    instance-of v9, p3, Lcom/google/android/music/albumwall/ItemView;

    if-eqz v9, :cond_5

    move-object v0, p3

    .line 545
    check-cast v0, Lcom/google/android/music/albumwall/ItemView;

    .line 546
    .restart local v0       #album:Lcom/google/android/music/albumwall/ItemView;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 547
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v8, v8, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v9, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$2;

    invoke-direct {v9, p0, v2, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$2;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer$3;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)V

    invoke-virtual {v8, v9, v7}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    goto/16 :goto_6

    .end local v0           #album:Lcom/google/android/music/albumwall/ItemView;
    .end local v1           #entered:Z
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :cond_bb
    move v1, v8

    .line 543
    goto :goto_a2

    .line 456
    nop

    :sswitch_data_be
    .sparse-switch
        0x0 -> :sswitch_42
        0x2 -> :sswitch_74
        0x3 -> :sswitch_85
        0x4 -> :sswitch_9e
        0x5 -> :sswitch_9e
        0x64 -> :sswitch_7
        0x65 -> :sswitch_2b
    .end sparse-switch

    .line 467
    :pswitch_data_dc
    .packed-switch 0x4
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method

.method public recycle(Lcom/google/android/opengl/glview/GLView;I)V
    .registers 3
    .parameter "view"
    .parameter "index"

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 451
    return-void
.end method

.method public viewAt(I)Lcom/google/android/opengl/glview/GLView;
    .registers 11
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 415
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v0, v4, v1, p1}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v5

    .line 416
    .local v5, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandLabelExpandSize:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v2

    .line 419
    .local v2, imageWidth:F
    :goto_17
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandLabelExpandSize:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v3

    .line 422
    .local v3, imageHeight:F
    :goto_23
    if-nez v5, :cond_6b

    .line 424
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPlaceHolderItem(FF)Lcom/google/android/music/albumwall/PlaceHolderItem;

    move-result-object v8

    .line 425
    .local v8, defaultItem:Lcom/google/android/music/albumwall/PlaceHolderItem;
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpanded:Z

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V
    invoke-static {v0, v8, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$000(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 428
    .end local v8           #defaultItem:Lcom/google/android/music/albumwall/PlaceHolderItem;
    :goto_32
    return-object v8

    .line 416
    .end local v2           #imageWidth:F
    .end local v3           #imageHeight:F
    :cond_33
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v0

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v4, v4, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v4

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v6, v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v6

    sub-float/2addr v4, v6

    sub-float v2, v0, v4

    goto :goto_17

    .line 419
    .restart local v2       #imageWidth:F
    :cond_4f
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v0

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v4, v4, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v4

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v6, v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageHeight()F

    move-result v6

    sub-float/2addr v4, v6

    sub-float v3, v0, v4

    goto :goto_23

    .line 428
    .restart local v3       #imageHeight:F
    :cond_6b
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandedLabelVertical:Z

    if-nez v4, :cond_8e

    :goto_71
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v4, v4, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelMargin()F

    move-result v4

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v6, v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxClosedPileCount()I

    move-result v6

    if-gt p1, v6, :cond_85

    if-nez p1, :cond_90

    :cond_85
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    :goto_87
    iget-boolean v7, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpanded:Z

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genAlbum(ZFFFLcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/TexturedQuad$Pose;Z)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    goto :goto_32

    :cond_8e
    const/4 v1, 0x0

    goto :goto_71

    :cond_90
    const/4 v6, 0x0

    goto :goto_87
.end method
