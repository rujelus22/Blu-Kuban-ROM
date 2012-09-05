.class Lcom/cooliris/media/GridLayer$1;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridLayer;-><init>(Landroid/content/Context;IILcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/RenderView;)V
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
    .line 300
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$1;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f80

    .line 303
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$1;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_34

    .line 304
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$1;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$100(Lcom/cooliris/media/GridLayer;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 305
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$1;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    if-eqz v0, :cond_2d

    .line 306
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$1;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->close()V

    .line 307
    :cond_2d
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$1;->this$0:Lcom/cooliris/media/GridLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 312
    :cond_33
    :goto_33
    return-void

    .line 310
    :cond_34
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$1;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    goto :goto_33
.end method
