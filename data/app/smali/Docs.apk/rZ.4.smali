.class LrZ;
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
        "Lsw;",
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
    .line 487
    iput-object p1, p0, LrZ;->a:LrW;

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
    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 487
    invoke-virtual {p0}, LrZ;->a()Lsw;

    move-result-object v0

    return-object v0
.end method

.method public a()Lsw;
    .registers 2

    .prologue
    .line 490
    invoke-static {}, Lsm;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsw;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 510
    invoke-static {}, Lsm;->a()V

    .line 511
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
            "Lsw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    invoke-static {p1}, Lsm;->a(LanD;)V

    .line 506
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 495
    invoke-static {p1}, Lsm;->a(LanG;)V

    .line 496
    return-void
.end method
