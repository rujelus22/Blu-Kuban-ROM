.class Lcom/cooliris/media/HudLayer$56$1$1;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer$56$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cooliris/media/HudLayer$56$1;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer$56$1;)V
    .registers 2
    .parameter

    .prologue
    .line 3362
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$56$1$1;->this$2:Lcom/cooliris/media/HudLayer$56$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 3365
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$56$1$1;->this$2:Lcom/cooliris/media/HudLayer$56$1;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$56$1;->this$1:Lcom/cooliris/media/HudLayer$56;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$56;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/HudLayer$56$1$1;->this$2:Lcom/cooliris/media/HudLayer$56$1;

    iget-object v1, v1, Lcom/cooliris/media/HudLayer$56$1;->this$1:Lcom/cooliris/media/HudLayer$56;

    iget-object v1, v1, Lcom/cooliris/media/HudLayer$56;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3370
    return-void
.end method
