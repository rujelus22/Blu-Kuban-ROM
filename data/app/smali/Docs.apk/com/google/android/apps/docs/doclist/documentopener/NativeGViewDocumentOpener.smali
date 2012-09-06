.class public Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;
.super Ljava/lang/Object;
.source "NativeGViewDocumentOpener.java"

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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    .line 50
    return-void
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LalU;
    .registers 8
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
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    invoke-interface {v0, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;->a(LkR;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;->a(LpP;LkR;Landroid/os/Bundle;)LalU;

    move-result-object v0

    .line 74
    :goto_e
    return-object v0

    .line 58
    :cond_f
    invoke-virtual {p2}, LkR;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 61
    const-string v2, "/viewer"

    invoke-static {v0, v2}, LpN;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    const-string v0, "pid"

    const-string v2, "explorer"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    const-string v0, "a"

    const-string v2, "v"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    const-string v0, "srcid"

    invoke-virtual {p2}, LkR;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    const-string v1, "accountName"

    invoke-virtual {p2}, LkR;->a()LkG;

    move-result-object v2

    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance v1, Lro;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, v0}, Lro;-><init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/content/Intent;)V

    .line 74
    invoke-static {v1}, LalO;->a(Ljava/lang/Object;)LalU;

    move-result-object v0

    goto :goto_e
.end method
