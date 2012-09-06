.class LYB;
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
    .line 2640
    iput-object p1, p0, LYB;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LXC;
    .registers 2

    .prologue
    .line 2643
    invoke-static {}, LYY;->a()LanD;

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
    .line 2653
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2640
    invoke-virtual {p0}, LYB;->a()LXC;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2663
    invoke-static {}, LYY;->a()V

    .line 2664
    return-void
.end method

.method public a(LXC;)V
    .registers 2
    .parameter

    .prologue
    .line 2668
    invoke-static {p1}, LYY;->a(LXC;)V

    .line 2669
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
    .line 2658
    invoke-static {p1}, LYY;->a(LanD;)V

    .line 2659
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2648
    invoke-static {p1}, LYY;->a(LanG;)V

    .line 2649
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 2640
    check-cast p1, LXC;

    invoke-virtual {p0, p1}, LYB;->a(LXC;)V

    return-void
.end method
