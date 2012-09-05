.class Lcom/cooliris/media/GridLayer$3;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridLayer;->setState(I)V
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
    .line 518
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$3;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f80

    .line 521
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$3;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 522
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$3;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->swapFullscreenLabel()V

    .line 524
    :cond_19
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$3;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 525
    return-void
.end method
