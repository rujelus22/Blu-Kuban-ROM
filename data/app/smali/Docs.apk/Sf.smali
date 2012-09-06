.class LSf;
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
        "LRV;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LRZ;


# direct methods
.method constructor <init>(LRZ;)V
    .registers 2
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, LSf;->a:LRZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LRV;
    .registers 2

    .prologue
    .line 447
    invoke-static {}, LSm;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRV;

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
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 444
    invoke-virtual {p0}, LSf;->a()LRV;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 467
    invoke-static {}, LSm;->a()V

    .line 468
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
            "LRV;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {p1}, LSm;->a(LanD;)V

    .line 463
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 452
    invoke-static {p1}, LSm;->a(LanG;)V

    .line 453
    return-void
.end method
