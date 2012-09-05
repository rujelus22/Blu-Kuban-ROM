.class Lcom/cooliris/media/HudLayer$33;
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
    .line 939
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$33;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 941
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$33;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->selectedCheck()Z
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$800(Lcom/cooliris/media/HudLayer;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 942
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$33;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->rotateSelectedItems(F)V

    .line 943
    :cond_13
    return-void
.end method
