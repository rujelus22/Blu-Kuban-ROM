.class LMS;
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
        "Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;",
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
    .line 631
    iput-object p1, p0, LMS;->a:LME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 634
    invoke-static {p1}, LMZ;->a(Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;)V

    .line 636
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 631
    check-cast p1, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;

    invoke-virtual {p0, p1}, LMS;->a(Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;)V

    return-void
.end method
