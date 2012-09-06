.class LqE;
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
        "LpO;",
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
    .line 1722
    iput-object p1, p0, LqE;->a:Lqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 1735
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1722
    invoke-virtual {p0}, LqE;->a()LpO;

    move-result-object v0

    return-object v0
.end method

.method public a()LpO;
    .registers 2

    .prologue
    .line 1725
    invoke-static {}, LqN;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpO;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1745
    invoke-static {}, LqN;->a()V

    .line 1746
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
            "LpO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1740
    invoke-static {p1}, LqN;->a(LanD;)V

    .line 1741
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1730
    invoke-static {p1}, LqN;->a(LanG;)V

    .line 1731
    return-void
.end method
