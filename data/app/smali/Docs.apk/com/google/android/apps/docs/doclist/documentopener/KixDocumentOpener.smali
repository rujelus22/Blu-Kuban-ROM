.class public Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;
.super Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;
.source "KixDocumentOpener.java"


# instance fields
.field private final a:LFX;

.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;LFX;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:LFX;

    .line 49
    return-void
.end method

.method private a(LkR;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1}, LkR;->a()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 74
    if-eqz p2, :cond_86

    const-string v0, "editMode"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_86

    move v0, v1

    .line 75
    :goto_15
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, LpN;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 77
    if-nez v0, :cond_88

    iget-object v6, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lkg;->a(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_88

    iget-object v6, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:LFX;

    const-string v7, "enableKixWebView"

    invoke-interface {v6, v7, v1}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a()Z

    move-result v6

    if-eqz v6, :cond_88

    .line 80
    iget-object v6, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:LFX;

    const-string v7, "kixWebViewUrlPattern"

    const-string v8, "/document/d/[^/]*/edit.*"

    invoke-interface {v6, v7, v8}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 83
    const-string v0, "KixDocumentOpener"

    const-string v1, "Opening the Kix HiFi WebView."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/edit"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/native/webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, LkR;->a()LkG;

    move-result-object v2

    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LkR;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    :goto_85
    return-object v0

    :cond_86
    move v0, v2

    .line 74
    goto :goto_15

    .line 90
    :cond_88
    iget-object v4, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:LFX;

    const-string v6, "kixEnableNativeEditor"

    invoke-interface {v4, v6, v1}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v1, v4, :cond_d1

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:LFX;

    const-string v4, "kixDocumentUrlPattern"

    const-string v6, "/document/d/[^/]*/edit.*"

    invoke-interface {v1, v4, v6}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v5, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 95
    invoke-virtual {p1}, LkR;->a()LkG;

    move-result-object v1

    invoke-virtual {v1}, LkG;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LkR;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, LkR;->a()LkU;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;LkU;)Landroid/content/Intent;

    move-result-object v1

    .line 97
    iget-object v4, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_d1

    .line 99
    const-string v0, "KixDocumentOpener"

    const-string v2, "Opening the native Kix editor."

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 100
    goto :goto_85

    .line 105
    :cond_d1
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:LFX;

    const-string v2, "docEditPath"

    const-string v4, "/document/m"

    invoke-interface {v1, v2, v4}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    if-eqz v0, :cond_11d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    .line 107
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 108
    invoke-static {v3, v1}, LpN;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 109
    const-string v1, "id"

    invoke-virtual {p1}, LkR;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    const-string v1, "source"

    const-string v2, "cm"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 111
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 114
    :goto_102
    const-string v1, "KixDocumentOpener"

    const-string v2, "Opening generic WebView to edit Kix document."

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {p1}, LkR;->a()LkG;

    move-result-object v2

    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LkR;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_85

    :cond_11d
    move-object v0, v3

    goto :goto_102
.end method

.method private a()Z
    .registers 5

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:LFX;

    const-string v2, "kixWebViewCutoffVersion"

    const v3, 0x7fffffff

    invoke-interface {v1, v2, v3}, LFX;->a(Ljava/lang/String;I)I

    move-result v1

    if-ge v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LnQ;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a(LkR;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    const-string v1, "resourceId"

    invoke-virtual {p2}, LkR;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "userCanEdit"

    invoke-virtual {p2}, LkR;->k()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const-string v1, "editMode"

    const-string v2, "editMode"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    new-instance v1, Lro;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {p2}, LkR;->a()LkG;

    move-result-object v3

    invoke-virtual {v3}, LkG;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, v0}, Lro;-><init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/content/Intent;)V

    .line 63
    return-object v1
.end method
