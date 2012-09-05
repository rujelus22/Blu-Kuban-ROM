.class Lcom/cooliris/media/HudLayer$20;
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
    .line 781
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$20;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$20;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cooliris/media/HudLayer$20$1;

    invoke-direct {v1, p0}, Lcom/cooliris/media/HudLayer$20$1;-><init>(Lcom/cooliris/media/HudLayer$20;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    return-void
.end method
