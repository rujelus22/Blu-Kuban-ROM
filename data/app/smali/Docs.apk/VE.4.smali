.class LVE;
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
        "LVL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LVB;


# direct methods
.method constructor <init>(LVB;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, LVE;->a:LVB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LVL;
    .registers 2

    .prologue
    .line 238
    invoke-static {}, LVI;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVL;

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
    .line 248
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 235
    invoke-virtual {p0}, LVE;->a()LVL;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 258
    invoke-static {}, LVI;->a()V

    .line 259
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
            "LVL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {p1}, LVI;->a(LanD;)V

    .line 254
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    invoke-static {p1}, LVI;->a(LanG;)V

    .line 244
    return-void
.end method
