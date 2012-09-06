.class final Lcom/anddoes/launcher/preference/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/preference/PreferencesActivity;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/preference/w;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter

    .prologue
    .line 1001
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 1002
    const-string v0, "http://play.google.com/store/search?q=pub:Android Does"

    const-string v3, "google"

    const-string v4, "amazon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v0, "http://www.amazon.com/gp/mas/dl/android?p=com.anddoes.launcher&showAll=1"

    :cond_12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1001
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1003
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1004
    iget-object v0, p0, Lcom/anddoes/launcher/preference/w;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_25

    .line 1009
    :goto_23
    const/4 v0, 0x1

    return v0

    .line 1006
    :catch_25
    move-exception v0

    iget-object v0, p0, Lcom/anddoes/launcher/preference/w;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 1007
    const v1, 0x7f060145

    const/4 v2, 0x0

    .line 1006
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1007
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_23
.end method
