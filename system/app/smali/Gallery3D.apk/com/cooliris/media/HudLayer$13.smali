.class Lcom/cooliris/media/HudLayer$13;
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
    .line 412
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$13;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 414
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$13;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->getMenus()[Lcom/cooliris/media/MenuBar$Menu;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 415
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$13;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    .line 416
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$13;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_31

    .line 417
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$13;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->startSlideshow()V

    .line 428
    :cond_30
    :goto_30
    return-void

    .line 419
    :cond_31
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$13;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->inSlideShowMode()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 420
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$13;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 422
    :cond_46
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$13;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    goto :goto_30

    .line 425
    :cond_4c
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$13;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->selectedCheck()Z
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$800(Lcom/cooliris/media/HudLayer;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 426
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$13;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->startSlideshowSelected()V

    goto :goto_30
.end method
