.class public Let;
.super Log;
.source "DocsPreferencesActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Let;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {p0}, Log;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Let;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    .line 391
    iget-object v1, p0, Let;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->e(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;

    move-result-object v1

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 393
    iget-object v1, p0, Let;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcY;->about_dialog:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080045

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Let;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    iget-object v3, v3, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LdQ;

    sget v4, LcY;->app_name_drivev2:I

    invoke-virtual {v3, v4}, LdQ;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, LZG;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->terms_and_privacy:I

    new-instance v3, Leu;

    invoke-direct {v3, p0, v0}, Leu;-><init>(Let;Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
