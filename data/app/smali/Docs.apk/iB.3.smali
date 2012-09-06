.class LiB;
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
        "Lji;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lik;


# direct methods
.method constructor <init>(Lik;)V
    .registers 2
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, LiB;->a:Lik;

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
    .line 1012
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 999
    invoke-virtual {p0}, LiB;->a()Lji;

    move-result-object v0

    return-object v0
.end method

.method public a()Lji;
    .registers 2

    .prologue
    .line 1002
    invoke-static {}, LiW;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1022
    invoke-static {}, LiW;->a()V

    .line 1023
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
            "Lji;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1017
    invoke-static {p1}, LiW;->a(LanD;)V

    .line 1018
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1007
    invoke-static {p1}, LiW;->a(LanG;)V

    .line 1008
    return-void
.end method
