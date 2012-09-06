.class LYz;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWX",
        "<",
        "LXC;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LXU;


# direct methods
.method constructor <init>(LXU;)V
    .registers 2
    .parameter

    .prologue
    .line 2578
    iput-object p1, p0, LYz;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LXC;
    .registers 2

    .prologue
    .line 2581
    invoke-static {}, LYX;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXC;

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
    .line 2591
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2578
    invoke-virtual {p0}, LYz;->a()LXC;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2601
    invoke-static {}, LYX;->a()V

    .line 2602
    return-void
.end method

.method public a(LXC;)V
    .registers 2
    .parameter

    .prologue
    .line 2606
    invoke-static {p1}, LYX;->a(LXC;)V

    .line 2607
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
            "LXC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2596
    invoke-static {p1}, LYX;->a(LanD;)V

    .line 2597
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2586
    invoke-static {p1}, LYX;->a(LanG;)V

    .line 2587
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 2578
    check-cast p1, LXC;

    invoke-virtual {p0, p1}, LYz;->a(LXC;)V

    return-void
.end method
