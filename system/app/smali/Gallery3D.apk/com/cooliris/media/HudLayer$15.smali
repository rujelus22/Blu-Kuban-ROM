.class Lcom/cooliris/media/HudLayer$15;
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
    .line 442
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$15;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$15;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    .line 445
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$15;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->isFullImageLoading()Z
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$200(Lcom/cooliris/media/HudLayer;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 446
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$15;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 453
    :goto_23
    return-void

    .line 449
    :cond_24
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$15;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->enterSelectionMode(Z)V

    .line 452
    :cond_2e
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$15;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->updateSetAsMenu()V
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$900(Lcom/cooliris/media/HudLayer;)V

    goto :goto_23
.end method
