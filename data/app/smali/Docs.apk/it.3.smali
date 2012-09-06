.class Lit;
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
        "LhH;",
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
    .line 1296
    iput-object p1, p0, Lit;->a:Lik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LhH;
    .registers 2

    .prologue
    .line 1299
    invoke-static {}, LiI;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhH;

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
    .line 1309
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1296
    invoke-virtual {p0}, Lit;->a()LhH;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1319
    invoke-static {}, LiI;->a()V

    .line 1320
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
            "LhH;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1314
    invoke-static {p1}, LiI;->a(LanD;)V

    .line 1315
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1304
    invoke-static {p1}, LiI;->a(LanG;)V

    .line 1305
    return-void
.end method
