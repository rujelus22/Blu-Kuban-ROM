.class LYc;
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
        "Laac;",
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
    .line 2011
    iput-object p1, p0, LYc;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Laac;
    .registers 2

    .prologue
    .line 2014
    invoke-static {}, LZp;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laac;

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
    .line 2024
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2011
    invoke-virtual {p0}, LYc;->a()Laac;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2034
    invoke-static {}, LZp;->a()V

    .line 2035
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
            "Laac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2029
    invoke-static {p1}, LZp;->a(LanD;)V

    .line 2030
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2019
    invoke-static {p1}, LZp;->a(LanG;)V

    .line 2020
    return-void
.end method
