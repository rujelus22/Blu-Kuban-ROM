.class Llk;
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
        "Lle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llg;


# direct methods
.method constructor <init>(Llg;)V
    .registers 2
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Llk;->a:Llg;

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
    .line 393
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 380
    invoke-virtual {p0}, Llk;->a()Lle;

    move-result-object v0

    return-object v0
.end method

.method public a()Lle;
    .registers 2

    .prologue
    .line 383
    invoke-static {}, Llp;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 403
    invoke-static {}, Llp;->a()V

    .line 404
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
            "Lle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    invoke-static {p1}, Llp;->a(LanD;)V

    .line 399
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 388
    invoke-static {p1}, Llp;->a(LanG;)V

    .line 389
    return-void
.end method
