.class LMQ;
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
        "Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;",
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
    .line 615
    iput-object p1, p0, LMQ;->a:LME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 618
    invoke-static {p1}, LNa;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;)V

    .line 620
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 615
    check-cast p1, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;

    invoke-virtual {p0, p1}, LMQ;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;)V

    return-void
.end method
