.class LIS;
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
        "LIM;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LIN;


# direct methods
.method constructor <init>(LIN;)V
    .registers 2
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, LIS;->a:LIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LIM;
    .registers 2

    .prologue
    .line 519
    invoke-static {}, LJd;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIM;

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
    .line 529
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 516
    invoke-virtual {p0}, LIS;->a()LIM;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 539
    invoke-static {}, LJd;->a()V

    .line 540
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
            "LIM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {p1}, LJd;->a(LanD;)V

    .line 535
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 524
    invoke-static {p1}, LJd;->a(LanG;)V

    .line 525
    return-void
.end method
