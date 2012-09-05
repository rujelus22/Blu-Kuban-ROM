.class Lcom/cooliris/media/HudLayer$55;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->SetDefaultDest([Lcom/cooliris/media/PopupMenu$Option;ZZILjava/util/ArrayList;Lcom/cooliris/media/MediaItem;)[Lcom/cooliris/media/PopupMenu$Option;
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
    .line 3264
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$55;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3266
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$55;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v1

    .line 3270
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 3271
    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$1900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildMoreOptions. There is no item in buckets for Quicksend."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    :cond_1a
    :goto_1a
    return-void

    .line 3278
    :cond_1b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 3281
    iget-object v2, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6c

    .line 3282
    :cond_2d
    iget-object v0, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    .line 3287
    :goto_39
    if-eqz v0, :cond_1a

    .line 3291
    sget v1, Lcom/cooliris/media/HudLayer;->defaultDestCount:I

    if-nez v1, :cond_71

    .line 3297
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer$55;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cooliris/media/SetDefaultDestinationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3299
    const-string v1, "title"

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$55;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3301
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$55;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1a

    .line 3284
    :cond_6c
    invoke-static {v1}, Lcom/cooliris/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;

    move-result-object v0

    goto :goto_39

    .line 3308
    :cond_71
    sget-object v1, Lcom/cooliris/media/HudLayer;->defaultDestCountResult:Ljava/lang/String;

    iget-object v2, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/cooliris/media/HudLayer$55;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/cooliris/media/HudLayer;->sendMmsIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)I

    goto :goto_1a
.end method
