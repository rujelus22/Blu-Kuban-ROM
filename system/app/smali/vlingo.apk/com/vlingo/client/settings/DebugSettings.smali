.class public Lcom/vlingo/client/settings/DebugSettings;
.super Landroid/preference/PreferenceActivity;
.source "DebugSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private m_AppChannel:Landroid/preference/EditTextPreference;

.field private m_AppID:Landroid/preference/EditTextPreference;

.field private m_CarrierCountry:Landroid/preference/EditTextPreference;

.field private m_EL_URL:Landroid/preference/EditTextPreference;

.field private m_EMail_Simulation:Landroid/preference/EditTextPreference;

.field private m_FieldID:Landroid/preference/EditTextPreference;

.field private m_LS_URL:Landroid/preference/EditTextPreference;

.field private m_SG_URL:Landroid/preference/EditTextPreference;

.field private m_SMS_Simulation:Landroid/preference/EditTextPreference;

.field private m_ServerName:Landroid/preference/EditTextPreference;

.field private m_TTS_Network_Timeout:Landroid/preference/EditTextPreference;

.field private m_TTS_Simulation:Landroid/preference/EditTextPreference;

.field private m_TTS_URL:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->addPreferencesFromResource(I)V

    .line 66
    const-string v3, "tts_network_timeout"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_Network_Timeout:Landroid/preference/EditTextPreference;

    .line 67
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_Network_Timeout:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_22

    .line 68
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_Network_Timeout:Landroid/preference/EditTextPreference;

    const-string v4, "750"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 70
    :cond_22
    const-string v3, "SERVER_NAME"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_ServerName:Landroid/preference/EditTextPreference;

    .line 71
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_ServerName:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_ServerName:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    const-string v3, "TTS_URL"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_URL:Landroid/preference/EditTextPreference;

    .line 75
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getTTS_URL()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    const-string v3, "LOCALSEARCH_HOST_NAME"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_LS_URL:Landroid/preference/EditTextPreference;

    .line 80
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getLocalSearchServerName()Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_LS_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_LS_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    const-string v3, "EVENTLOG_HOST_NAME"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_EL_URL:Landroid/preference/EditTextPreference;

    .line 85
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getEventLogServerName()Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_EL_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_EL_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    const-string v3, "SUGGEST_HOST_NAME"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_SG_URL:Landroid/preference/EditTextPreference;

    .line 90
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getSuggestServerName()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_SG_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_SG_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    const-string v3, "APP_CHANNEL"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_AppChannel:Landroid/preference/EditTextPreference;

    .line 95
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_AppChannel:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplicationChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_AppChannel:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplicationChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    const-string v3, "APP_ID"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_AppID:Landroid/preference/EditTextPreference;

    .line 99
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_AppID:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_AppID:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 102
    const-string v3, "FIELD_ID"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_FieldID:Landroid/preference/EditTextPreference;

    .line 103
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_FieldID:Landroid/preference/EditTextPreference;

    const-string v4, "FIELD_ID"

    const-string v5, "vp_main"

    invoke-static {v4, v5}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_FieldID:Landroid/preference/EditTextPreference;

    const-string v4, "FIELD_ID"

    const-string v5, "vp_main"

    invoke-static {v4, v5}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    const-string v3, "CARRIER_COUNTRY"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_CarrierCountry:Landroid/preference/EditTextPreference;

    .line 107
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_CarrierCountry:Landroid/preference/EditTextPreference;

    const-string v4, "CARRIER_COUNTRY"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_CarrierCountry:Landroid/preference/EditTextPreference;

    const-string v4, "CARRIER_COUNTRY"

    const-string v5, "CARRIER_COUNTRY"

    invoke-static {v4, v5}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    const-string v3, "SMS_Simulation"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_SMS_Simulation:Landroid/preference/EditTextPreference;

    .line 111
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_SMS_Simulation:Landroid/preference/EditTextPreference;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 113
    const-string v3, "EMail_Simulation"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_EMail_Simulation:Landroid/preference/EditTextPreference;

    .line 114
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_EMail_Simulation:Landroid/preference/EditTextPreference;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 116
    const-string v3, "TTS_Simulation"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_Simulation:Landroid/preference/EditTextPreference;

    .line 117
    iget-object v3, p0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_Simulation:Landroid/preference/EditTextPreference;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 119
    const-string v3, "START_TTS_CACHE"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 120
    .local v1, ttsCachePref:Landroid/preference/Preference;
    new-instance v3, Lcom/vlingo/client/settings/DebugSettings$1;

    invoke-direct {v3, p0}, Lcom/vlingo/client/settings/DebugSettings$1;-><init>(Lcom/vlingo/client/settings/DebugSettings;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    new-instance v0, Lcom/vlingo/client/settings/DebugSettings$2;

    invoke-direct {v0, p0}, Lcom/vlingo/client/settings/DebugSettings$2;-><init>(Lcom/vlingo/client/settings/DebugSettings;)V

    .line 171
    .local v0, lmttPrefListener:Landroid/preference/Preference$OnPreferenceClickListener;
    const-string v3, "LMTT_CONTACTS_CLEAR_SERVERDB"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 172
    const-string v3, "LMTT_CONTACTS_CLEAR_CLIENTDB"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    const-string v3, "LMTT_CONTACTS_SENDLMTT"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    const-string v3, "LMTT_MUSIC_CLEAR_SERVERDB"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    const-string v3, "LMTT_MUSIC_CLEAR_CLIENTDB"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 176
    const-string v3, "LMTT_MUSIC_SENDLMTT"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    const-string v3, "Debug Settings"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/DebugSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v3

    const v4, 0x40000001

    invoke-virtual {v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI;->resume(I)V

    .line 180
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 185
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->resume(I)V

    .line 186
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 197
    invoke-virtual {p0}, Lcom/vlingo/client/settings/DebugSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 198
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 191
    invoke-virtual {p0}, Lcom/vlingo/client/settings/DebugSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 192
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 19
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 201
    const-string v13, "SERVER_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_ServerName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->setServerName(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_ServerName:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getServerName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    :cond_20
    :goto_20
    return-void

    .line 205
    :cond_21
    const-string v13, "LOCALSEARCH_HOST_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_42

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_LS_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->setLocalSearchServerName(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_LS_URL:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getLocalSearchServerName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 209
    :cond_42
    const-string v13, "SUGGEST_HOST_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_63

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_SG_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->setSuggestServerName(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_SG_URL:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getSuggestServerName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 213
    :cond_63
    const-string v13, "EVENTLOG_HOST_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_84

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_EL_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->setEventLogServerName(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_EL_URL:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getEventLogServerName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 217
    :cond_84
    const-string v13, "TTS_URL"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a6

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_URL:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vlingo/client/core/tts/TTSEngine;->setTTS_URL(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_URL:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getTTS_URL()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_20

    .line 221
    :cond_a6
    const-string v13, "APP_CHANNEL"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ce

    .line 222
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/AndroidApplicationAdaptor;

    .line 223
    .local v2, adaptor:Lcom/vlingo/client/AndroidApplicationAdaptor;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_AppChannel:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/vlingo/client/AndroidApplicationAdaptor;->setApplicationChannel(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_AppChannel:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Lcom/vlingo/client/AndroidApplicationAdaptor;->getApplicationChannel()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_20

    .line 226
    .end local v2           #adaptor:Lcom/vlingo/client/AndroidApplicationAdaptor;
    :cond_ce
    const-string v13, "APP_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_fa

    .line 227
    invoke-static {}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v13

    check-cast v13, Lcom/vlingo/client/asr/VlingoSoftwareMeta;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/settings/DebugSettings;->m_AppID:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->setAppId(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_AppID:Landroid/preference/EditTextPreference;

    invoke-static {}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->getAppId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_20

    .line 230
    :cond_fa
    const-string v13, "FIELD_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_117

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_FieldID:Landroid/preference/EditTextPreference;

    const-string v14, "vp_main"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_20

    .line 233
    :cond_117
    const-string v13, "CARRIER_COUNTRY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_134

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_CarrierCountry:Landroid/preference/EditTextPreference;

    const-string v14, ""

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_20

    .line 236
    :cond_134
    const-string v13, "MAIN_DICT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14e

    .line 237
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "MAIN_DICT"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 239
    .local v12, val:Z
    invoke-static {v12}, Lcom/vlingo/client/keyboard/NBestSuggest;->setMainDict(Z)V

    goto/16 :goto_20

    .line 241
    .end local v12           #val:Z
    :cond_14e
    const-string v13, "AUTO_KEYBOARD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_167

    .line 242
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "AUTO_KEYBOARD"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    sput-boolean v13, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_AutoKeyboard:Z

    goto/16 :goto_20

    .line 245
    :cond_167
    const-string v13, "TTS_TIMEING_LOG"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18e

    .line 246
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "TTS_TIMEING_LOG"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 248
    .local v6, log:Z
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v14

    if-eqz v6, :cond_18a

    const v13, 0x40000003

    :goto_185
    invoke-virtual {v14, v13}, Lcom/vlingo/client/safereader/SafeReaderAPI;->resume(I)V

    goto/16 :goto_20

    :cond_18a
    const v13, 0x40000004

    goto :goto_185

    .line 250
    .end local v6           #log:Z
    :cond_18e
    const-string v13, "tts_network_timeout"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c3

    .line 251
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "tts_network_timeout"

    const-string v15, "750"

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, m_TTS_Network_Timeout:Ljava/lang/String;
    :try_start_1a4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 255
    .local v11, ttsTimeout:I
    if-lez v11, :cond_20

    .line 256
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v11}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setIntFeature(II)V
    :try_end_1b2
    .catch Ljava/lang/NumberFormatException; {:try_start_1a4 .. :try_end_1b2} :catch_1b4

    goto/16 :goto_20

    .line 258
    .end local v11           #ttsTimeout:I
    :catch_1b4
    move-exception v5

    .line 259
    .local v5, ex:Ljava/lang/NumberFormatException;
    const-string v13, "NumberFormatException"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_20

    .line 262
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    .end local v9           #m_TTS_Network_Timeout:Ljava/lang/String;
    :cond_1c3
    const-string v13, "tones_when_spotting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1dd

    .line 263
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "tones_when_spotting"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 265
    .local v10, playTone:Z
    invoke-static {v10}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->setTonePlayWhenSpotting(Z)V

    goto/16 :goto_20

    .line 267
    .end local v10           #playTone:Z
    :cond_1dd
    const-string v13, "silence_detect_use"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ec

    .line 268
    invoke-static {}, Lcom/vlingo/client/core/recognizer/Recognizer;->setAutoEndpointingFromSettings()V

    goto/16 :goto_20

    .line 270
    :cond_1ec
    const-string v13, "silence_detect_use_car"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1fb

    .line 271
    invoke-static {}, Lcom/vlingo/client/core/recognizer/Recognizer;->setAutoEndpointingFromSettings()V

    goto/16 :goto_20

    .line 273
    :cond_1fb
    const-string v13, "timinglog_enabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_215

    .line 274
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "timinglog_enabled"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 276
    .local v8, logServer:Z
    invoke-static {v8}, Lcom/vlingo/client/core/logging/LogServerMgr;->setLogServer(Z)V

    goto/16 :goto_20

    .line 278
    .end local v8           #logServer:Z
    :cond_215
    const-string v13, "serverlog_enabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22f

    .line 279
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "serverlog_enabled"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 281
    .restart local v8       #logServer:Z
    invoke-static {v8}, Lcom/vlingo/client/core/logging/LogServerMgr;->setLogServer(Z)V

    goto/16 :goto_20

    .line 283
    .end local v8           #logServer:Z
    :cond_22f
    const-string v13, "audiofilelog_enabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24c

    .line 284
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "audiofilelog_enabled"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 286
    .local v7, logAudio:Z
    invoke-static {v7}, Ljavax/microedition/media/control/RecordControl;->SetLogWaveformData(Z)V

    .line 287
    invoke-static {v7}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->SetDebugLogging(Z)V

    goto/16 :goto_20

    .line 289
    .end local v7           #logAudio:Z
    :cond_24c
    const-string v13, "SMS_Simulation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27c

    .line 291
    :try_start_256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_SMS_Simulation:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 292
    .local v3, count:I
    if-lez v3, :cond_20

    .line 293
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v13

    const/high16 v14, 0x1000

    or-int/2addr v14, v3

    invoke-virtual {v13, v14}, Lcom/vlingo/client/safereader/SafeReaderAPI;->resume(I)V
    :try_end_26e
    .catch Ljava/lang/NumberFormatException; {:try_start_256 .. :try_end_26e} :catch_270

    goto/16 :goto_20

    .line 294
    .end local v3           #count:I
    :catch_270
    move-exception v4

    .line 295
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v13, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 298
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_27c
    const-string v13, "EMail_Simulation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2ac

    .line 300
    :try_start_286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_EMail_Simulation:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 301
    .restart local v3       #count:I
    if-lez v3, :cond_20

    .line 302
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v13

    const/high16 v14, 0x2000

    or-int/2addr v14, v3

    invoke-virtual {v13, v14}, Lcom/vlingo/client/safereader/SafeReaderAPI;->resume(I)V
    :try_end_29e
    .catch Ljava/lang/NumberFormatException; {:try_start_286 .. :try_end_29e} :catch_2a0

    goto/16 :goto_20

    .line 303
    .end local v3           #count:I
    :catch_2a0
    move-exception v4

    .line 304
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v13, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 307
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_2ac
    const-string v13, "TTS_Simulation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 309
    :try_start_2b6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/settings/DebugSettings;->m_TTS_Simulation:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 310
    .restart local v3       #count:I
    if-lez v3, :cond_20

    .line 311
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v13

    const/high16 v14, -0x8000

    or-int/2addr v14, v3

    invoke-virtual {v13, v14}, Lcom/vlingo/client/safereader/SafeReaderAPI;->resume(I)V
    :try_end_2ce
    .catch Ljava/lang/NumberFormatException; {:try_start_2b6 .. :try_end_2ce} :catch_2d0

    goto/16 :goto_20

    .line 312
    .end local v3           #count:I
    :catch_2d0
    move-exception v4

    .line 313
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v13, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20
.end method
