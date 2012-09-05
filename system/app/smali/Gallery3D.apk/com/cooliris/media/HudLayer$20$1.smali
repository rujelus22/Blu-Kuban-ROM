.class Lcom/cooliris/media/HudLayer$20$1;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/HudLayer$20;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer$20;)V
    .registers 2
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$20$1;->this$1:Lcom/cooliris/media/HudLayer$20;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 785
    iget-object v3, p0, Lcom/cooliris/media/HudLayer$20$1;->this$1:Lcom/cooliris/media/HudLayer$20;

    iget-object v3, v3, Lcom/cooliris/media/HudLayer$20;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v3}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 786
    .local v0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    invoke-static {v0}, Lcom/cooliris/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;

    move-result-object v2

    .line 787
    .local v2, item:Lcom/cooliris/media/MediaItem;
    if-nez v2, :cond_13

    .line 796
    :goto_12
    return-void

    .line 790
    :cond_13
    iget-object v3, p0, Lcom/cooliris/media/HudLayer$20$1;->this$1:Lcom/cooliris/media/HudLayer$20;

    iget-object v3, v3, Lcom/cooliris/media/HudLayer$20;->this$0:Lcom/cooliris/media/HudLayer;

    const/4 v4, 0x1

    #setter for: Lcom/cooliris/media/HudLayer;->mSetAs:Z
    invoke-static {v3, v4}, Lcom/cooliris/media/HudLayer;->access$1102(Lcom/cooliris/media/HudLayer;Z)Z

    .line 791
    iget-object v3, p0, Lcom/cooliris/media/HudLayer$20$1;->this$1:Lcom/cooliris/media/HudLayer$20;

    iget-object v3, v3, Lcom/cooliris/media/HudLayer$20;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v3}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 793
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v1, copyIntent:Landroid/content/Intent;
    const-string v3, "copyPath"

    iget-object v4, v2, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    iget-object v3, p0, Lcom/cooliris/media/HudLayer$20$1;->this$1:Lcom/cooliris/media/HudLayer$20;

    iget-object v3, v3, Lcom/cooliris/media/HudLayer$20;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_12
.end method
