.class Lcom/cooliris/media/HudLayer$49;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->getSetAsInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/HudLayer;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$mList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer;Ljava/util/List;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2535
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$49;->this$0:Lcom/cooliris/media/HudLayer;

    iput-object p2, p0, Lcom/cooliris/media/HudLayer$49;->val$mList:Ljava/util/List;

    iput-object p3, p0, Lcom/cooliris/media/HudLayer$49;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2537
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$49;->this$0:Lcom/cooliris/media/HudLayer;

    #setter for: Lcom/cooliris/media/HudLayer;->iWhich:I
    invoke-static {v1, p2}, Lcom/cooliris/media/HudLayer;->access$1802(Lcom/cooliris/media/HudLayer;I)I

    .line 2538
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$49;->val$mList:Ljava/util/List;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$49;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->iWhich:I
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$1800(Lcom/cooliris/media/HudLayer;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2539
    .local v0, info:Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$49;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2541
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$49;->val$intent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2542
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$49;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Gallery;

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$49;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/Gallery;->startActivity(Landroid/content/Intent;)V

    .line 2544
    return-void
.end method
