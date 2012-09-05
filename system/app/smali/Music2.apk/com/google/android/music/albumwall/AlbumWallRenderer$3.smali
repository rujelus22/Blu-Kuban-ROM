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

.field final synthetic val$isTopLevel:Z

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field final synthetic val$pileIndex:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZZZLcom/google/android/opengl/glview/TexturedQuad$Pose;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-boolean p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isTopLevel:Z

    iput-boolean p4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandLabelExpandSize:Z

    iput-boolean p5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpanded:Z

    iput-boolean p6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandedLabelVertical:Z

    iput-object p7, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    iput p8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pileIndex:I

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

    .line 536
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 537
    .local v3, start:I
    add-int v4, p1, p2

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 538
    .local v0, end:I
    move v1, v3

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_25

    .line 539
    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 540
    .local v2, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v2, :cond_22

    .line 541
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v4, v4, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/music/albumwall/Model;->getItemTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I

    .line 542
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v4, v4, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/music/albumwall/Model;->getItemLabelTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I

    .line 538
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 545
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
    .line 527
    if-lez p2, :cond_12

    .line 528
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->count()I

    move-result v0

    .line 529
    .local v0, childCount:I
    mul-int/lit8 v1, p3, 0x2

    .line 530
    .local v1, preloadCount:I
    sub-int v2, p1, v1

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->preload(III)V

    .line 531
    add-int v2, p1, p2

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->preload(III)V

    .line 533
    .end local v0           #childCount:I
    .end local v1           #preloadCount:I
    :cond_12
    return-void
.end method

.method public count()I
    .registers 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v0

    return v0
.end method

.method public getCellLength(Z)F
    .registers 6
    .parameter "horizontal"

    .prologue
    .line 429
    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandLabelExpandSize:Z

    if-nez v1, :cond_18

    .line 430
    if-eqz p1, :cond_f

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getCellWidth()F

    move-result v1

    .line 438
    :goto_e
    return v1

    .line 430
    :cond_f
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getCellHeight()F

    move-result v1

    goto :goto_e

    .line 432
    :cond_18
    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isTopLevel:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v0

    .line 433
    .local v0, labelScale:F
    :goto_24
    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandedLabelVertical:Z

    if-eqz v1, :cond_52

    .line 434
    if-eqz p1, :cond_36

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v1

    goto :goto_e

    .line 432
    .end local v0           #labelScale:F
    :cond_33
    const/high16 v0, 0x3f80

    goto :goto_24

    .line 434
    .restart local v0       #labelScale:F
    :cond_36
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v3, v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    goto :goto_e

    .line 438
    :cond_52
    if-eqz p1, :cond_70

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v3, v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    goto :goto_e

    :cond_70
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v1

    goto :goto_e
.end method

.method public getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .registers 5
    .parameter "index"

    .prologue
    .line 511
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
    .line 515
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v0
.end method

.method public getPileIndexAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 519
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pileIndex:I

    return v0
.end method

.method public isPileList()Z
    .registers 2

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 13
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 451
    packed-switch p1, :pswitch_data_80

    :cond_5
    :pswitch_5
    move v5, v6

    .line 507
    .end local p4
    :goto_6
    return v5

    .line 453
    .restart local p4
    :pswitch_7
    instance-of v7, p4, Lcom/google/android/music/albumwall/ItemView;

    if-eqz v7, :cond_17

    .line 454
    check-cast p4, Lcom/google/android/music/albumwall/ItemView;

    .end local p4
    invoke-virtual {p4}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 456
    .local v2, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    invoke-static {v6, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$100(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    goto :goto_6

    .line 458
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .restart local p4
    :cond_17
    instance-of v7, p4, Lcom/google/android/music/albumwall/ItemLabel;

    if-eqz v7, :cond_28

    move-object v3, p4

    .line 459
    check-cast v3, Lcom/google/android/music/albumwall/ItemLabel;

    .line 460
    .local v3, label:Lcom/google/android/music/albumwall/ItemLabel;
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/ItemLabel;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 461
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v6, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$200(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 463
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v3           #label:Lcom/google/android/music/albumwall/ItemLabel;
    :cond_28
    instance-of v7, p4, Lcom/google/android/music/albumwall/MarkView;

    if-eqz v7, :cond_5

    move-object v4, p4

    .line 464
    check-cast v4, Lcom/google/android/music/albumwall/MarkView;

    .line 465
    .local v4, mark:Lcom/google/android/music/albumwall/MarkView;
    invoke-virtual {v4}, Lcom/google/android/music/albumwall/MarkView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 466
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v6, v2, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$300(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 471
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v4           #mark:Lcom/google/android/music/albumwall/MarkView;
    :pswitch_39
    instance-of v7, p4, Lcom/google/android/music/albumwall/ItemView;

    if-eqz v7, :cond_5

    move-object v0, p4

    .line 472
    check-cast v0, Lcom/google/android/music/albumwall/ItemView;

    .line 473
    .local v0, album:Lcom/google/android/music/albumwall/ItemView;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 474
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->longPressItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    invoke-static {v6, v2, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$400(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_6

    .line 479
    .end local v0           #album:Lcom/google/android/music/albumwall/ItemView;
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :pswitch_4a
    instance-of v7, p3, Lcom/google/android/music/albumwall/ItemView;

    if-eqz v7, :cond_5

    move-object v0, p3

    .line 480
    check-cast v0, Lcom/google/android/music/albumwall/ItemView;

    .line 481
    .restart local v0       #album:Lcom/google/android/music/albumwall/ItemView;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 482
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v6, v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v7, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$1;

    invoke-direct {v7, p0, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$1;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer$3;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    invoke-virtual {v6, v7, v5}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    goto :goto_6

    .line 493
    .end local v0           #album:Lcom/google/android/music/albumwall/ItemView;
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :pswitch_62
    const/4 v7, 0x4

    if-ne p1, v7, :cond_7e

    move v1, v5

    .line 494
    .local v1, entered:Z
    :goto_66
    instance-of v7, p3, Lcom/google/android/music/albumwall/ItemView;

    if-eqz v7, :cond_5

    move-object v0, p3

    .line 495
    check-cast v0, Lcom/google/android/music/albumwall/ItemView;

    .line 496
    .restart local v0       #album:Lcom/google/android/music/albumwall/ItemView;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 497
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v6, v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v7, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$2;

    invoke-direct {v7, p0, v2, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$2;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer$3;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)V

    invoke-virtual {v6, v7, v5}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    goto :goto_6

    .end local v0           #album:Lcom/google/android/music/albumwall/ItemView;
    .end local v1           #entered:Z
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :cond_7e
    move v1, v6

    .line 493
    goto :goto_66

    .line 451
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_39
        :pswitch_4a
        :pswitch_62
        :pswitch_62
    .end packed-switch
.end method

.method public recycle(Lcom/google/android/opengl/glview/GLView;I)V
    .registers 3
    .parameter "view"
    .parameter "index"

    .prologue
    .line 445
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 446
    return-void
.end method

.method public viewAt(I)Lcom/google/android/opengl/glview/GLView;
    .registers 12
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    const/high16 v9, 0x3f80

    .line 408
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v0, v4, v1, p1}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v5

    .line 409
    .local v5, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isTopLevel:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v0

    sub-float/2addr v9, v0

    .line 410
    .local v9, labelScale:F
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandLabelExpandSize:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v2

    .line 413
    .local v2, imageWidth:F
    :goto_26
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandLabelExpandSize:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v3

    .line 416
    .local v3, imageHeight:F
    :goto_32
    if-nez v5, :cond_7c

    .line 418
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPlaceHolderItem(FF)Lcom/google/android/music/albumwall/PlaceHolderItem;

    move-result-object v8

    .line 419
    .local v8, defaultItem:Lcom/google/android/music/albumwall/PlaceHolderItem;
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpanded:Z

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V
    invoke-static {v0, v8, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$000(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 422
    .end local v8           #defaultItem:Lcom/google/android/music/albumwall/PlaceHolderItem;
    :goto_41
    return-object v8

    .line 410
    .end local v2           #imageWidth:F
    .end local v3           #imageHeight:F
    :cond_42
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

    mul-float/2addr v4, v9

    sub-float v2, v0, v4

    goto :goto_26

    .line 413
    .restart local v2       #imageWidth:F
    :cond_5f
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

    mul-float/2addr v4, v9

    sub-float v3, v0, v4

    goto :goto_32

    .line 422
    .restart local v3       #imageHeight:F
    :cond_7c
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpandedLabelVertical:Z

    if-nez v4, :cond_9f

    :goto_82
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v4, v4, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelMargin()F

    move-result v4

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v6, v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxClosedPileCount()I

    move-result v6

    if-gt p1, v6, :cond_96

    if-nez p1, :cond_a1

    :cond_96
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    :goto_98
    iget-boolean v7, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->val$isExpanded:Z

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genAlbum(ZFFFLcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/TexturedQuad$Pose;Z)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    goto :goto_41

    :cond_9f
    const/4 v1, 0x0

    goto :goto_82

    :cond_a1
    const/4 v6, 0x0

    goto :goto_98
.end method
