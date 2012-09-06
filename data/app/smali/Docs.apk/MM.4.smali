.class LMM;
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
        "LNS;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LME;


# direct methods
.method constructor <init>(LME;)V
    .registers 2
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, LMM;->a:LME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LNS;
    .registers 2

    .prologue
    .line 864
    invoke-static {}, LNi;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNS;

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
    .line 874
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 861
    invoke-virtual {p0}, LMM;->a()LNS;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 884
    invoke-static {}, LNi;->a()V

    .line 885
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
            "LNS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 879
    invoke-static {p1}, LNi;->a(LanD;)V

    .line 880
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 869
    invoke-static {p1}, LNi;->a(LanG;)V

    .line 870
    return-void
.end method
