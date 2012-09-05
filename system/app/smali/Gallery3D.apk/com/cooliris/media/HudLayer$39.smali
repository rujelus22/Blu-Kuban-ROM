.class Lcom/cooliris/media/HudLayer$39;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->updateShareMenu(ZLcom/cooliris/media/HudLayer$ShareType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/HudLayer;

.field final synthetic val$info:Landroid/content/pm/ResolveInfo;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1881
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$39;->this$0:Lcom/cooliris/media/HudLayer;

    iput-object p2, p0, Lcom/cooliris/media/HudLayer$39;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/cooliris/media/HudLayer$39;->val$info:Landroid/content/pm/ResolveInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$39;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/cooliris/media/HudLayer$39;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_21

    .line 1886
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$39;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer$39;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$39;->val$info:Landroid/content/pm/ResolveInfo;

    #calls: Lcom/cooliris/media/HudLayer;->startResolvedActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    invoke-static {v0, v1, v2}, Lcom/cooliris/media/HudLayer;->access$1700(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 1887
    :cond_21
    return-void
.end method
