.class LoJ;
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
        "LpL;",
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
    .line 583
    iput-object p1, p0, LoJ;->a:LoC;

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
    .line 596
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 583
    invoke-virtual {p0}, LoJ;->a()LpL;

    move-result-object v0

    return-object v0
.end method

.method public a()LpL;
    .registers 2

    .prologue
    .line 586
    invoke-static {}, Lph;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpL;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 606
    invoke-static {}, Lph;->a()V

    .line 607
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
            "LpL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    invoke-static {p1}, Lph;->a(LanD;)V

    .line 602
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 591
    invoke-static {p1}, Lph;->a(LanG;)V

    .line 592
    return-void
.end method
