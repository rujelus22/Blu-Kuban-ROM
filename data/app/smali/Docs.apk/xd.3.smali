.class Lxd;
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
        "LxQ;",
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
    .line 633
    iput-object p1, p0, Lxd;->a:LwU;

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
    .line 646
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 633
    invoke-virtual {p0}, Lxd;->a()LxQ;

    move-result-object v0

    return-object v0
.end method

.method public a()LxQ;
    .registers 2

    .prologue
    .line 636
    invoke-static {}, Lxm;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxQ;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 656
    invoke-static {}, Lxm;->a()V

    .line 657
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
            "LxQ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    invoke-static {p1}, Lxm;->a(LanD;)V

    .line 652
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 641
    invoke-static {p1}, Lxm;->a(LanG;)V

    .line 642
    return-void
.end method
