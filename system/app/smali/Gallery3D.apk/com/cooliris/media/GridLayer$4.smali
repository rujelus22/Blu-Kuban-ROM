.class Lcom/cooliris/media/GridLayer$4;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridLayer;->enableLocationFiltering(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridLayer;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$4;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f80

    .line 600
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$4;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2f

    .line 601
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$4;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mState:I
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$300(Lcom/cooliris/media/GridLayer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 602
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$4;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$200(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/GridInputProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->clearSelection()V

    .line 603
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$4;->this$0:Lcom/cooliris/media/GridLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 610
    :goto_28
    return-void

    .line 605
    :cond_29
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$4;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->disableLocationFiltering()V

    goto :goto_28

    .line 608
    :cond_2f
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$4;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    goto :goto_28
.end method
