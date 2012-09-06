.class public Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;
.super Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;
.source "PresentationDocumentOpener.java"


# instance fields
.field private final a:LFX;

.field private final a:Landroid/content/Context;

.field private final a:LeZ;


# direct methods
.method public constructor <init>(Landroid/content/Context;LFX;LeZ;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;->a:LFX;

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;->a:LeZ;

    .line 44
    return-void
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LnQ;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p2}, LkR;->a()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 50
    invoke-static {v0}, LpN;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, LkR;->a()LkG;

    move-result-object v2

    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v3

    .line 53
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;->a:LeZ;

    sget-object v4, LeV;->n:LeV;

    invoke-interface {v2, v4}, LeZ;->a(LeV;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 54
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;->a:LFX;

    const-string v4, "punchUriSignature"

    const-string v5, "/presentation/"

    invoke-interface {v2, v4, v5}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 57
    const-string v1, "PresentationDocumentOpener"

    const-string v2, "Opening the Punch HiFi WebView."

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 60
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    const/4 v0, 0x0

    move v1, v0

    :goto_43
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_58

    .line 62
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_43

    .line 64
    :cond_58
    const-string v0, "mobilepresent"

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    const-string v0, "touch"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    const-string v0, "rm"

    const-string v1, "minimal"

    invoke-virtual {v4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 69
    const-string v0, "resourceId"

    invoke-virtual {p2}, LkR;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    new-instance v0, Lro;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;->a:Landroid/content/Context;

    invoke-direct {v0, v2, p1, v3, v1}, Lro;-><init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/content/Intent;)V

    .line 80
    :goto_89
    return-object v0

    .line 75
    :cond_8a
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 78
    const-string v0, "ncl"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 80
    new-instance v0, Lrm;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrm;-><init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_89
.end method
