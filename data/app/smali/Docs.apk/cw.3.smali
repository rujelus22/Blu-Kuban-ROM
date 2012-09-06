.class Lcw;
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
        "Lcj;",
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
    .line 433
    iput-object p1, p0, Lcw;->a:Lcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcj;
    .registers 2

    .prologue
    .line 436
    invoke-static {}, LcD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcj;

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
    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcw;->a()Lcj;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 456
    invoke-static {}, LcD;->a()V

    .line 457
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
            "Lcj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    invoke-static {p1}, LcD;->a(LanD;)V

    .line 452
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 441
    invoke-static {p1}, LcD;->a(LanG;)V

    .line 442
    return-void
.end method
