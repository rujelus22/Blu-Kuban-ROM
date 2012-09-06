.class public Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;
.super Ljava/lang/Object;
.source "UnknownDocumentOpener.java"

# interfaces
.implements LpO;


# instance fields
.field private final a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

.field private final a:Lrt;


# direct methods
.method public constructor <init>(Lrt;Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;->a:Lrt;

    .line 32
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    .line 33
    return-void
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LalU;
    .registers 6
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
    .line 40
    const-string v0, "documentOpenMethod"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_21

    invoke-static {v0}, LeD;->valueOf(Ljava/lang/String;)LeD;

    move-result-object v0

    .line 44
    :goto_c
    sget-object v1, LeD;->a:LeD;

    if-ne v0, v1, :cond_2b

    .line 45
    invoke-virtual {p2}, LkR;->g()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;->a:Lrt;

    invoke-virtual {v1, v0}, Lrt;->a(Ljava/lang/Object;)LpO;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_24

    .line 48
    invoke-interface {v0, p1, p2, p3}, LpO;->a(LpP;LkR;Landroid/os/Bundle;)LalU;

    move-result-object v0

    .line 53
    :goto_20
    return-object v0

    .line 41
    :cond_21
    sget-object v0, LeD;->a:LeD;

    goto :goto_c

    .line 50
    :cond_24
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;->a(LpP;LkR;Landroid/os/Bundle;)LalU;

    move-result-object v0

    goto :goto_20

    .line 53
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;->a(LpP;LkR;Landroid/os/Bundle;)LalU;

    move-result-object v0

    goto :goto_20
.end method
