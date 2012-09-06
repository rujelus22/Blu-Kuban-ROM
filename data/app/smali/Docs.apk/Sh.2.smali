.class LSh;
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
        "LRL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LRZ;


# direct methods
.method constructor <init>(LRZ;)V
    .registers 2
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, LSh;->a:LRZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LRL;
    .registers 2

    .prologue
    .line 501
    invoke-static {}, LSj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRL;

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
    .line 511
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 498
    invoke-virtual {p0}, LSh;->a()LRL;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 521
    invoke-static {}, LSj;->a()V

    .line 522
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
            "LRL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {p1}, LSj;->a(LanD;)V

    .line 517
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 506
    invoke-static {p1}, LSj;->a(LanG;)V

    .line 507
    return-void
.end method
