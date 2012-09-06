.class LRg;
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
        "LQZ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LRe;


# direct methods
.method constructor <init>(LRe;)V
    .registers 2
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, LRg;->a:LRe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LQZ;
    .registers 2

    .prologue
    .line 330
    invoke-static {}, LRo;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQZ;

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
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 327
    invoke-virtual {p0}, LRg;->a()LQZ;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 350
    invoke-static {}, LRo;->a()V

    .line 351
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
            "LQZ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {p1}, LRo;->a(LanD;)V

    .line 346
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    invoke-static {p1}, LRo;->a(LanG;)V

    .line 336
    return-void
.end method
