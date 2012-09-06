.class Lcx;
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
        "Lce;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcq;


# direct methods
.method constructor <init>(Lcq;)V
    .registers 2
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcx;->a:Lcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lce;
    .registers 2

    .prologue
    .line 463
    invoke-static {}, LcB;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce;

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
    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcx;->a()Lce;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 483
    invoke-static {}, LcB;->a()V

    .line 484
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
            "Lce;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    invoke-static {p1}, LcB;->a(LanD;)V

    .line 479
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 468
    invoke-static {p1}, LcB;->a(LanG;)V

    .line 469
    return-void
.end method
