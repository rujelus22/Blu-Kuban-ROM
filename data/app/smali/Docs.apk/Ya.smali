.class LYa;
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
        "LXh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LXU;


# direct methods
.method constructor <init>(LXU;)V
    .registers 2
    .parameter

    .prologue
    .line 1957
    iput-object p1, p0, LYa;->a:LXU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LXh;
    .registers 2

    .prologue
    .line 1960
    invoke-static {}, LYN;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXh;

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
    .line 1970
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1957
    invoke-virtual {p0}, LYa;->a()LXh;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1980
    invoke-static {}, LYN;->a()V

    .line 1981
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
            "LXh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1975
    invoke-static {p1}, LYN;->a(LanD;)V

    .line 1976
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1965
    invoke-static {p1}, LYN;->a(LanG;)V

    .line 1966
    return-void
.end method
