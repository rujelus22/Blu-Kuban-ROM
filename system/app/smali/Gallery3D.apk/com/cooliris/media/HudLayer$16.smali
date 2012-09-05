.class Lcom/cooliris/media/HudLayer$16;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/HudLayer;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const v6, 0x7f060050

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 461
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    invoke-virtual {v2}, Lcom/cooliris/media/Gallery;->getChkFromWidget()Z

    move-result v2

    if-nez v2, :cond_19

    .line 462
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->setResultForMultiPickNormal()V
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$1000(Lcom/cooliris/media/HudLayer;)V

    .line 491
    :goto_18
    return-void

    .line 464
    :cond_19
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v1

    .line 465
    .local v1, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_45

    .line 466
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v2

    iget-object v3, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_18

    .line 470
    :cond_45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_81

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    if-ne v2, v4, :cond_81

    .line 472
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 473
    .local v0, bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v2, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 474
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v2

    iget-object v3, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_18

    .line 482
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    :cond_81
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    if-ne v2, v4, :cond_b9

    .line 483
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    iget-object v3, v2, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 485
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/cooliris/media/GridLayer;->setResultForMultiPick(ZZ)V

    .line 489
    :goto_ac
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    invoke-virtual {v2, v4}, Lcom/cooliris/media/Gallery;->setPictureFrameMode(Z)V

    goto/16 :goto_18

    .line 487
    :cond_b9
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$16;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/cooliris/media/GridLayer;->setResultForMultiPick(ZZ)V

    goto :goto_ac
.end method
