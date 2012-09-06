.class public Lrs;
.super LpM;
.source "LocalOpenerSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LpM",
        "<",
        "LkU;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LanD;LanD;LanD;LanD;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1, p2, p3, p4}, Lrs;->a(LanD;LanD;LanD;LanD;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, LpM;-><init>(Ljava/util/Map;)V

    .line 28
    return-void
.end method

.method static a(LanD;LanD;LanD;LanD;)Ljava/util/Map;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "LkU;",
            "LanD",
            "<+",
            "LpO;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sget-object v1, LkU;->j:LkU;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, LkU;->k:LkU;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, LkU;->a:LkU;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, LkU;->d:LkU;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object v0
.end method
