.class Lcom/cooliris/media/HudLayer$10;
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
    .line 353
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$10;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, bChecked:Z
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$10;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v1

    .line 357
    .local v1, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$10;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->checkDrmForwarding(Ljava/util/ArrayList;)Z
    invoke-static {v2, v1}, Lcom/cooliris/media/HudLayer;->access$300(Lcom/cooliris/media/HudLayer;Ljava/util/ArrayList;)Z

    move-result v0

    .line 358
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$10;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->isFullImageLoading()Z
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$200(Lcom/cooliris/media/HudLayer;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 359
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$10;->this$0:Lcom/cooliris/media/HudLayer;

    sget-object v3, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_DEFAULT:Lcom/cooliris/media/HudLayer$ShareType;

    #calls: Lcom/cooliris/media/HudLayer;->updateShareMenu(ZLcom/cooliris/media/HudLayer$ShareType;)V
    invoke-static {v2, v0, v3}, Lcom/cooliris/media/HudLayer;->access$400(Lcom/cooliris/media/HudLayer;ZLcom/cooliris/media/HudLayer$ShareType;)V

    .line 361
    :cond_20
    return-void
.end method
