.class LUf;
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
        "LVg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LUb;


# direct methods
.method constructor <init>(LUb;)V
    .registers 2
    .parameter

    .prologue
    .line 1366
    iput-object p1, p0, LUf;->a:LUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LVg;
    .registers 2

    .prologue
    .line 1369
    invoke-static {}, LUV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVg;

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
    .line 1379
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1366
    invoke-virtual {p0}, LUf;->a()LVg;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1389
    invoke-static {}, LUV;->a()V

    .line 1390
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
            "LVg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1384
    invoke-static {p1}, LUV;->a(LanD;)V

    .line 1385
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1374
    invoke-static {p1}, LUV;->a(LanG;)V

    .line 1375
    return-void
.end method
