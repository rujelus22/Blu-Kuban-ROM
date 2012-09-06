.class LHn;
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
        "Lcom/google/android/apps/docs/fragment/ErrorFragment;",
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
    .line 452
    iput-object p1, p0, LHn;->a:LHc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/fragment/ErrorFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    invoke-static {p1}, LHu;->a(Lcom/google/android/apps/docs/fragment/ErrorFragment;)V

    .line 457
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 452
    check-cast p1, Lcom/google/android/apps/docs/fragment/ErrorFragment;

    invoke-virtual {p0, p1}, LHn;->a(Lcom/google/android/apps/docs/fragment/ErrorFragment;)V

    return-void
.end method
