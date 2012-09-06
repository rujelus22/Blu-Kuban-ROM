.class LRh;
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
        "LQN;",
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
    .line 354
    iput-object p1, p0, LRh;->a:LRe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LQN;
    .registers 2

    .prologue
    .line 357
    invoke-static {}, LRl;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQN;

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
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 354
    invoke-virtual {p0}, LRh;->a()LQN;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 377
    invoke-static {}, LRl;->a()V

    .line 378
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
            "LQN;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {p1}, LRl;->a(LanD;)V

    .line 373
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 362
    invoke-static {p1}, LRl;->a(LanG;)V

    .line 363
    return-void
.end method
