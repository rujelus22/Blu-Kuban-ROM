.class LGx;
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
        "LGj;",
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
    .line 605
    iput-object p1, p0, LGx;->a:LGn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LGj;
    .registers 2

    .prologue
    .line 608
    invoke-static {}, LGF;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGj;

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
    .line 618
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 605
    invoke-virtual {p0}, LGx;->a()LGj;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 628
    invoke-static {}, LGF;->a()V

    .line 629
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
            "LGj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    invoke-static {p1}, LGF;->a(LanD;)V

    .line 624
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 613
    invoke-static {p1}, LGF;->a(LanG;)V

    .line 614
    return-void
.end method
