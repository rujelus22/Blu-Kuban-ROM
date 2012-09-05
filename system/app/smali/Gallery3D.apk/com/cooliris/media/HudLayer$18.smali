.class Lcom/cooliris/media/HudLayer$18;
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
    .line 562
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$18;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$18;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->close()V

    .line 565
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$18;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->selectAll()V

    .line 566
    return-void
.end method
