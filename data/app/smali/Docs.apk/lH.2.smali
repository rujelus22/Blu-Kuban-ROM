.class LlH;
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
        "Lmn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LlB;


# direct methods
.method constructor <init>(LlB;)V
    .registers 2
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, LlH;->a:LlB;

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
    .line 388
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 375
    invoke-virtual {p0}, LlH;->a()Lmn;

    move-result-object v0

    return-object v0
.end method

.method public a()Lmn;
    .registers 2

    .prologue
    .line 378
    invoke-static {}, LlN;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 398
    invoke-static {}, LlN;->a()V

    .line 399
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
            "Lmn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {p1}, LlN;->a(LanD;)V

    .line 394
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 383
    invoke-static {p1}, LlN;->a(LanG;)V

    .line 384
    return-void
.end method
