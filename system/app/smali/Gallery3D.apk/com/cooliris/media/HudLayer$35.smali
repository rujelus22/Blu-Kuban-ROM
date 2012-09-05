.class Lcom/cooliris/media/HudLayer$35;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->buildDeleteOptions(Landroid/content/Context;)V
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
    .line 1152
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$35;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1154
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$35;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 1155
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$35;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cooliris/media/GridLayer;->enterSelectionMode(Z)V

    .line 1157
    :cond_17
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$35;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->selectedCheck()Z
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$800(Lcom/cooliris/media/HudLayer;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1158
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$35;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->deleteSelection()V

    .line 1160
    :cond_24
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$35;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    iput-boolean v2, v0, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    .line 1161
    return-void
.end method
