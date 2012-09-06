.class Lcu;
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
        "Lck;",
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
    .line 379
    iput-object p1, p0, Lcu;->a:Lcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lck;
    .registers 2

    .prologue
    .line 382
    invoke-static {}, LcE;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

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
    .line 392
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcu;->a()Lck;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 402
    invoke-static {}, LcE;->a()V

    .line 403
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
            "Lck;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {p1}, LcE;->a(LanD;)V

    .line 398
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 387
    invoke-static {p1}, LcE;->a(LanG;)V

    .line 388
    return-void
.end method
