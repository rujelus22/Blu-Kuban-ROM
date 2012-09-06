.class LqJ;
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
        "LpY;",
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
    .line 1857
    iput-object p1, p0, LqJ;->a:Lqi;

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
    .line 1870
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1857
    invoke-virtual {p0}, LqJ;->a()LpY;

    move-result-object v0

    return-object v0
.end method

.method public a()LpY;
    .registers 2

    .prologue
    .line 1860
    invoke-static {}, LqS;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpY;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1880
    invoke-static {}, LqS;->a()V

    .line 1881
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
            "LpY;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1875
    invoke-static {p1}, LqS;->a(LanD;)V

    .line 1876
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1865
    invoke-static {p1}, LqS;->a(LanG;)V

    .line 1866
    return-void
.end method
