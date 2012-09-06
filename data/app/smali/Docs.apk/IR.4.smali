.class LIR;
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
        "LIL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LIN;


# direct methods
.method constructor <init>(LIN;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, LIR;->a:LIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LIL;
    .registers 2

    .prologue
    .line 492
    invoke-static {}, LJc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIL;

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
    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 489
    invoke-virtual {p0}, LIR;->a()LIL;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 512
    invoke-static {}, LJc;->a()V

    .line 513
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
            "LIL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {p1}, LJc;->a(LanD;)V

    .line 508
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 497
    invoke-static {p1}, LJc;->a(LanG;)V

    .line 498
    return-void
.end method
