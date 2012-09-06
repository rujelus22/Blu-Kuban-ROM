.class Lqm;
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
        "Lrt;",
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
    .line 1965
    iput-object p1, p0, Lqm;->a:Lqi;

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
    .line 1978
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1965
    invoke-virtual {p0}, Lqm;->a()Lrt;

    move-result-object v0

    return-object v0
.end method

.method public a()Lrt;
    .registers 2

    .prologue
    .line 1968
    invoke-static {}, Lrb;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrt;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1988
    invoke-static {}, Lrb;->a()V

    .line 1989
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
            "Lrt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1983
    invoke-static {p1}, Lrb;->a(LanD;)V

    .line 1984
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1973
    invoke-static {p1}, Lrb;->a(LanG;)V

    .line 1974
    return-void
.end method
