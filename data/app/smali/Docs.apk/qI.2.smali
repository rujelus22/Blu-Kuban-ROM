.class LqI;
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
    .line 1830
    iput-object p1, p0, LqI;->a:Lqi;

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
    .line 1843
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1830
    invoke-virtual {p0}, LqI;->a()LpO;

    move-result-object v0

    return-object v0
.end method

.method public a()LpO;
    .registers 2

    .prologue
    .line 1833
    invoke-static {}, LqM;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpO;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1853
    invoke-static {}, LqM;->a()V

    .line 1854
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
    .line 1848
    invoke-static {p1}, LqM;->a(LanD;)V

    .line 1849
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1838
    invoke-static {p1}, LqM;->a(LanG;)V

    .line 1839
    return-void
.end method
