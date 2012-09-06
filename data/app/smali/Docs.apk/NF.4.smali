.class public LNF;
.super LMA;
.source "PunchWebViewFragment.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

.field final synthetic a:Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, LNF;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    iput-object p2, p0, LNF;->a:Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;

    invoke-direct {p0}, LMA;-><init>()V

    return-void
.end method


# virtual methods
.method protected d()V
    .registers 3

    .prologue
    .line 526
    iget-object v0, p0, LNF;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    iget-object v1, p0, LNF;->a:Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;)V

    .line 527
    return-void
.end method
