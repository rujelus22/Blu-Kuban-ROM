.class public LNG;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PunchWebViewFragment.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, LNG;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, LNG;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->n(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LNG;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 703
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFling()"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    neg-float v0, p4

    cmpg-float v0, p3, v0

    if-gez v0, :cond_28

    cmpg-float v0, p3, p4

    if-gez v0, :cond_28

    .line 709
    iget-object v0, p0, LNG;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->q()V

    .line 718
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0

    .line 711
    :cond_28
    neg-float v0, p4

    cmpl-float v0, p3, v0

    if-lez v0, :cond_26

    cmpl-float v0, p3, p4

    if-lez v0, :cond_26

    .line 712
    iget-object v0, p0, LNG;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->r()V

    goto :goto_26
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 723
    iget-object v0, p0, LNG;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->o(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LNG;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 725
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSingleTapUp()"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, LNG;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->q()V

    .line 728
    const/4 v0, 0x1

    return v0
.end method
