.class public Lcom/android/sprintmenu/Multimedia_Edit;
.super Landroid/preference/PreferenceActivity;
.source "Multimedia_Edit.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private HTTPPD_Proxy_AddrPref:Landroid/preference/EditTextPreference;

.field private HTTPPD_Proxy_PortPref:Landroid/preference/EditTextPreference;

.field private RTSP_Proxy_AddrPref:Landroid/preference/EditTextPreference;

.field private RTSP_Proxy_PortPref:Landroid/preference/EditTextPreference;

.field private mSprintExtension:Lcom/sprint/internal/SystemProperties;

.field private savedInstanceState:Landroid/os/Bundle;

.field private tmpHTTPPD_Proxy_Addr:Ljava/lang/String;

.field private tmpHTTPPD_Proxy_Port:Ljava/lang/String;

.field private tmpRTSP_Proxy_Addr:Ljava/lang/String;

.field private tmpRTSP_Proxy_Port:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/android/sprintmenu/Multimedia_Edit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    .line 29
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/Multimedia_Edit;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/Multimedia_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Addr:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Port:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Addr:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Port:Ljava/lang/String;

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 41
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 42
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/Multimedia_Edit;->sNotSet:Ljava/lang/String;

    .line 44
    .end local p1
    :cond_a
    return-object p1
.end method

.method private updatePreference()V
    .registers 4

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/sprintmenu/Multimedia_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v2, 0x19c

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Addr:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/android/sprintmenu/Multimedia_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v2, 0x19d

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Port:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/android/sprintmenu/Multimedia_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v2, 0x19e

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Addr:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/android/sprintmenu/Multimedia_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v2, 0x19f

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Port:Ljava/lang/String;
    :try_end_28
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_28} :catch_29

    .line 197
    :goto_28
    return-void

    .line 192
    :catch_29
    move-exception v0

    .line 194
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v1, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f050059

    const v6, 0x7f050058

    const v5, 0x7f050057

    const v4, 0x7f050056

    .line 131
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    sget-object v2, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v2, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v2, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 136
    invoke-direct {p0}, Lcom/android/sprintmenu/Multimedia_Edit;->updatePreference()V

    .line 138
    invoke-virtual {p0}, Lcom/android/sprintmenu/Multimedia_Edit;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 141
    .local v1, root:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v2, 0x7f050055

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 143
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 145
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    .line 146
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 147
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 148
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    const-string v3, "RTSP_Proxy_AddrPref"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Addr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Multimedia_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 153
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_PortPref:Landroid/preference/EditTextPreference;

    .line 154
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_PortPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 155
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_PortPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 156
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_PortPref:Landroid/preference/EditTextPreference;

    const-string v3, "RTSP_Proxy_PortPref"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_PortPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_PortPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Port:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Multimedia_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->RTSP_Proxy_PortPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 161
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    .line 162
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v6}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 163
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v6}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 164
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    const-string v3, "HTTPPD_Proxy_AddrPref"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Addr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Multimedia_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 169
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_PortPref:Landroid/preference/EditTextPreference;

    .line 170
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_PortPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v7}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 171
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_PortPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v7}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 172
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_PortPref:Landroid/preference/EditTextPreference;

    const-string v3, "HTTPPD_Proxy_PortPref"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_PortPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_PortPref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Port:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Multimedia_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->HTTPPD_Proxy_PortPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/Multimedia_Edit;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 179
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/sprintmenu/Multimedia_Edit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 210
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 211
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 203
    invoke-virtual {p0}, Lcom/android/sprintmenu/Multimedia_Edit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 204
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 49
    invoke-virtual {p0, p2}, Lcom/android/sprintmenu/Multimedia_Edit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 53
    .local v1, pref:Landroid/preference/Preference;
    sget-object v2, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

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

    .line 55
    if-eqz v1, :cond_50

    .line 58
    const v2, 0x7f050056

    :try_start_21
    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Multimedia_Edit;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 60
    sget-object v2, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Addr set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/sprintmenu/Multimedia_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Addr:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_42} :catch_5c

    .line 64
    :try_start_42
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v3, 0x19c

    iget-object v4, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Addr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V
    :try_end_4b
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_42 .. :try_end_4b} :catch_51
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_5c

    .line 71
    :try_start_4b
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    :cond_50
    :goto_50
    return-void

    .line 66
    :catch_51
    move-exception v0

    .line 68
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v2, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_5c

    goto :goto_50

    .line 121
    .end local v0           #e:Lcom/sprint/internal/SystemPropertiesException;
    :catch_5c
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Invalid Input, Try again"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 123
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Multimedia_Edit;->onCreate(Landroid/os/Bundle;)V

    goto :goto_50

    .line 74
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6d
    const v2, 0x7f050057

    :try_start_70
    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Multimedia_Edit;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 76
    sget-object v2, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Port set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/sprintmenu/Multimedia_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Port:Ljava/lang/String;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_91} :catch_5c

    .line 79
    :try_start_91
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v3, 0x19d

    iget-object v4, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Port:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V
    :try_end_9a
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_91 .. :try_end_9a} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9a} :catch_5c

    .line 86
    :try_start_9a
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpRTSP_Proxy_Port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 81
    :catch_a0
    move-exception v0

    .line 83
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v2, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 89
    .end local v0           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_ab
    const v2, 0x7f050058

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Multimedia_Edit;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 91
    sget-object v2, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Addr set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/sprintmenu/Multimedia_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Addr:Ljava/lang/String;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_cf} :catch_5c

    .line 94
    :try_start_cf
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v3, 0x19e

    iget-object v4, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Addr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V
    :try_end_d8
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_cf .. :try_end_d8} :catch_df
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d8} :catch_5c

    .line 101
    :try_start_d8
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_50

    .line 96
    :catch_df
    move-exception v0

    .line 98
    .restart local v0       #e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v2, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 104
    .end local v0           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_eb
    const v2, 0x7f050059

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Multimedia_Edit;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 106
    sget-object v2, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Port set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/sprintmenu/Multimedia_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Port:Ljava/lang/String;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_10f} :catch_5c

    .line 109
    :try_start_10f
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v3, 0x19f

    iget-object v4, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Port:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V
    :try_end_118
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_10f .. :try_end_118} :catch_11f
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_118} :catch_5c

    .line 116
    :try_start_118
    iget-object v2, p0, Lcom/android/sprintmenu/Multimedia_Edit;->tmpHTTPPD_Proxy_Port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_50

    .line 111
    :catch_11f
    move-exception v0

    .line 113
    .restart local v0       #e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v2, Lcom/android/sprintmenu/Multimedia_Edit;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_129} :catch_5c

    goto/16 :goto_50
.end method
