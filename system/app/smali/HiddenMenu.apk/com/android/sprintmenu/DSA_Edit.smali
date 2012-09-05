.class public Lcom/android/sprintmenu/DSA_Edit;
.super Landroid/preference/PreferenceActivity;
.source "DSA_Edit.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private DSA_Server_Addr:Ljava/lang/String;

.field private DSA_Server_IP:Ljava/lang/String;

.field private DSA_Server_Port:Ljava/lang/String;

.field private DSA_Server_URL:Landroid/preference/EditTextPreference;

.field private DSS_Proxy_Port:Landroid/preference/EditTextPreference;

.field private DSS_Proxy_Server_IP:Landroid/preference/EditTextPreference;

.field private mSprintExtension:Lcom/sprint/internal/SystemProperties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/android/sprintmenu/DSA_Edit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/DSA_Edit;->LOG_TAG:Ljava/lang/String;

    .line 23
    const-string v0, "<Not Set>"

    sput-object v0, Lcom/android/sprintmenu/DSA_Edit;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/DSA_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 65
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 66
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/DSA_Edit;->sNotSet:Ljava/lang/String;

    .line 68
    .end local p1
    :cond_a
    return-object p1
.end method

.method private validate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "value"
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    const-string v4, "URL"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 60
    :cond_a
    :goto_a
    return v2

    .line 36
    :cond_b
    const-string v4, "IP"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 39
    const-string v1, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]|0))"

    .line 43
    .local v1, ptrn:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    goto :goto_a

    .line 48
    .end local v1           #ptrn:Ljava/lang/String;
    :cond_1a
    const-string v4, "Port"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 52
    :try_start_22
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_2d

    move-result v4

    const v5, 0xffff

    if-lt v4, v5, :cond_a

    :cond_2b
    move v2, v3

    .line 60
    goto :goto_a

    .line 55
    :catch_2d
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 57
    goto :goto_a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f05004f

    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    sget-object v3, Lcom/android/sprintmenu/DSA_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v3, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v3, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 125
    :try_start_14
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v4, 0x192

    invoke-virtual {v3, v4}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_Addr:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v4, 0x195

    invoke-virtual {v3, v4}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_IP:Ljava/lang/String;

    .line 127
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v4, 0x196

    invoke-virtual {v3, v4}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_Port:Ljava/lang/String;
    :try_end_32
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_14 .. :try_end_32} :catch_102

    .line 135
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_Addr:Ljava/lang/String;

    if-nez v3, :cond_10d

    .line 136
    sget-object v3, Lcom/android/sprintmenu/DSA_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v4, "DSA_URL is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_3d
    invoke-virtual {p0}, Lcom/android/sprintmenu/DSA_Edit;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 142
    .local v2, root:Landroid/preference/PreferenceScreen;
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 143
    .local v1, inlinePrefCat:Landroid/preference/PreferenceCategory;
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 144
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 146
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    .line 147
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 148
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    const v4, 0x7f050050

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 149
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    const v4, 0x7f05000b

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    .line 150
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    const-string v4, "DSA_Server_URL"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 152
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_Addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_URL:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_Addr:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/DSA_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Server_IP:Landroid/preference/EditTextPreference;

    .line 157
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Server_IP:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 158
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Server_IP:Landroid/preference/EditTextPreference;

    const v4, 0x7f050051

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 159
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Server_IP:Landroid/preference/EditTextPreference;

    const v4, 0x7f05000c

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    .line 160
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Server_IP:Landroid/preference/EditTextPreference;

    const-string v4, "DSA_Server_IP"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Server_IP:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 162
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Server_IP:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_IP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Server_IP:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_IP:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/DSA_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Port:Landroid/preference/EditTextPreference;

    .line 167
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Port:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 168
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Port:Landroid/preference/EditTextPreference;

    const v4, 0x7f050052

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 169
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Port:Landroid/preference/EditTextPreference;

    const v4, 0x7f05000d

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    .line 170
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Port:Landroid/preference/EditTextPreference;

    const-string v4, "DSA_Server_Port"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Port:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 172
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Port:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_Port:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_Edit;->DSS_Proxy_Port:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_Port:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/DSA_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/DSA_Edit;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 176
    .end local v1           #inlinePrefCat:Landroid/preference/PreferenceCategory;
    .end local v2           #root:Landroid/preference/PreferenceScreen;
    :goto_101
    return-void

    .line 129
    :catch_102
    move-exception v0

    .line 131
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v3, Lcom/android/sprintmenu/DSA_Edit;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    .line 138
    .end local v0           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_10d
    sget-object v3, Lcom/android/sprintmenu/DSA_Edit;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_Edit;->DSA_Server_Addr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/sprintmenu/DSA_Edit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 188
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 189
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 182
    invoke-virtual {p0}, Lcom/android/sprintmenu/DSA_Edit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 183
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 11
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 73
    invoke-virtual {p0, p2}, Lcom/android/sprintmenu/DSA_Edit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 74
    .local v2, pref:Landroid/preference/Preference;
    const/4 v4, 0x0

    .line 75
    .local v4, value:Ljava/lang/String;
    const/4 v3, 0x0

    .line 76
    .local v3, type:Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, id:I
    sget-object v5, Lcom/android/sprintmenu/DSA_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSharedPreferenceChanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v5, "DSA_Server_URL"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 82
    const/16 v1, 0x192

    .line 83
    const-string v3, "URL"

    .line 97
    :cond_2b
    :goto_2b
    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    if-eqz v2, :cond_76

    invoke-direct {p0, v4, v3}, Lcom/android/sprintmenu/DSA_Edit;->validate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 102
    :try_start_3e
    iget-object v5, p0, Lcom/android/sprintmenu/DSA_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    invoke-virtual {v5, v1, v4}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V
    :try_end_43
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_3e .. :try_end_43} :catch_6b

    .line 109
    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/sprintmenu/DSA_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    :goto_50
    return-void

    .line 85
    :cond_51
    const-string v5, "DSA_Server_IP"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 87
    const/16 v1, 0x195

    .line 88
    const-string v3, "IP"

    goto :goto_2b

    .line 90
    :cond_5e
    const-string v5, "DSA_Server_Port"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 92
    const/16 v1, 0x196

    .line 93
    const-string v3, "Port"

    goto :goto_2b

    .line 104
    :catch_6b
    move-exception v0

    .line 106
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v5, Lcom/android/sprintmenu/DSA_Edit;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 114
    .end local v0           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_76
    const-string v5, "Invalid parameter"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_50
.end method
