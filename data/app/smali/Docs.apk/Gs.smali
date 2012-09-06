.class LGs;
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
        "LGe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LGn;


# direct methods
.method constructor <init>(LGn;)V
    .registers 2
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, LGs;->a:LGn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LGe;
    .registers 2

    .prologue
    .line 473
    invoke-static {}, LGC;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGe;

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
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 470
    invoke-virtual {p0}, LGs;->a()LGe;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 493
    invoke-static {}, LGC;->a()V

    .line 494
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
            "LGe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {p1}, LGC;->a(LanD;)V

    .line 489
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 478
    invoke-static {p1}, LGC;->a(LanG;)V

    .line 479
    return-void
.end method
