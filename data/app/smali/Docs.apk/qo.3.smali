.class Lqo;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;",
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
    .line 2019
    iput-object p1, p0, Lqo;->a:Lqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;
    .registers 2

    .prologue
    .line 2022
    invoke-static {}, Lrk;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;

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
    .line 2032
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2019
    invoke-virtual {p0}, Lqo;->a()Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2042
    invoke-static {}, Lrk;->a()V

    .line 2043
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
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2037
    invoke-static {p1}, Lrk;->a(LanD;)V

    .line 2038
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2027
    invoke-static {p1}, Lrk;->a(LanG;)V

    .line 2028
    return-void
.end method
