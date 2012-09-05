.class Lcom/cooliris/media/HudLayer$23$1;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/HudLayer$23;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer$23;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$23$1;->this$1:Lcom/cooliris/media/HudLayer$23;

    iput-object p2, p0, Lcom/cooliris/media/HudLayer$23$1;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 833
    const-wide/16 v1, 0x1f4

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 834
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$23$1;->this$1:Lcom/cooliris/media/HudLayer$23;

    iget-object v1, v1, Lcom/cooliris/media/HudLayer$23;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$23$1;->val$intent:Landroid/content/Intent;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 836
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$23$1;->this$1:Lcom/cooliris/media/HudLayer$23;

    iget-object v1, v1, Lcom/cooliris/media/HudLayer$23;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Gallery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cooliris/media/Gallery;->overridePendingTransition(II)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_25} :catch_26

    .line 840
    :goto_25
    return-void

    .line 837
    :catch_26
    move-exception v0

    .line 838
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_25
.end method
