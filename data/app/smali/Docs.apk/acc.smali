.class public Lacc;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/common/SwipeySwitcher;

.field public a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 2
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 751
    iget-object v0, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 752
    iget-object v0, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0, v3}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;Z)Z

    .line 753
    iget-object v0, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    iget-object v1, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 754
    iget-object v0, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->postInvalidate()V

    .line 755
    iget-object v0, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 770
    :cond_30
    :goto_30
    return-void

    .line 757
    :cond_31
    iget-object v0, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    iget-object v1, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 758
    iget-object v0, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    iget-object v1, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->setSelection(I)V

    .line 765
    iget-object v0, p0, Lacc;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0, v3}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;Z)Z

    .line 766
    iget-object v0, p0, Lacc;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_30

    .line 767
    iget-object v0, p0, Lacc;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_30
.end method
