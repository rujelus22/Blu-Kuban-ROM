.class final Lcom/anddoes/launcher/preference/v;
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
    iput-object p1, p0, Lcom/anddoes/launcher/preference/v;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 979
    iget-object v0, p0, Lcom/anddoes/launcher/preference/v;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v1

    .line 980
    const-string v2, "User Action"

    .line 981
    const-string v3, "Rate App"

    iget-object v0, p0, Lcom/anddoes/launcher/preference/v;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->c(Lcom/anddoes/launcher/preference/PreferencesActivity;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "rate_pro"

    .line 980
    :goto_15
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 983
    :try_start_18
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 984
    iget-object v0, p0, Lcom/anddoes/launcher/preference/v;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->c(Lcom/anddoes/launcher/preference/PreferencesActivity;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 985
    const-string v0, "com.anddoes.launcher.pro"

    .line 984
    :goto_26
    invoke-static {v0}, Lcom/anddoes/launcher/ia;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 983
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 986
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 987
    iget-object v0, p0, Lcom/anddoes/launcher/preference/v;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3b} :catch_43

    .line 992
    :goto_3b
    const/4 v0, 0x1

    return v0

    .line 981
    :cond_3d
    const-string v0, "rate_app"

    goto :goto_15

    .line 985
    :cond_40
    :try_start_40
    const-string v0, "com.anddoes.launcher"
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_42} :catch_43

    goto :goto_26

    .line 989
    :catch_43
    move-exception v0

    iget-object v0, p0, Lcom/anddoes/launcher/preference/v;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 990
    const v1, 0x7f060145

    .line 989
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 990
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3b
.end method
