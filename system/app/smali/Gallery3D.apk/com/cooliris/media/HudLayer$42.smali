.class Lcom/cooliris/media/HudLayer$42;
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
    .line 1923
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$42;->this$0:Lcom/cooliris/media/HudLayer;

    iput-object p2, p0, Lcom/cooliris/media/HudLayer$42;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/cooliris/media/HudLayer$42;->val$info:Landroid/content/pm/ResolveInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$42;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/cooliris/media/HudLayer$42;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 1929
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$42;->val$intent:Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1930
    :cond_1f
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$42;->val$intent:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1931
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$42;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer$42;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$42;->val$info:Landroid/content/pm/ResolveInfo;

    #calls: Lcom/cooliris/media/HudLayer;->startResolvedActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    invoke-static {v0, v1, v2}, Lcom/cooliris/media/HudLayer;->access$1700(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 1932
    return-void
.end method
