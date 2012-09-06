.class Lqn;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;",
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
    .line 1992
    iput-object p1, p0, Lqn;->a:Lqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;
    .registers 2

    .prologue
    .line 1995
    invoke-static {}, LqR;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;

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
    .line 2005
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1992
    invoke-virtual {p0}, Lqn;->a()Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2015
    invoke-static {}, LqR;->a()V

    .line 2016
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
            "Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2010
    invoke-static {p1}, LqR;->a(LanD;)V

    .line 2011
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2000
    invoke-static {p1}, LqR;->a(LanG;)V

    .line 2001
    return-void
.end method
