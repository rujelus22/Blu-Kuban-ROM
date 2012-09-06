.class public Lcom/twitter/android/ProxySettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_10} :catch_18

    move-result v2

    const v3, 0xffff

    if-lt v2, v3, :cond_8

    move v0, v1

    goto :goto_8

    :catch_18
    move-exception v0

    move v0, v1

    goto :goto_8
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProxySettingsActivity;->setTitle(I)V

    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProxySettingsActivity;->addPreferencesFromResource(I)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "proxy_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/ProxySettingsActivity;->d:Z

    const-string v1, "proxy_host"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ProxySettingsActivity;->b:Ljava/lang/String;

    const-string v1, "proxy_port"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProxySettingsActivity;->c:Ljava/lang/String;

    const-string v0, "proxy_enabled"

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProxySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "proxy_host"

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProxySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ProxySettingsActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcom/twitter/android/ProxySettingsActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4c
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/twitter/android/ProxySettingsActivity;->e:Landroid/preference/EditTextPreference;

    const-string v0, "proxy_port"

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProxySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ProxySettingsActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    iget-object v1, p0, Lcom/twitter/android/ProxySettingsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_66
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/twitter/android/ProxySettingsActivity;->a:Z

    if-eqz v0, :cond_17

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_RESTART_CONNECTION_MANAGER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProxySettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_17
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "proxy_host"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    sget-object v3, Lcom/twitter/android/util/k;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_33
    move v0, v2

    :goto_34
    if-eqz v0, :cond_61

    check-cast p2, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/twitter/android/ProxySettingsActivity;->a:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/twitter/android/ProxySettingsActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    :cond_44
    move v0, v2

    :goto_45
    iput-boolean v0, p0, Lcom/twitter/android/ProxySettingsActivity;->a:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const v0, 0x7f0b00b8

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_53
    :goto_53
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProxySettingsActivity;->setResult(I)V

    move v1, v2

    :goto_58
    return v1

    :cond_59
    move v0, v1

    goto :goto_34

    :cond_5b
    move v0, v1

    goto :goto_45

    :cond_5d
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_53

    :cond_61
    const v0, 0x7f0b00bf

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_58

    :cond_6c
    const-string v3, "proxy_port"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/ProxySettingsActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    check-cast p2, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/twitter/android/ProxySettingsActivity;->a:Z

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/twitter/android/ProxySettingsActivity;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Lcom/twitter/android/ProxySettingsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_a3
    move v1, v2

    :cond_a4
    iput-boolean v1, p0, Lcom/twitter/android/ProxySettingsActivity;->a:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const v0, 0x7f0b00bb

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_53

    :cond_b3
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_53

    :cond_b7
    const v0, 0x7f0b00c0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_58

    :cond_c2
    const-string v3, "proxy_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/twitter/android/ProxySettingsActivity;->a:Z

    if-nez v0, :cond_d8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v3, p0, Lcom/twitter/android/ProxySettingsActivity;->d:Z

    if-eq v0, v3, :cond_d9

    :cond_d8
    move v1, v2

    :cond_d9
    iput-boolean v1, p0, Lcom/twitter/android/ProxySettingsActivity;->a:Z

    goto/16 :goto_53
.end method
