.class Lis;
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
        "Ljg;",
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
    .line 1269
    iput-object p1, p0, Lis;->a:Lik;

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
    .line 1282
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1269
    invoke-virtual {p0}, Lis;->a()Ljg;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljg;
    .registers 2

    .prologue
    .line 1272
    invoke-static {}, LiV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljg;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1292
    invoke-static {}, LiV;->a()V

    .line 1293
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
            "Ljg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1287
    invoke-static {p1}, LiV;->a(LanD;)V

    .line 1288
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1277
    invoke-static {p1}, LiV;->a(LanG;)V

    .line 1278
    return-void
.end method
