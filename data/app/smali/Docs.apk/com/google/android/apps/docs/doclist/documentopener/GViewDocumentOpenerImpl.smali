.class public Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpenerImpl;
.super Ljava/lang/Object;
.source "GViewDocumentOpenerImpl.java"

# interfaces
.implements Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpenerImpl;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpenerImpl;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    .line 44
    return-void
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LalU;
    .registers 10
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
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpenerImpl;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    invoke-interface {v0, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;->a(LkR;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpenerImpl;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;->a(LpP;LkR;Landroid/os/Bundle;)LalU;

    move-result-object v0

    .line 64
    :goto_e
    return-object v0

    .line 52
    :cond_f
    invoke-virtual {p2}, LkR;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 53
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 55
    const-string v1, "/viewer"

    invoke-static {v0, v1}, LpN;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    const-string v0, "pid"

    const-string v1, "explorer"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    const-string v0, "a"

    const-string v1, "v"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    const-string v0, "srcid"

    invoke-virtual {p2}, LkR;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    new-instance v0, Lrm;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpenerImpl;->a:Landroid/content/Context;

    invoke-virtual {p2}, LkR;->a()LkG;

    move-result-object v3

    invoke-virtual {v3}, LkG;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrm;-><init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, LalO;->a(Ljava/lang/Object;)LalU;

    move-result-object v0

    goto :goto_e
.end method
