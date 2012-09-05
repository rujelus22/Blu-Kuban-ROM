.class public Lcom/android/sprintmenu/viewgateway2;
.super Landroid/preference/PreferenceActivity;
.source "viewgateway2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/sprintmenu/viewgateway2;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 18
    .local v4, root:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 19
    .local v0, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const-string v9, "Gateway2 Primary"

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 23
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 24
    .local v3, primaryipPref:Landroid/preference/Preference;
    const-string v9, "Primary IP"

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    const-string v9, "068.028.031.001"

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 29
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    .local v2, portPref:Landroid/preference/Preference;
    const-string v9, "Port"

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    const-string v9, "80"

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 35
    new-instance v7, Landroid/preference/Preference;

    invoke-direct {v7, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    .local v7, secportPref:Landroid/preference/Preference;
    const-string v9, "Secure Port"

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    const-string v9, "80"

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 41
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, inlinePrefCat2:Landroid/preference/PreferenceCategory;
    const-string v9, "Gateway2 Secondary"

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 46
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 47
    .local v5, secondaryipPref:Landroid/preference/Preference;
    const-string v9, "Secondary IP"

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    const-string v9, "068.028.031.001"

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    new-instance v6, Landroid/preference/Preference;

    invoke-direct {v6, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 53
    .local v6, secondportPref:Landroid/preference/Preference;
    const-string v9, "Port"

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    const-string v9, "80"

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 58
    new-instance v8, Landroid/preference/Preference;

    invoke-direct {v8, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    .local v8, secsecondportPref:Landroid/preference/Preference;
    const-string v9, "Secure Port"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    const-string v9, "80"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 63
    invoke-virtual {p0, v4}, Lcom/android/sprintmenu/viewgateway2;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 64
    return-void
.end method
