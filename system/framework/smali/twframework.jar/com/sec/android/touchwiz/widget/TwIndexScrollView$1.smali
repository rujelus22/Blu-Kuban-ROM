.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;
.super Ljava/lang/Object;
.source "TwIndexScrollView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .registers 2
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 320
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Z)Z

    .line 322
    :cond_e
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 323
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    .line 325
    :cond_1b
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 328
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 332
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 333
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 335
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeIn:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 337
    :cond_2e
    return-void
.end method
