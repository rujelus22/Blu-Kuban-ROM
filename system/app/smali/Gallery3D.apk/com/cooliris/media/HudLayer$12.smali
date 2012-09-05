.class Lcom/cooliris/media/HudLayer$12;
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
    .line 396
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$12;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$12;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 400
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$12;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->isFullImageLoading()Z
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$200(Lcom/cooliris/media/HudLayer;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 401
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$12;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->enterSelectionMode(Z)V

    .line 402
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$12;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->buildMoreOptions()V
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$700(Lcom/cooliris/media/HudLayer;)V

    .line 407
    :cond_24
    :goto_24
    return-void

    .line 405
    :cond_25
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$12;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->buildMoreOptions()V
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$700(Lcom/cooliris/media/HudLayer;)V

    goto :goto_24
.end method
