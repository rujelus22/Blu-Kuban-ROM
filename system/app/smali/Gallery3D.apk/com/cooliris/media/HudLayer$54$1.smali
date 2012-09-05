.class Lcom/cooliris/media/HudLayer$54$1;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer$54;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/HudLayer$54;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer$54;)V
    .registers 2
    .parameter

    .prologue
    .line 3123
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3125
    if-nez p2, :cond_86

    .line 3126
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3128
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v2, v2, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cooliris/media/HudLayer$54$1$2;

    invoke-direct {v3, p0}, Lcom/cooliris/media/HudLayer$54$1$2;-><init>(Lcom/cooliris/media/HudLayer$54$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v2, v2, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cooliris/media/HudLayer$54$1$1;

    invoke-direct {v3, p0}, Lcom/cooliris/media/HudLayer$54$1$1;-><init>(Lcom/cooliris/media/HudLayer$54$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3167
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 3168
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/cooliris/media/HudLayer$54$1$3;

    invoke-direct {v2, p0, v1}, Lcom/cooliris/media/HudLayer$54$1$3;-><init>(Lcom/cooliris/media/HudLayer$54$1;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3181
    :goto_85
    return-void

    .line 3174
    :cond_86
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v1, v1, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->resetSetDefaultDestSharedPrefs(Landroid/content/Context;)V

    .line 3175
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v1, v1, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cooliris/media/SetDefaultDestinationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3177
    const-string v1, "title"

    iget-object v2, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v2, v2, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3179
    iget-object v1, p0, Lcom/cooliris/media/HudLayer$54$1;->this$1:Lcom/cooliris/media/HudLayer$54;

    iget-object v1, v1, Lcom/cooliris/media/HudLayer$54;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_85
.end method
