.class LHm;
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
        "Lcom/google/android/apps/docs/fragment/NavigationFragment;",
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
    .line 444
    iput-object p1, p0, LHm;->a:LHc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/fragment/NavigationFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 447
    invoke-static {p1}, LHv;->a(Lcom/google/android/apps/docs/fragment/NavigationFragment;)V

    .line 449
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 444
    check-cast p1, Lcom/google/android/apps/docs/fragment/NavigationFragment;

    invoke-virtual {p0, p1}, LHm;->a(Lcom/google/android/apps/docs/fragment/NavigationFragment;)V

    return-void
.end method
