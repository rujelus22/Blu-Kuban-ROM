.class LHl;
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
        "Lcom/google/android/apps/docs/fragment/DocListFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LHc;


# direct methods
.method constructor <init>(LHc;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, LHl;->a:LHc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/fragment/DocListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 439
    invoke-static {p1}, LHr;->a(Lcom/google/android/apps/docs/fragment/DocListFragment;)V

    .line 441
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    check-cast p1, Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {p0, p1}, LHl;->a(Lcom/google/android/apps/docs/fragment/DocListFragment;)V

    return-void
.end method
