.class public Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;
.super Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;
.source "TrixDocumentOpener.java"


# instance fields
.field private final a:LFX;

.field private final a:Landroid/content/Context;

.field private final a:LeZ;


# direct methods
.method public constructor <init>(Landroid/content/Context;LeZ;LFX;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;->a:LeZ;

    .line 42
    iput-object p3, p0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;->a:LFX;

    .line 43
    return-void
.end method

.method private a(LkR;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-virtual {p1}, LkR;->a()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 63
    if-eqz p2, :cond_13

    const-string v2, "editMode"

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 64
    :cond_13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, LpN;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;->a:LeZ;

    sget-object v3, LeV;->u:LeV;

    invoke-interface {v2, v3}, LeZ;->a(LeV;)Z

    move-result v2

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;->a:LFX;

    const-string v3, "trixEnableEditor"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 68
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;->a:LFX;

    const-string v3, "trixDocumentUrlPattern"

    const-string v4, "/spreadsheet/ccc.*"

    invoke-interface {v2, v3, v4}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 71
    invoke-virtual {p1}, LkR;->a()LkG;

    move-result-object v0

    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LkR;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LkR;->a()LkU;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;LkU;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_68

    .line 75
    const-string v1, "KixDocumentOpener"

    const-string v2, "Opening the native Trix editor."

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_67
    return-object v0

    .line 82
    :cond_68
    const-string v0, "KixDocumentOpener"

    const-string v2, "Opening generic WebView to edit Trix document."

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {p1}, LkR;->a()LkG;

    move-result-object v2

    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LkR;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_67
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LnQ;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;->a(LkR;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    const-string v1, "resourceId"

    invoke-virtual {p2}, LkR;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "userCanEdit"

    invoke-virtual {p2}, LkR;->k()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    const-string v1, "editMode"

    const-string v2, "editMode"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    new-instance v1, Lro;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {p2}, LkR;->a()LkG;

    move-result-object v3

    invoke-virtual {v3}, LkG;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, v0}, Lro;-><init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/content/Intent;)V

    .line 57
    return-object v1
.end method
