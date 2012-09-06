.class LwW;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWZ",
        "<",
        "Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LwU;


# direct methods
.method constructor <init>(LwU;)V
    .registers 2
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, LwW;->a:LwU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;
    .registers 2

    .prologue
    .line 690
    invoke-static {}, Lxn;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 687
    invoke-virtual {p0}, LwW;->a()Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 710
    invoke-static {}, Lxn;->a()V

    .line 711
    return-void
.end method

.method public a(LanD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {p1}, Lxn;->a(LanD;)V

    .line 706
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 695
    invoke-static {p1}, Lxn;->a(LanG;)V

    .line 696
    return-void
.end method
