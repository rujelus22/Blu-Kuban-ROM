.class LqC;
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
        "Lrx;",
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
    .line 2370
    iput-object p1, p0, LqC;->a:Lqi;

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
    .line 2383
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2370
    invoke-virtual {p0}, LqC;->a()Lrx;

    move-result-object v0

    return-object v0
.end method

.method public a()Lrx;
    .registers 2

    .prologue
    .line 2373
    invoke-static {}, Lrf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2393
    invoke-static {}, Lrf;->a()V

    .line 2394
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
            "Lrx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2388
    invoke-static {p1}, Lrf;->a(LanD;)V

    .line 2389
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2378
    invoke-static {p1}, Lrf;->a(LanG;)V

    .line 2379
    return-void
.end method
