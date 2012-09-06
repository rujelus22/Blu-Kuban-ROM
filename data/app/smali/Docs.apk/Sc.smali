.class LSc;
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
        "LRU;",
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
    .line 363
    iput-object p1, p0, LSc;->a:LRZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LRU;
    .registers 2

    .prologue
    .line 366
    invoke-static {}, LSl;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRU;

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
    .line 376
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 363
    invoke-virtual {p0}, LSc;->a()LRU;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 386
    invoke-static {}, LSl;->a()V

    .line 387
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
            "LRU;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    invoke-static {p1}, LSl;->a(LanD;)V

    .line 382
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 371
    invoke-static {p1}, LSl;->a(LanG;)V

    .line 372
    return-void
.end method
