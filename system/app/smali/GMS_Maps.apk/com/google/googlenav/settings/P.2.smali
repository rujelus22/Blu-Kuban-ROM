.class Lcom/google/googlenav/settings/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/SettingsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/SettingsPreferenceActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/googlenav/settings/P;->a:Lcom/google/googlenav/settings/SettingsPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 227
    check-cast p2, Ljava/lang/String;

    move-object v0, p1

    .line 228
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 229
    invoke-static {}, Las/j;->a()Las/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/j;->a(I)Landroid/accounts/Account;

    move-result-object v1

    .line 233
    const/16 v2, 0x50

    const-string v3, "s"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->p()V

    .line 246
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Las/f;->a(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/google/googlenav/settings/P;->a:Lcom/google/googlenav/settings/SettingsPreferenceActivity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/settings/P;->a:Lcom/google/googlenav/settings/SettingsPreferenceActivity;

    invoke-static {v0, v1, v4, v5, v2}, Las/j;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V

    .line 255
    const/16 v0, 0x5a3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/google/googlenav/settings/P;->a:Lcom/google/googlenav/settings/SettingsPreferenceActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    return v4
.end method
