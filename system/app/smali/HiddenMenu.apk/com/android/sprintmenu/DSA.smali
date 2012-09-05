.class public Lcom/android/sprintmenu/DSA;
.super Landroid/preference/PreferenceActivity;
.source "DSA.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private DSA_Server_Addr:Ljava/lang/String;

.field private DSA_Server_URL:Landroid/preference/EditTextPreference;

.field private mSprintExtension:Lcom/sprint/internal/SystemProperties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/android/sprintmenu/DSA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/DSA;->LOG_TAG:Ljava/lang/String;

    .line 22
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/DSA;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/DSA;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 28
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 29
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/DSA;->sNotSet:Ljava/lang/String;

    .line 31
    .end local p1
    :cond_a
    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f05004e

    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget-object v3, Lcom/android/sprintmenu/DSA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v3, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v3, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/DSA;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 64
    :try_start_14
    iget-object v3, p0, Lcom/android/sprintmenu/DSA;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v4, 0x192

    invoke-virtual {v3, v4}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_Addr:Ljava/lang/String;
    :try_end_1e
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_14 .. :try_end_1e} :catch_7a

    .line 72
    iget-object v3, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_Addr:Ljava/lang/String;

    if-nez v3, :cond_85

    .line 73
    sget-object v3, Lcom/android/sprintmenu/DSA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "DSA_URL is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_29
    invoke-virtual {p0}, Lcom/android/sprintmenu/DSA;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 79
    .local v2, root:Landroid/preference/PreferenceScreen;
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v3, 0x7f05004d

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 81
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 83
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    .line 84
    iget-object v3, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 85
    iget-object v3, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 86
    iget-object v3, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    const v4, 0x7f05000c

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    .line 87
    iget-object v3, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    const-string v4, "DSA_Server_URL"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 89
    iget-object v3, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_Addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_Addr:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/DSA;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/DSA;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 93
    .end local v1           #inlinePrefCat:Landroid/preference/PreferenceCategory;
    .end local v2           #root:Landroid/preference/PreferenceScreen;
    :goto_79
    return-void

    .line 66
    :catch_7a
    move-exception v0

    .line 68
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v3, Lcom/android/sprintmenu/DSA;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 75
    .end local v0           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_85
    sget-object v3, Lcom/android/sprintmenu/DSA;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA;->DSA_Server_Addr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/sprintmenu/DSA;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 105
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 99
    invoke-virtual {p0}, Lcom/android/sprintmenu/DSA;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 100
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 36
    invoke-virtual {p0, p2}, Lcom/android/sprintmenu/DSA;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 40
    .local v1, pref:Landroid/preference/Preference;
    sget-object v2, Lcom/android/sprintmenu/DSA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSharedPreferenceChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-eqz v1, :cond_38

    .line 45
    :try_start_1e
    iget-object v2, p0, Lcom/android/sprintmenu/DSA;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v3, 0x192

    const-string v4, ""

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V
    :try_end_2b
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_1e .. :try_end_2b} :catch_39

    .line 52
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/sprintmenu/DSA;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    :cond_38
    :goto_38
    return-void

    .line 47
    :catch_39
    move-exception v0

    .line 49
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v2, Lcom/android/sprintmenu/DSA;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method
