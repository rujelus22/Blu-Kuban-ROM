.class LRi;
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
        "LQP;",
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
    .line 381
    iput-object p1, p0, LRi;->a:LRe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LQP;
    .registers 2

    .prologue
    .line 384
    invoke-static {}, LRm;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQP;

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
    .line 394
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 381
    invoke-virtual {p0}, LRi;->a()LQP;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 404
    invoke-static {}, LRm;->a()V

    .line 405
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
            "LQP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {p1}, LRm;->a(LanD;)V

    .line 400
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 389
    invoke-static {p1}, LRm;->a(LanG;)V

    .line 390
    return-void
.end method
