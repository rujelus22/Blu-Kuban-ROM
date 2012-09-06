.class public Lcom/android/exchange/SettingsRedirector;
.super Landroid/app/Activity;
.source "SettingsRedirector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/exchange/SettingsRedirector;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    const-string v3, "settings"

    invoke-static {v3}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    .local v1, redirect:Landroid/content/Intent;
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/exchange/SettingsRedirector;->startActivity(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/exchange/SettingsRedirector;->finish()V

    .line 45
    return-void
.end method
