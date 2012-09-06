.class LoH;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWZ",
        "<",
        "Lmj;",
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
    .line 525
    iput-object p1, p0, LoH;->a:LoC;

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
    .line 538
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 525
    invoke-virtual {p0}, LoH;->a()Loj;

    move-result-object v0

    return-object v0
.end method

.method public a()Loj;
    .registers 2

    .prologue
    .line 528
    invoke-static {}, Lpd;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loj;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 548
    invoke-static {}, Lpd;->a()V

    .line 549
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
            "Loj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    invoke-static {p1}, Lpd;->a(LanD;)V

    .line 544
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 533
    invoke-static {p1}, Lpd;->a(LanG;)V

    .line 534
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 525
    check-cast p1, Loj;

    invoke-virtual {p0, p1}, LoH;->a(Loj;)V

    return-void
.end method

.method public a(Loj;)V
    .registers 2
    .parameter

    .prologue
    .line 553
    invoke-static {p1}, Lpd;->a(Loj;)V

    .line 554
    return-void
.end method
