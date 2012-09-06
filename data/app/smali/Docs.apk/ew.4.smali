.class public Lew;
.super Log;
.source "DocsPreferencesActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lew;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {p0}, Log;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lew;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    .line 439
    iget-object v1, p0, Lew;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->h(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;

    move-result-object v1

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 441
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080045

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->clear_cache:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->clear_cache_message:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lex;

    invoke-direct {v3, p0, v0}, Lex;-><init>(Lew;Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
