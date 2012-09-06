.class LXW;
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
        "LXJ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LXU;


# direct methods
.method constructor <init>(LXU;)V
    .registers 2
    .parameter

    .prologue
    .line 1849
    iput-object p1, p0, LXW;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LXJ;
    .registers 2

    .prologue
    .line 1852
    invoke-static {}, LZa;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXJ;

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
    .line 1862
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1849
    invoke-virtual {p0}, LXW;->a()LXJ;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1872
    invoke-static {}, LZa;->a()V

    .line 1873
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
            "LXJ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1867
    invoke-static {p1}, LZa;->a(LanD;)V

    .line 1868
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1857
    invoke-static {p1}, LZa;->a(LanG;)V

    .line 1858
    return-void
.end method
