.class LrY;
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
        "LrN;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LrW;


# direct methods
.method constructor <init>(LrW;)V
    .registers 2
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, LrY;->a:LrW;

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
    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 460
    invoke-virtual {p0}, LrY;->a()LrN;

    move-result-object v0

    return-object v0
.end method

.method public a()LrN;
    .registers 2

    .prologue
    .line 463
    invoke-static {}, Lsg;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrN;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 483
    invoke-static {}, Lsg;->a()V

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
            "LrN;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    invoke-static {p1}, Lsg;->a(LanD;)V

    .line 479
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 468
    invoke-static {p1}, Lsg;->a(LanG;)V

    .line 469
    return-void
.end method
