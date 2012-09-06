.class Lxb;
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
        "Lxq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LwU;


# direct methods
.method constructor <init>(LwU;)V
    .registers 2
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lxb;->a:LwU;

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
    .line 592
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 579
    invoke-virtual {p0}, Lxb;->a()Lxq;

    move-result-object v0

    return-object v0
.end method

.method public a()Lxq;
    .registers 2

    .prologue
    .line 582
    invoke-static {}, Lxl;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 602
    invoke-static {}, Lxl;->a()V

    .line 603
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
            "Lxq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    invoke-static {p1}, Lxl;->a(LanD;)V

    .line 598
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 587
    invoke-static {p1}, Lxl;->a(LanG;)V

    .line 588
    return-void
.end method
