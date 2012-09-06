.class LqK;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lqi;


# direct methods
.method constructor <init>(Lqi;)V
    .registers 2
    .parameter

    .prologue
    .line 1884
    iput-object p1, p0, LqK;->a:Lqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;
    .registers 2

    .prologue
    .line 1887
    invoke-static {}, LqV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;

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
    .line 1897
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1884
    invoke-virtual {p0}, LqK;->a()Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1907
    invoke-static {}, LqV;->a()V

    .line 1908
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
            "Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1902
    invoke-static {p1}, LqV;->a(LanD;)V

    .line 1903
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1892
    invoke-static {p1}, LqV;->a(LanG;)V

    .line 1893
    return-void
.end method
