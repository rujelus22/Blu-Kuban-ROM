.class Lxa;
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
        "Lxp;",
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
    .line 552
    iput-object p1, p0, Lxa;->a:LwU;

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
    .line 565
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lxa;->a()Lxp;

    move-result-object v0

    return-object v0
.end method

.method public a()Lxp;
    .registers 2

    .prologue
    .line 555
    invoke-static {}, Lxk;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 575
    invoke-static {}, Lxk;->a()V

    .line 576
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
            "Lxp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {p1}, Lxk;->a(LanD;)V

    .line 571
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 560
    invoke-static {p1}, Lxk;->a(LanG;)V

    .line 561
    return-void
.end method
