.class LJz;
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
        "LJo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LJt;


# direct methods
.method constructor <init>(LJt;)V
    .registers 2
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, LJz;->a:LJt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LJo;
    .registers 2

    .prologue
    .line 400
    invoke-static {}, LJA;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJo;

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
    .line 410
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 397
    invoke-virtual {p0}, LJz;->a()LJo;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 420
    invoke-static {}, LJA;->a()V

    .line 421
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
            "LJo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {p1}, LJA;->a(LanD;)V

    .line 416
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    invoke-static {p1}, LJA;->a(LanG;)V

    .line 406
    return-void
.end method
