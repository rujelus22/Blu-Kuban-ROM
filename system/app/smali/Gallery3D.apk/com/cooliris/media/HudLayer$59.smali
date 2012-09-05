.class Lcom/cooliris/media/HudLayer$59;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->addOnlineAlbumsForUSCC(ILjava/util/ArrayList;Ljava/util/ArrayList;[Lcom/cooliris/media/PopupMenu$Option;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/HudLayer;

.field final synthetic val$onlinealbumintent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3502
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$59;->this$0:Lcom/cooliris/media/HudLayer;

    iput-object p2, p0, Lcom/cooliris/media/HudLayer$59;->val$onlinealbumintent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3505
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$59;->val$onlinealbumintent:Landroid/content/Intent;

    const-string v1, "onlinealbum"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3506
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$59;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/HudLayer$59;->val$onlinealbumintent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3508
    return-void
.end method
