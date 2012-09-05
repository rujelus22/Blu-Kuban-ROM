.class Lcom/cooliris/media/Gallery$8;
.super Landroid/content/BroadcastReceiver;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/cooliris/media/Gallery$8;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1599
    iget-object v1, p0, Lcom/cooliris/media/Gallery$8;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v1}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1608
    :cond_8
    :goto_8
    return-void

    .line 1602
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1603
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TWIST_LEFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1604
    iget-object v1, p0, Lcom/cooliris/media/Gallery$8;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v1}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cooliris/media/GridInputProcessor;->twist(Z)Z

    goto :goto_8

    .line 1605
    :cond_24
    const-string v1, "android.intent.action.TWIST_RIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1606
    iget-object v1, p0, Lcom/cooliris/media/Gallery$8;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v1}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cooliris/media/GridInputProcessor;->twist(Z)Z

    goto :goto_8
.end method
