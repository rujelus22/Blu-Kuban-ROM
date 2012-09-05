.class Lcom/cooliris/media/HudLayer$30;
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
    .line 902
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$30;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 904
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$30;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 905
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$30;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_23

    .line 906
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$30;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->startSlideshow()V

    .line 917
    :cond_22
    :goto_22
    return-void

    .line 908
    :cond_23
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$30;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->inSlideShowMode()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 909
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$30;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 911
    :cond_38
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$30;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    goto :goto_22

    .line 914
    :cond_3e
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$30;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->selectedCheck()Z
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$800(Lcom/cooliris/media/HudLayer;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 915
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$30;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->startSlideshowSelected()V

    goto :goto_22
.end method
