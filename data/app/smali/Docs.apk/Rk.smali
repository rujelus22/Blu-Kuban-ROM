.class LRk;
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
        "LQU;",
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
    .line 435
    iput-object p1, p0, LRk;->a:LRe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LQU;
    .registers 2

    .prologue
    .line 438
    invoke-static {}, LRn;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQU;

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
    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 435
    invoke-virtual {p0}, LRk;->a()LQU;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 458
    invoke-static {}, LRn;->a()V

    .line 459
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
            "LQU;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    invoke-static {p1}, LRn;->a(LanD;)V

    .line 454
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 443
    invoke-static {p1}, LRn;->a(LanG;)V

    .line 444
    return-void
.end method
