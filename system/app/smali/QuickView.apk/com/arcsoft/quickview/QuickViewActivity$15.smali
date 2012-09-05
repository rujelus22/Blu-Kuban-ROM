.class Lcom/arcsoft/quickview/QuickViewActivity$15;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->showDelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$15;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 1339
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$15;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z
    invoke-static {v0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$002(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z

    .line 1341
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$15;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsConfirmed:Z
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1800(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1342
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$15;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1300(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/DeleteAnimation;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1344
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$15;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1300(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/DeleteAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$15;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->cancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1900(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/widget/DeleteAnimation;->setCancelAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1345
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$15;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1300(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/DeleteAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/widget/DeleteAnimation;->cancelDeleteAnimation()V

    .line 1350
    :cond_2e
    :goto_2e
    return-void

    .line 1349
    :cond_2f
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$15;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsConfirmed:Z
    invoke-static {v0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1802(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z

    goto :goto_2e
.end method
