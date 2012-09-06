.class Lix;
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
        "LiY;",
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
    .line 1377
    iput-object p1, p0, Lix;->a:Lik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LiY;
    .registers 2

    .prologue
    .line 1380
    invoke-static {}, LiR;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LiY;

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
    .line 1390
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1377
    invoke-virtual {p0}, Lix;->a()LiY;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1400
    invoke-static {}, LiR;->a()V

    .line 1401
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
            "LiY;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1395
    invoke-static {p1}, LiR;->a(LanD;)V

    .line 1396
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1385
    invoke-static {p1}, LiR;->a(LanG;)V

    .line 1386
    return-void
.end method
