.class LMR;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements Lany;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lany",
        "<",
        "Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LME;


# direct methods
.method constructor <init>(LME;)V
    .registers 2
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, LMR;->a:LME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 626
    invoke-static {p1}, LNb;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V

    .line 628
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 623
    check-cast p1, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {p0, p1}, LMR;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V

    return-void
.end method
