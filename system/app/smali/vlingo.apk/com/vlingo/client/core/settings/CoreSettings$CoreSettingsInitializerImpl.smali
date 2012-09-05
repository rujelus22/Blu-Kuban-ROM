.class public final Lcom/vlingo/client/core/settings/CoreSettings$CoreSettingsInitializerImpl;
.super Ljava/lang/Object;
.source "CoreSettings.java"

# interfaces
.implements Lcom/vlingo/client/core/settings/SettingsInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/settings/CoreSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoreSettingsInitializerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeSettings(Lcom/vlingo/client/core/settings/SettingsRepository;)V
    .registers 9
    .parameter "repo"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 176
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingFactory;->getInstance()Lcom/vlingo/client/core/settings/SettingFactory;

    move-result-object v0

    .line 177
    .local v0, sf:Lcom/vlingo/client/core/settings/SettingFactory;
    const-string v1, "bluetooth.enabled"

    const-string v2, "Bluetooth Support"

    invoke-virtual {v0, v1, v3, v2}, Lcom/vlingo/client/core/settings/SettingFactory;->newBooleanSetting(Ljava/lang/String;ZLjava/lang/String;)Lcom/vlingo/client/core/settings/BooleanSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 178
    const-string v1, "pref.internal.asr_keepalive"

    const-string v2, "ASR Keep-Alive"

    invoke-virtual {v0, v1, v6, v2}, Lcom/vlingo/client/core/settings/SettingFactory;->newBooleanSetting(Ljava/lang/String;ZLjava/lang/String;)Lcom/vlingo/client/core/settings/BooleanSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 179
    const-string v1, "pref.internal.detailed_timings"

    const-string v2, "Detailed ASR Timings"

    invoke-virtual {v0, v1, v3, v2}, Lcom/vlingo/client/core/settings/SettingFactory;->newBooleanSetting(Ljava/lang/String;ZLjava/lang/String;)Lcom/vlingo/client/core/settings/BooleanSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 180
    const-string v1, "appstate.last_conn_test_passed"

    invoke-virtual {v0, v1, v6, v5}, Lcom/vlingo/client/core/settings/SettingFactory;->newBooleanSetting(Ljava/lang/String;ZLjava/lang/String;)Lcom/vlingo/client/core/settings/BooleanSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 181
    const-string v1, "pref.location.awareness"

    const-string v2, "Location Awareness"

    invoke-virtual {v0, v1, v3, v2}, Lcom/vlingo/client/core/settings/SettingFactory;->newBooleanSetting(Ljava/lang/String;ZLjava/lang/String;)Lcom/vlingo/client/core/settings/BooleanSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 182
    const-string v1, "pref.autopunctuation"

    const-string v2, "Auto-Punctuation"

    invoke-virtual {v0, v1, v3, v2}, Lcom/vlingo/client/core/settings/SettingFactory;->newBooleanSetting(Ljava/lang/String;ZLjava/lang/String;)Lcom/vlingo/client/core/settings/BooleanSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 184
    const-string v1, "behavior.alert_tones"

    sget-object v2, Lcom/vlingo/client/core/settings/CoreSettings;->alertTonesEnum:[[Ljava/lang/String;

    const-string v3, "behavior.alert_tones.medium"

    const-string v4, "Alert Tones"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/settings/SettingFactory;->newEnumSetting(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/EnumSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 186
    const-string v1, "network.connection_type"

    sget-object v2, Lcom/vlingo/client/core/settings/CoreSettings;->connectionTypeEnum:[[Ljava/lang/String;

    const-string v3, "network.connection_type.directtcp"

    const-string v4, "Connection Type"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/settings/SettingFactory;->newEnumSetting(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/EnumSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 187
    const-string v1, "behavior.voice_key"

    sget-object v2, Lcom/vlingo/client/core/settings/CoreSettings;->asrKeyNames:[[Ljava/lang/String;

    const-string v3, "behavior.voice_key.left"

    const-string v4, "Voice Key"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/settings/SettingFactory;->newEnumSetting(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/EnumSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 188
    const-string v1, "behavior.asr_key_active"

    sget-object v2, Lcom/vlingo/client/core/settings/CoreSettings;->asrKeyBehavior:[[Ljava/lang/String;

    const-string v3, "behavior.asr_key_active.always"

    const-string v4, "Voice Key Behavior"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/settings/SettingFactory;->newEnumSetting(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/EnumSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 189
    const-string v1, "behavior.led"

    sget-object v2, Lcom/vlingo/client/core/settings/CoreSettings;->ledRecordBehavior:[[Ljava/lang/String;

    const-string v3, "behavior.led.red_solid"

    const-string v4, "LED while recording"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/settings/SettingFactory;->newEnumSetting(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/EnumSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 190
    const-string v1, "tts.volume"

    sget-object v2, Lcom/vlingo/client/core/settings/CoreSettings;->ttsVolumeEnum:[[Ljava/lang/String;

    const-string v3, "tts.volume.normal"

    const-string v4, "Text To Speech (TTS) Volume"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/settings/SettingFactory;->newEnumSetting(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/EnumSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 191
    const-string v1, "tts.voice"

    sget-object v2, Lcom/vlingo/client/core/settings/CoreSettings;->ttsVoiceEnum:[[Ljava/lang/String;

    const-string v3, "tts.voice.female"

    const-string v4, "TTS Voice"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/settings/SettingFactory;->newEnumSetting(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/EnumSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 192
    const-string v1, "pref.language"

    sget-object v2, Lcom/vlingo/client/core/settings/CoreSettings;->languageEnum:[[Ljava/lang/String;

    const-string v3, "pref.language.en_us"

    const-string v4, "Language"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/settings/SettingFactory;->newEnumSetting(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/EnumSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 194
    const-string v1, "settings.internal.version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v5}, Lcom/vlingo/client/core/settings/SettingFactory;->newStringSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/StringSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 195
    const-string v1, "appstate.working_apn"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v5}, Lcom/vlingo/client/core/settings/SettingFactory;->newStringSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/StringSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 196
    const-string v1, "appstate.network_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v5}, Lcom/vlingo/client/core/settings/SettingFactory;->newStringSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/StringSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 198
    const-string v1, "tts.playback"

    sget-object v2, Lcom/vlingo/client/core/settings/CoreSettings;->ttsPlaybackEnum:[[Ljava/lang/String;

    const-string v3, "tts.playback.brief"

    const-string v4, "TTS Playback"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/settings/SettingFactory;->newEnumSetting(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/EnumSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 199
    const-string v1, "tts.playback.bt"

    sget-object v2, Lcom/vlingo/client/core/settings/CoreSettings;->ttsPlaybackEnumBt:[[Ljava/lang/String;

    const-string v3, "tts.playback.bt.brief"

    const-string v4, "TTS Playback for Bluetooth"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/settings/SettingFactory;->newEnumSetting(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/settings/EnumSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 201
    const-string v1, "behavior.bluetooth.vibrate.timing"

    const/16 v2, 0x352

    const-string v3, "Bluetooth Vibrate Timing"

    invoke-virtual {v0, v1, v2, v3}, Lcom/vlingo/client/core/settings/SettingFactory;->newIntSetting(Ljava/lang/String;ILjava/lang/String;)Lcom/vlingo/client/core/settings/IntSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 203
    const-string v1, "browser.force_bis"

    const-string v2, "Force BIS in browser"

    invoke-virtual {v0, v1, v6, v2}, Lcom/vlingo/client/core/settings/SettingFactory;->newBooleanSetting(Ljava/lang/String;ZLjava/lang/String;)Lcom/vlingo/client/core/settings/BooleanSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->registerSetting(Lcom/vlingo/client/core/settings/Setting;)V

    .line 204
    return-void
.end method
