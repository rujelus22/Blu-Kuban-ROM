.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$2;
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
    .line 339
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 343
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Z)Z

    .line 349
    :cond_e
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 352
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 360
    return-void
.end method
