.class LfD;
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
        "Lcf;",
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
    .line 1893
    iput-object p1, p0, LfD;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LdG;
    .registers 2

    .prologue
    .line 1896
    invoke-static {}, Lgv;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdG;

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
    .line 1906
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1893
    invoke-virtual {p0}, LfD;->a()LdG;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1916
    invoke-static {}, Lgv;->a()V

    .line 1917
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
            "Lcf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1911
    invoke-static {p1}, Lgv;->a(LanD;)V

    .line 1912
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1901
    invoke-static {p1}, Lgv;->a(LanG;)V

    .line 1902
    return-void
.end method
