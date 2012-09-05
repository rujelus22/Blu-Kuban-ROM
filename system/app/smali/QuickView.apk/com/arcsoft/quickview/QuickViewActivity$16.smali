.class Lcom/arcsoft/quickview/QuickViewActivity$16;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/QuickViewActivity;
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
    .line 1362
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$16;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 1379
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$16;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1100(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1380
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$16;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1200(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$16;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1100(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1381
    :cond_18
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$16;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mAnimationLayout:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1102(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/view/View;)Landroid/view/View;

    .line 1382
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$16;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDelAnim:Lcom/arcsoft/widget/DeleteAnimation;
    invoke-static {v0, v2}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1302(Lcom/arcsoft/quickview/QuickViewActivity;Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation;

    .line 1383
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$16;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsUnderDeleteAnimation:Z
    invoke-static {v0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1402(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z

    .line 1384
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 1374
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 1368
    return-void
.end method
