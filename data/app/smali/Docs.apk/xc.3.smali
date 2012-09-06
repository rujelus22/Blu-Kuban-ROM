.class Lxc;
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
        "LwG;",
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
    .line 606
    iput-object p1, p0, Lxc;->a:LwU;

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
    .line 619
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 606
    invoke-virtual {p0}, Lxc;->a()LwG;

    move-result-object v0

    return-object v0
.end method

.method public a()LwG;
    .registers 2

    .prologue
    .line 609
    invoke-static {}, Lxi;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LwG;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 629
    invoke-static {}, Lxi;->a()V

    .line 630
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
            "LwG;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    invoke-static {p1}, Lxi;->a(LanD;)V

    .line 625
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 614
    invoke-static {p1}, Lxi;->a(LanG;)V

    .line 615
    return-void
.end method
