.class public LNH;
.super Ljava/lang/Object;
.source "PunchWebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:LFM;

.field final synthetic a:LNL;

.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;LFM;LNL;Landroid/view/GestureDetector;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, LNH;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    iput-object p2, p0, LNH;->a:LFM;

    iput-object p3, p0, LNH;->a:LNL;

    iput-object p4, p0, LNH;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 740
    iget-object v0, p0, LNH;->a:LFM;

    invoke-virtual {v0, p2}, LFM;->a(Landroid/view/MotionEvent;)Z

    .line 742
    iget-object v0, p0, LNH;->a:LFM;

    invoke-virtual {v0}, LFM;->a()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, LNH;->a:LNL;

    iget-boolean v0, v0, LNL;->a:Z

    if-nez v0, :cond_19

    .line 743
    iget-object v0, p0, LNH;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 746
    :cond_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_2c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_2c

    .line 748
    iget-object v0, p0, LNH;->a:LNL;

    invoke-virtual {v0}, LNL;->a()V

    .line 751
    :cond_2c
    return v1
.end method
