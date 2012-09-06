.class public LNa;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    invoke-static {p0}, LfY;->a(Lcom/google/android/apps/docs/app/BaseActivity;)V

    .line 503
    invoke-static {}, LNe;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LME;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNp;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LNp;

    .line 509
    return-void
.end method
