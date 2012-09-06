.class LfC;
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
        "LeZ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfe;


# direct methods
.method constructor <init>(Lfe;)V
    .registers 2
    .parameter

    .prologue
    .line 1866
    iput-object p1, p0, LfC;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LeZ;
    .registers 2

    .prologue
    .line 1869
    invoke-static {}, LgE;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeZ;

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
    .line 1879
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1866
    invoke-virtual {p0}, LfC;->a()LeZ;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1889
    invoke-static {}, LgE;->a()V

    .line 1890
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
            "LeZ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1884
    invoke-static {p1}, LgE;->a(LanD;)V

    .line 1885
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1874
    invoke-static {p1}, LgE;->a(LanG;)V

    .line 1875
    return-void
.end method
