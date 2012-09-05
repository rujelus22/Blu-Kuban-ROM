.class Lcom/cooliris/media/HudLayer$14;
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
    .line 432
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$14;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f80

    .line 434
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$14;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 435
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$14;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->enterSelectionMode(Z)V

    .line 438
    :goto_16
    return-void

    .line 437
    :cond_17
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$14;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    goto :goto_16
.end method
