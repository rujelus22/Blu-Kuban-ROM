.class public LpY;
.super LpM;
.source "ExportOpenerSelector.java"


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
.method public constructor <init>(LanD;LanD;)V
    .registers 4
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p1, p2}, LpY;->a(LanD;LanD;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, LpM;-><init>(Ljava/util/Map;)V

    .line 25
    return-void
.end method

.method static a(LanD;LanD;)Ljava/util/Map;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;",
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
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    sget-object v1, LkU;->c:LkU;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, LkU;->d:LkU;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, LkU;->a:LkU;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, LkU;->j:LkU;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, LkU;->e:LkU;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, LkU;->k:LkU;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, LkU;->b:LkU;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0
.end method
