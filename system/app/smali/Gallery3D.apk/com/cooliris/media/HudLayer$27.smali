.class Lcom/cooliris/media/HudLayer$27;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->buildMoreOptions()V
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
    .line 875
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$27;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 877
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$27;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 878
    .local v0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    invoke-static {v0}, Lcom/cooliris/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;

    move-result-object v1

    .line 879
    .local v1, item:Lcom/cooliris/media/MediaItem;
    if-nez v1, :cond_11

    .line 884
    :goto_10
    return-void

    .line 882
    :cond_11
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$27;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 883
    iget-object v2, p0, Lcom/cooliris/media/HudLayer$27;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v1, Lcom/cooliris/media/MediaItem;->mLatitude:D

    iget-wide v5, v1, Lcom/cooliris/media/MediaItem;->mLongitude:D

    invoke-static {v2, v3, v4, v5, v6}, Lcom/cooliris/media/Util;->openMaps(Landroid/content/Context;DD)V

    goto :goto_10
.end method
