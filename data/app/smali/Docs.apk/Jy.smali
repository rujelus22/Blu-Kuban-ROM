.class LJy;
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
        "LJq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LJt;


# direct methods
.method constructor <init>(LJt;)V
    .registers 2
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, LJy;->a:LJt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LJq;
    .registers 2

    .prologue
    .line 373
    invoke-static {}, LJB;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJq;

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
    .line 383
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 370
    invoke-virtual {p0}, LJy;->a()LJq;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 393
    invoke-static {}, LJB;->a()V

    .line 394
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
            "LJq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {p1}, LJB;->a(LanD;)V

    .line 389
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 378
    invoke-static {p1}, LJB;->a(LanG;)V

    .line 379
    return-void
.end method
