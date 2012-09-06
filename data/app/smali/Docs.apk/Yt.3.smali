.class LYt;
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
        "LZL;",
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
    .line 2416
    iput-object p1, p0, LYt;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LZL;
    .registers 2

    .prologue
    .line 2419
    invoke-static {}, LZl;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZL;

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
    .line 2429
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2416
    invoke-virtual {p0}, LYt;->a()LZL;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2439
    invoke-static {}, LZl;->a()V

    .line 2440
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
            "LZL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2434
    invoke-static {p1}, LZl;->a(LanD;)V

    .line 2435
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2424
    invoke-static {p1}, LZl;->a(LanG;)V

    .line 2425
    return-void
.end method
