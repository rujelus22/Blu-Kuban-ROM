.class Lln;
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
        "Llw;",
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
    .line 461
    iput-object p1, p0, Lln;->a:Llg;

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
    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lln;->a()Llw;

    move-result-object v0

    return-object v0
.end method

.method public a()Llw;
    .registers 2

    .prologue
    .line 464
    invoke-static {}, Llt;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llw;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 484
    invoke-static {}, Llt;->a()V

    .line 485
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
            "Llw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    invoke-static {p1}, Llt;->a(LanD;)V

    .line 480
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 469
    invoke-static {p1}, Llt;->a(LanG;)V

    .line 470
    return-void
.end method
