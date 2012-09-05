.class Lcom/cooliris/media/HudLayer$11;
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
    .line 370
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 372
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    .line 373
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v1, v1, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v1}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v1

    aget-object v1, v1, v4

    iput-object v5, v1, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 374
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->isFullImageLoading()Z
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$200(Lcom/cooliris/media/HudLayer;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 375
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/cooliris/media/HudLayer;->buildDeleteOptions(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/cooliris/media/HudLayer;->access$600(Lcom/cooliris/media/HudLayer;Landroid/content/Context;)V

    .line 391
    :cond_2e
    :goto_2e
    return-void

    .line 379
    :cond_2f
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 380
    .local v0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_6b

    .line 381
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 384
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v1, v1, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v1}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v1

    aget-object v1, v1, v4

    iput-object v5, v1, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    goto :goto_2e

    .line 387
    :cond_6b
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$11;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/cooliris/media/HudLayer;->buildDeleteOptions(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/cooliris/media/HudLayer;->access$600(Lcom/cooliris/media/HudLayer;Landroid/content/Context;)V

    goto :goto_2e
.end method
