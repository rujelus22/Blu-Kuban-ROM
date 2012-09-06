.class LRI;
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
        "LRE;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LRF;


# direct methods
.method constructor <init>(LRF;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, LRI;->a:LRF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LRE;
    .registers 2

    .prologue
    .line 108
    invoke-static {}, LRK;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRE;

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
    .line 118
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, LRI;->a()LRE;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 128
    invoke-static {}, LRK;->a()V

    .line 129
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
            "LRE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p1}, LRK;->a(LanD;)V

    .line 124
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    invoke-static {p1}, LRK;->a(LanG;)V

    .line 114
    return-void
.end method
