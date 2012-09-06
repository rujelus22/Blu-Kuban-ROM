.class public Lrx;
.super LpM;
.source "RemoteOpenerSelector.java"


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
.method public constructor <init>(LanD;LanD;LanD;LanD;LanD;LanD;LanD;)V
    .registers 9
    .parameter
    .parameter
    .parameter
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
            "Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static/range {p1 .. p7}, Lrx;->a(LanD;LanD;LanD;LanD;LanD;LanD;LanD;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, LpM;-><init>(Ljava/util/Map;)V

    .line 31
    return-void
.end method

.method static a(LanD;LanD;LanD;LanD;LanD;LanD;LanD;)Ljava/util/Map;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;",
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
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    sget-object v1, LkU;->c:LkU;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, LkU;->a:LkU;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, LkU;->d:LkU;

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, LkU;->e:LkU;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, LkU;->b:LkU;

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, LkU;->j:LkU;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, LkU;->k:LkU;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, LkU;->i:LkU;

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object v0
.end method
