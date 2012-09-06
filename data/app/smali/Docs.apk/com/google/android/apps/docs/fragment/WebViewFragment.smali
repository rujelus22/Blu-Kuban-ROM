.class public Lcom/google/android/apps/docs/fragment/WebViewFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "WebViewFragment.java"


# instance fields
.field protected a:Landroid/os/Handler;

.field protected a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Landroid/os/Handler;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Landroid/webkit/WebView;

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public a()Landroid/webkit/WebView;
    .registers 3

    .prologue
    .line 34
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a()V
    .registers 7

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1f

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Landroid/webkit/WebView;

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Landroid/webkit/WebView;

    .line 78
    new-instance v1, LHV;

    invoke-direct {v1, p0, v0}, LHV;-><init>(Lcom/google/android/apps/docs/fragment/WebViewFragment;Landroid/webkit/WebView;)V

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 87
    :cond_1f
    return-void
.end method

.method public b()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public f()V
    .registers 3

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 60
    :cond_b
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f()V

    .line 61
    return-void
.end method

.method public f_()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a()V

    .line 69
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f_()V

    .line 70
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->g()V

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/WebViewFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 52
    :cond_e
    return-void
.end method
