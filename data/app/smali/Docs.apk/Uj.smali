.class LUj;
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
        "LTS;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LUb;


# direct methods
.method constructor <init>(LUb;)V
    .registers 2
    .parameter

    .prologue
    .line 1474
    iput-object p1, p0, LUj;->a:LUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LTS;
    .registers 2

    .prologue
    .line 1477
    invoke-static {}, LUQ;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTS;

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
    .line 1487
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1474
    invoke-virtual {p0}, LUj;->a()LTS;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1497
    invoke-static {}, LUQ;->a()V

    .line 1498
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
            "LTS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1492
    invoke-static {p1}, LUQ;->a(LanD;)V

    .line 1493
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1482
    invoke-static {p1}, LUQ;->a(LanG;)V

    .line 1483
    return-void
.end method
