.class Lsa;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LrW;


# direct methods
.method constructor <init>(LrW;)V
    .registers 2
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lsa;->a:LrW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;
    .registers 2

    .prologue
    .line 517
    invoke-static {}, Lsk;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

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
    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lsa;->a()Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 537
    invoke-static {}, Lsk;->a()V

    .line 538
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
            "Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    invoke-static {p1}, Lsk;->a(LanD;)V

    .line 533
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 522
    invoke-static {p1}, Lsk;->a(LanG;)V

    .line 523
    return-void
.end method
