.class LoG;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWX",
        "<",
        "LpI;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LoC;


# direct methods
.method constructor <init>(LoC;)V
    .registers 2
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, LoG;->a:LoC;

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
    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 494
    invoke-virtual {p0}, LoG;->a()LpI;

    move-result-object v0

    return-object v0
.end method

.method public a()LpI;
    .registers 2

    .prologue
    .line 497
    invoke-static {}, Lpg;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpI;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 517
    invoke-static {}, Lpg;->a()V

    .line 518
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
            "LpI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    invoke-static {p1}, Lpg;->a(LanD;)V

    .line 513
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 502
    invoke-static {p1}, Lpg;->a(LanG;)V

    .line 503
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 494
    check-cast p1, LpI;

    invoke-virtual {p0, p1}, LoG;->a(LpI;)V

    return-void
.end method

.method public a(LpI;)V
    .registers 2
    .parameter

    .prologue
    .line 522
    invoke-static {p1}, Lpg;->a(LpI;)V

    .line 523
    return-void
.end method
