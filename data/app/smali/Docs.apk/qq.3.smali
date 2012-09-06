.class Lqq;
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
        "Lrs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lqi;


# direct methods
.method constructor <init>(Lqi;)V
    .registers 2
    .parameter

    .prologue
    .line 2073
    iput-object p1, p0, Lqq;->a:Lqi;

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
    .line 2086
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2073
    invoke-virtual {p0}, Lqq;->a()Lrs;

    move-result-object v0

    return-object v0
.end method

.method public a()Lrs;
    .registers 2

    .prologue
    .line 2076
    invoke-static {}, Lra;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrs;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2096
    invoke-static {}, Lra;->a()V

    .line 2097
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
            "Lrs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2091
    invoke-static {p1}, Lra;->a(LanD;)V

    .line 2092
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2081
    invoke-static {p1}, Lra;->a(LanG;)V

    .line 2082
    return-void
.end method
