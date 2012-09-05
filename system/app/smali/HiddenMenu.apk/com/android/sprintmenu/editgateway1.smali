.class public Lcom/android/sprintmenu/editgateway1;
.super Landroid/preference/PreferenceActivity;
.source "editgateway1.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private portPref:Landroid/preference/EditTextPreference;

.field private primaryipPref:Landroid/preference/EditTextPreference;

.field private secportPref:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/editgateway1;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 77
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 78
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/editgateway1;->sNotSet:Ljava/lang/String;

    .line 80
    .end local p1
    :cond_a
    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/sprintmenu/editgateway1;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 29
    .local v1, root:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const-string v2, "Browser Menu"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 34
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/editgateway1;->primaryipPref:Landroid/preference/EditTextPreference;

    .line 35
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->primaryipPref:Landroid/preference/EditTextPreference;

    const-string v3, "Gateway IP"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->primaryipPref:Landroid/preference/EditTextPreference;

    const-string v3, "Gateway IP"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->primaryipPref:Landroid/preference/EditTextPreference;

    const-string v3, "gatewayipPref_preference"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->primaryipPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 40
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->primaryipPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/editgateway1;->primaryipPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/editgateway1;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/editgateway1;->portPref:Landroid/preference/EditTextPreference;

    .line 44
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->portPref:Landroid/preference/EditTextPreference;

    const-string v3, "Port"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->portPref:Landroid/preference/EditTextPreference;

    const-string v3, "Port"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->portPref:Landroid/preference/EditTextPreference;

    const-string v3, "portPref_preference"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->portPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/editgateway1;->portPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->portPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 50
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->portPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/editgateway1;->portPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/editgateway1;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/editgateway1;->secportPref:Landroid/preference/EditTextPreference;

    .line 54
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->secportPref:Landroid/preference/EditTextPreference;

    const-string v3, "Secure Port"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->secportPref:Landroid/preference/EditTextPreference;

    const-string v3, "Secure Port"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->secportPref:Landroid/preference/EditTextPreference;

    const-string v3, "secportPref_preference"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->secportPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/editgateway1;->secportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->secportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 60
    iget-object v2, p0, Lcom/android/sprintmenu/editgateway1;->secportPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/editgateway1;->secportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/editgateway1;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/editgateway1;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 66
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/sprintmenu/editgateway1;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 96
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/android/sprintmenu/editgateway1;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 89
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 70
    invoke-virtual {p0, p2}, Lcom/android/sprintmenu/editgateway1;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 71
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_13

    .line 72
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/editgateway1;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    :cond_13
    return-void
.end method
