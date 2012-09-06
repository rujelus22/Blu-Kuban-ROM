.class LGt;
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
        "LGh;",
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
    .line 497
    iput-object p1, p0, LGt;->a:LGn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LGh;
    .registers 2

    .prologue
    .line 500
    invoke-static {}, LGE;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGh;

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
    .line 510
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 497
    invoke-virtual {p0}, LGt;->a()LGh;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 520
    invoke-static {}, LGE;->a()V

    .line 521
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
            "LGh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    invoke-static {p1}, LGE;->a(LanD;)V

    .line 516
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 505
    invoke-static {p1}, LGE;->a(LanG;)V

    .line 506
    return-void
.end method
