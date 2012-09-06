.class LGr;
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
        "LFZ;",
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
    .line 443
    iput-object p1, p0, LGr;->a:LGn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFZ;
    .registers 2

    .prologue
    .line 446
    invoke-static {}, LGA;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFZ;

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
    .line 456
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 443
    invoke-virtual {p0}, LGr;->a()LFZ;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 466
    invoke-static {}, LGA;->a()V

    .line 467
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
            "LFZ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    invoke-static {p1}, LGA;->a(LanD;)V

    .line 462
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 451
    invoke-static {p1}, LGA;->a(LanG;)V

    .line 452
    return-void
.end method
