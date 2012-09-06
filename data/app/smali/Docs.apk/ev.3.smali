.class public Lev;
.super Log;
.source "DocsPreferencesActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lev;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {p0}, Log;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 419
    iget-object v0, p0, Lev;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    .line 420
    iget-object v1, p0, Lev;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->g(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;

    move-result-object v1

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 422
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 423
    iget-object v2, p0, Lev;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, LcX;->licenses:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 425
    invoke-static {v2, v1}, LZW;->a(Ljava/io/InputStream;Landroid/webkit/WebView;)V

    .line 427
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, LcY;->prefs_legal:I

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
