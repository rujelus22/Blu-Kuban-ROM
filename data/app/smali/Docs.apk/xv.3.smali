.class public Lxv;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KixEditText.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditText;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditText;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lxv;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditText;Lxt;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lxv;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditText;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lxv;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_16

    .line 101
    iget-object v0, p0, Lxv;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)Landroid/widget/Scroller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 103
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lxv;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)Landroid/widget/Scroller;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 109
    iget-object v0, p0, Lxv;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)I

    move-result v0

    iget-object v1, p0, Lxv;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b(Lcom/google/android/apps/docs/editors/kix/KixEditText;)I

    move-result v1

    sub-int v8, v0, v1

    .line 110
    iget-object v0, p0, Lxv;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lxv;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lxv;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getScrollY()I

    move-result v2

    float-to-int v4, p4

    neg-int v4, v4

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 111
    iget-object v0, p0, Lxv;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->invalidate()V

    .line 113
    :cond_36
    const/4 v0, 0x1

    return v0
.end method
