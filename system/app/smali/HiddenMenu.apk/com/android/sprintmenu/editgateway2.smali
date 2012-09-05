.class public Lcom/android/sprintmenu/editgateway2;
.super Landroid/preference/PreferenceActivity;
.source "editgateway2.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private portPref:Landroid/preference/EditTextPreference;

.field private primaryipPref:Landroid/preference/EditTextPreference;

.field private secondaryipPref:Landroid/preference/EditTextPreference;

.field private secondportPref:Landroid/preference/EditTextPreference;

.field private secportPref:Landroid/preference/EditTextPreference;

.field private secsecondportPref:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/editgateway2;->sNotSet:Ljava/lang/String;

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
    .line 109
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 110
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/editgateway2;->sNotSet:Ljava/lang/String;

    .line 112
    .end local p1
    :cond_a
    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/sprintmenu/editgateway2;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 29
    .local v2, root:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const-string v3, "Gateway2 Primary"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 34
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/editgateway2;->primaryipPref:Landroid/preference/EditTextPreference;

    .line 35
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->primaryipPref:Landroid/preference/EditTextPreference;

    const-string v4, "Primary IP"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->primaryipPref:Landroid/preference/EditTextPreference;

    const-string v4, "Primary IP"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->primaryipPref:Landroid/preference/EditTextPreference;

    const-string v4, "primaryipPref2_preference"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 38
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->primaryipPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 40
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->primaryipPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/editgateway2;->primaryipPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/editgateway2;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/editgateway2;->portPref:Landroid/preference/EditTextPreference;

    .line 44
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->portPref:Landroid/preference/EditTextPreference;

    const-string v4, "Port"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->portPref:Landroid/preference/EditTextPreference;

    const-string v4, "Port"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->portPref:Landroid/preference/EditTextPreference;

    const-string v4, "portPref2_preference"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->portPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 49
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->portPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/editgateway2;->portPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/editgateway2;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secportPref:Landroid/preference/EditTextPreference;

    .line 53
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secportPref:Landroid/preference/EditTextPreference;

    const-string v4, "Secure Port"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secportPref:Landroid/preference/EditTextPreference;

    const-string v4, "Secure Port"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secportPref:Landroid/preference/EditTextPreference;

    const-string v4, "secportPref2_preference"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secportPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/editgateway2;->secportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 59
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secportPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/editgateway2;->secportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/editgateway2;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, inlinePrefCat2:Landroid/preference/PreferenceCategory;
    const-string v3, "Gateway2 Secondary"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 67
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondaryipPref:Landroid/preference/EditTextPreference;

    .line 68
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondaryipPref:Landroid/preference/EditTextPreference;

    const-string v4, "Secondary IP"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondaryipPref:Landroid/preference/EditTextPreference;

    const-string v4, "Secondary IP"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondaryipPref:Landroid/preference/EditTextPreference;

    const-string v4, "secondaryipPref2_preference"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondaryipPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/editgateway2;->secondaryipPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondaryipPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 74
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondaryipPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/editgateway2;->secondaryipPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/editgateway2;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondportPref:Landroid/preference/EditTextPreference;

    .line 79
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondportPref:Landroid/preference/EditTextPreference;

    const-string v4, "Port"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondportPref:Landroid/preference/EditTextPreference;

    const-string v4, "Port"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondportPref:Landroid/preference/EditTextPreference;

    const-string v4, "secondportPref2_preference"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondportPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/editgateway2;->secondportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 85
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secondportPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/editgateway2;->secondportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/editgateway2;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secsecondportPref:Landroid/preference/EditTextPreference;

    .line 89
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secsecondportPref:Landroid/preference/EditTextPreference;

    const-string v4, "Secure Port"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secsecondportPref:Landroid/preference/EditTextPreference;

    const-string v4, "Secure Port"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secsecondportPref:Landroid/preference/EditTextPreference;

    const-string v4, "secsecondportPref2_preference"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secsecondportPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/editgateway2;->secsecondportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secsecondportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 95
    iget-object v3, p0, Lcom/android/sprintmenu/editgateway2;->secsecondportPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/editgateway2;->secsecondportPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/editgateway2;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/editgateway2;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 99
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/sprintmenu/editgateway2;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 128
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 120
    invoke-virtual {p0}, Lcom/android/sprintmenu/editgateway2;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 121
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 102
    invoke-virtual {p0, p2}, Lcom/android/sprintmenu/editgateway2;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 103
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_13

    .line 104
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/editgateway2;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    :cond_13
    return-void
.end method
