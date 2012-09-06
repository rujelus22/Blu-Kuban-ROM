.class LqA;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lqi;


# direct methods
.method constructor <init>(Lqi;)V
    .registers 2
    .parameter

    .prologue
    .line 2316
    iput-object p1, p0, LqA;->a:Lqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;
    .registers 2

    .prologue
    .line 2319
    invoke-static {}, Lrh;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;

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
    .line 2329
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2316
    invoke-virtual {p0}, LqA;->a()Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2339
    invoke-static {}, Lrh;->a()V

    .line 2340
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
            "Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2334
    invoke-static {p1}, Lrh;->a(LanD;)V

    .line 2335
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2324
    invoke-static {p1}, Lrh;->a(LanG;)V

    .line 2325
    return-void
.end method
