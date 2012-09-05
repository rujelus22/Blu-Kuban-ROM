.class Lcom/cooliris/media/GridLayer$7;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridLayer;->setViewIntent(ZLjava/lang/String;)V
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
    .line 2292
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$7;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f80

    .line 2295
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$7;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$100(Lcom/cooliris/media/GridLayer;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2308
    :goto_a
    return-void

    .line 2298
    :cond_b
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$7;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4b

    .line 2299
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$7;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->disableLocationFiltering()V

    .line 2300
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$7;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$200(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/GridInputProcessor;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 2301
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$7;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$200(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/GridInputProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->clearSelection()V

    .line 2302
    :cond_2f
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$7;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    if-eqz v0, :cond_44

    .line 2303
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$7;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->close()V

    .line 2304
    :cond_44
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$7;->this$0:Lcom/cooliris/media/GridLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->setState(I)V

    goto :goto_a

    .line 2306
    :cond_4b
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$7;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    goto :goto_a
.end method
