.class Lqt;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;",
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
    .line 2154
    iput-object p1, p0, Lqt;->a:Lqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;
    .registers 2

    .prologue
    .line 2157
    invoke-static {}, Lrc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;

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
    .line 2167
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2154
    invoke-virtual {p0}, Lqt;->a()Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2177
    invoke-static {}, Lrc;->a()V

    .line 2178
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
            "Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2172
    invoke-static {p1}, Lrc;->a(LanD;)V

    .line 2173
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2162
    invoke-static {p1}, Lrc;->a(LanG;)V

    .line 2163
    return-void
.end method
