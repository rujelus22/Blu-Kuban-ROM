.class LYi;
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
        "LXA;",
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
    .line 2146
    iput-object p1, p0, LYi;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LXA;
    .registers 2

    .prologue
    .line 2149
    invoke-static {}, LYW;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXA;

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
    .line 2159
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2146
    invoke-virtual {p0}, LYi;->a()LXA;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2169
    invoke-static {}, LYW;->a()V

    .line 2170
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
            "LXA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2164
    invoke-static {p1}, LYW;->a(LanD;)V

    .line 2165
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2154
    invoke-static {p1}, LYW;->a(LanG;)V

    .line 2155
    return-void
.end method
