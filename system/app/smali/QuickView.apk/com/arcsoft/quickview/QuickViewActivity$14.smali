.class Lcom/arcsoft/quickview/QuickViewActivity$14;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 1315
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$14;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1320
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 1323
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$14;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1300(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/DeleteAnimation;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1325
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$14;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1300(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/DeleteAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$14;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->cancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1900(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/widget/DeleteAnimation;->setCancelAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1326
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$14;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1300(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/DeleteAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/widget/DeleteAnimation;->cancelDeleteAnimation()V

    .line 1330
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method
