.class Lse;
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
        "Lsx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LrW;


# direct methods
.method constructor <init>(LrW;)V
    .registers 2
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lse;->a:LrW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 635
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 622
    invoke-virtual {p0}, Lse;->a()Lsx;

    move-result-object v0

    return-object v0
.end method

.method public a()Lsx;
    .registers 2

    .prologue
    .line 625
    invoke-static {}, Lsn;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsx;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 645
    invoke-static {}, Lsn;->a()V

    .line 646
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
            "Lsx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    invoke-static {p1}, Lsn;->a(LanD;)V

    .line 641
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 630
    invoke-static {p1}, Lsn;->a(LanG;)V

    .line 631
    return-void
.end method
