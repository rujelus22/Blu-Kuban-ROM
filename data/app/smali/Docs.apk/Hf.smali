.class LHf;
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
        "LHT;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LHc;


# direct methods
.method constructor <init>(LHc;)V
    .registers 2
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, LHf;->a:LHc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LHT;
    .registers 2

    .prologue
    .line 475
    invoke-static {}, LHz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHT;

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
    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 472
    invoke-virtual {p0}, LHf;->a()LHT;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 495
    invoke-static {}, LHz;->a()V

    .line 496
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
            "LHT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    invoke-static {p1}, LHz;->a(LanD;)V

    .line 491
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 480
    invoke-static {p1}, LHz;->a(LanG;)V

    .line 481
    return-void
.end method
