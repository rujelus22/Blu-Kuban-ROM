.class Liw;
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
        "LhE;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lik;


# direct methods
.method constructor <init>(Lik;)V
    .registers 2
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Liw;->a:Lik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LhE;
    .registers 2

    .prologue
    .line 894
    invoke-static {}, LiG;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhE;

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
    .line 904
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 891
    invoke-virtual {p0}, Liw;->a()LhE;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 914
    invoke-static {}, LiG;->a()V

    .line 915
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
            "LhE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 909
    invoke-static {p1}, LiG;->a(LanD;)V

    .line 910
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 899
    invoke-static {p1}, LiG;->a(LanG;)V

    .line 900
    return-void
.end method
