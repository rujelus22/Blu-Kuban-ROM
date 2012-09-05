.class Lcom/cooliris/media/HudLayer$5;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/HudLayer;
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
    .line 225
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$5;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$5;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/Gallery;

    iget-boolean v0, v0, Lcom/cooliris/media/Gallery;->mIsAutoRotationOn:Z

    if-eqz v0, :cond_24

    .line 229
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$5;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/Gallery;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Gallery;->setRequestedOrientation(I)V

    .line 230
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$5;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/Gallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Gallery;->setOrientationEvent(Z)V

    .line 232
    :cond_24
    return-void
.end method
