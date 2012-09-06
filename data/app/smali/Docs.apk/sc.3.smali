.class Lsc;
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
        "LrO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LrW;


# direct methods
.method constructor <init>(LrW;)V
    .registers 2
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lsc;->a:LrW;

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
    .line 581
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 568
    invoke-virtual {p0}, Lsc;->a()LrO;

    move-result-object v0

    return-object v0
.end method

.method public a()LrO;
    .registers 2

    .prologue
    .line 571
    invoke-static {}, Lsh;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrO;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 591
    invoke-static {}, Lsh;->a()V

    .line 592
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
            "LrO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    invoke-static {p1}, Lsh;->a(LanD;)V

    .line 587
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 576
    invoke-static {p1}, Lsh;->a(LanG;)V

    .line 577
    return-void
.end method
