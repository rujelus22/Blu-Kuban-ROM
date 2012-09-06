.class LGu;
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
        "LFX;",
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
    .line 524
    iput-object p1, p0, LGu;->a:LGn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFX;
    .registers 2

    .prologue
    .line 527
    invoke-static {}, LGz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFX;

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
    .line 537
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 524
    invoke-virtual {p0}, LGu;->a()LFX;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 547
    invoke-static {}, LGz;->a()V

    .line 548
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
            "LFX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 542
    invoke-static {p1}, LGz;->a(LanD;)V

    .line 543
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 532
    invoke-static {p1}, LGz;->a(LanG;)V

    .line 533
    return-void
.end method
