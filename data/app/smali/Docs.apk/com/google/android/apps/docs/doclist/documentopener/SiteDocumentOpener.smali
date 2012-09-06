.class public Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;
.super Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;
.source "SiteDocumentOpener.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;->a:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LnQ;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p2}, LkR;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 33
    new-instance v1, Lro;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, v0}, Lro;-><init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/content/Intent;)V

    .line 34
    return-object v1
.end method
