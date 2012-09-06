.class LKZ;
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
        "LLk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LKT;


# direct methods
.method constructor <init>(LKT;)V
    .registers 2
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, LKZ;->a:LKT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LLk;
    .registers 2

    .prologue
    .line 387
    invoke-static {}, LLg;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLk;

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
    .line 397
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 384
    invoke-virtual {p0}, LKZ;->a()LLk;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 407
    invoke-static {}, LLg;->a()V

    .line 408
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
            "LLk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {p1}, LLg;->a(LanD;)V

    .line 403
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    invoke-static {p1}, LLg;->a(LanG;)V

    .line 393
    return-void
.end method
