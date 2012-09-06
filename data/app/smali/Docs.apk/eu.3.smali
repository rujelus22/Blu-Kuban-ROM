.class Leu;
.super Ljava/lang/Object;
.source "DocsPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

.field final synthetic a:Let;


# direct methods
.method constructor <init>(Let;Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Leu;->a:Let;

    iput-object p2, p0, Leu;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Leu;->a:Let;

    iget-object v0, v0, Let;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->f(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;

    move-result-object v0

    iget-object v1, p0, Leu;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Leu;->a:Let;

    iget-object v1, v1, Let;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcY;->terms_of_service_url_drivev2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Leu;->a:Let;

    iget-object v1, v1, Let;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->startActivity(Landroid/content/Intent;)V

    .line 409
    return-void
.end method
