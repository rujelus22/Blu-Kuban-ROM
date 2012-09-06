.class public abstract Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;
.super Ljava/lang/Object;
.source "AbstractImmediateDocumentOpener.java"

# interfaces
.implements LpO;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LpP;LkR;Landroid/os/Bundle;)LalU;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpP;",
            "LkR;",
            "Landroid/os/Bundle;",
            ")",
            "LalU",
            "<",
            "LnQ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;->a(LpP;LkR;Landroid/os/Bundle;)LnQ;

    move-result-object v0

    .line 31
    invoke-static {v0}, LalO;->a(Ljava/lang/Object;)LalU;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(LpP;LkR;Landroid/os/Bundle;)LnQ;
.end method
