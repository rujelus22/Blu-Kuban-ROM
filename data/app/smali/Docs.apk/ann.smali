.class Lann;
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
        "Lans;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanl;


# direct methods
.method constructor <init>(Lanl;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lann;->a:Lanl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lans;
    .registers 2

    .prologue
    .line 85
    invoke-static {}, Lano;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lans;

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
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lann;->a()Lans;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 105
    invoke-static {}, Lano;->a()V

    .line 106
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
            "Lans;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p1}, Lano;->a(LanD;)V

    .line 101
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    invoke-static {p1}, Lano;->a(LanG;)V

    .line 91
    return-void
.end method
