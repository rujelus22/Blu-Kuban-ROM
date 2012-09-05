.class public Lcom/vlingo/client/settings/SettingsScreen;
.super Lcom/vlingo/client/ui/VLPreferenceActivity;
.source "SettingsScreen.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final ACTION_SHOW_SOCIAL_SETTING:Ljava/lang/String; = "com.vlingo.client.settings.SOCIAL_SETTING"

.field public static final ACTION_SHOW_VOICE_TALK_SETTING:Ljava/lang/String; = "com.vlingo.client.settings.VOICE_TALK_SETTINGS"

.field public static final EXTRA_SHOW_CHILD_SCREEN:Ljava/lang/String; = "child_screen"

.field public static final EXTRA_VOICE_COMMAND:Ljava/lang/String; = "EXTRA_VOICE_COMMAND"

.field private static final MAX_CUSTOM_PROMPT_LENGTH:I = 0x6e

.field public static final MAX_CUSTOM_PROMPT_LENGTH_DISPLAY:I = 0x3c

.field private static alphaPattern:Ljava/util/regex/Pattern;


# instance fields
.field private greyDisabled:Z

.field private homePromptAutoReset:Z

.field private langChanged:Z

.field private m_CarModePrompts:Landroid/preference/CheckBoxPreference;

.field private m_EmailReadback:Landroid/preference/CheckBoxPreference;

.field private m_SMSReadback:Landroid/preference/CheckBoxPreference;

.field private m_SafeReaderReadMessage:Landroid/preference/CheckBoxPreference;

.field private m_ShakeToSkip:Landroid/preference/CheckBoxPreference;

.field private m_TTSSetting:Landroid/preference/CheckBoxPreference;

.field private m_about:Landroid/preference/Preference;

.field private m_alreadyTTSedWakeupWord:Z

.field private m_autoDial:Landroid/preference/ListPreference;

.field private m_autoPunctuation:Landroid/preference/CheckBoxPreference;

.field private m_carModeHomeAddress:Landroid/preference/EditTextPreference;

.field private m_carModeStartupTtsPrompt:Landroid/preference/EditTextPreference;

.field private m_carModeTtsPrompt:Landroid/preference/EditTextPreference;

.field private m_emailAccounts:Landroid/preference/Preference;

.field private m_facebook:Lcom/vlingo/client/settings/ImagePreference;

.field private m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

.field private m_language:Landroid/preference/ListPreference;

.field private m_launchVoicetalk:Landroid/preference/CheckBoxPreference;

.field private m_listenOverBluetooth:Landroid/preference/CheckBoxPreference;

.field private m_motionSettings:Landroid/preference/Preference;

.field private m_safereaderEmailPollInterval:Landroid/preference/ListPreference;

.field private m_twitter:Lcom/vlingo/client/settings/ImagePreference;

.field private m_useNetworkTTS:Landroid/preference/CheckBoxPreference;

.field private m_uuid:Landroid/preference/Preference;

.field private m_voiceCommandHelp:Landroid/preference/Preference;

.field private m_voiceTalkHelp:Landroid/preference/Preference;

.field private m_wakeUpWord:Landroid/preference/CheckBoxPreference;

.field private m_webSearchEngine:Landroid/preference/ListPreference;

.field private startupPromptAutoReset:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 65
    const-string v0, ".*\\p{Alnum}.*"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/settings/SettingsScreen;->alphaPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLPreferenceActivity;-><init>()V

    .line 96
    iput-boolean v0, p0, Lcom/vlingo/client/settings/SettingsScreen;->homePromptAutoReset:Z

    .line 97
    iput-boolean v0, p0, Lcom/vlingo/client/settings/SettingsScreen;->startupPromptAutoReset:Z

    .line 98
    iput-boolean v0, p0, Lcom/vlingo/client/settings/SettingsScreen;->langChanged:Z

    .line 99
    iput-boolean v0, p0, Lcom/vlingo/client/settings/SettingsScreen;->greyDisabled:Z

    .line 104
    iput-boolean v0, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_alreadyTTSedWakeupWord:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/settings/SettingsScreen;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeTtsPrompt:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/settings/SettingsScreen;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeStartupTtsPrompt:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/settings/SettingsScreen;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeHomeAddress:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private containsNoAlphaNumeric(Ljava/lang/String;)Z
    .registers 4
    .parameter "promptString"

    .prologue
    .line 821
    sget-object v0, Lcom/vlingo/client/settings/SettingsScreen;->alphaPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static getSettingsTitleResourceId()I
    .registers 2

    .prologue
    .line 112
    const v0, 0x7f090291

    .line 113
    .local v0, settingsLabelResourceId:I
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 114
    const v0, 0x7f09046d

    .line 116
    :cond_c
    return v0
.end method

.method private getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;
    .registers 2

    .prologue
    .line 360
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->useSCOStream()Z

    move-result v0

    invoke-static {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->get(Z)Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .prologue
    .line 792
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 793
    invoke-super {p0}, Lcom/vlingo/client/ui/VLPreferenceActivity;->onBackPressed()V

    .line 794
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->setVolumeControlStream(I)V

    .line 127
    const v10, 0x7f050013

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->addPreferencesFromResource(I)V

    .line 129
    invoke-static {}, Lcom/vlingo/client/settings/SettingsScreen;->getSettingsTitleResourceId()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 132
    const-string v10, "com.vlingo.client.settings.SOCIAL_SETTING"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2bb

    .line 133
    const-string v10, "social_settings"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 134
    .local v6, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0, v6}, Lcom/vlingo/client/settings/SettingsScreen;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 142
    .end local v6           #screen:Landroid/preference/PreferenceScreen;
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "child_screen"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, subscreen:Ljava/lang/String;
    if-eqz v7, :cond_5e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5e

    .line 144
    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 145
    .restart local v6       #screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0, v6}, Lcom/vlingo/client/settings/SettingsScreen;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 149
    .end local v6           #screen:Landroid/preference/PreferenceScreen;
    :cond_5e
    const-string v10, "language"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    .line 151
    const-string v10, "tts_setting"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_TTSSetting:Landroid/preference/CheckBoxPreference;

    .line 152
    const-string v10, "web_search_engine"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_webSearchEngine:Landroid/preference/ListPreference;

    .line 153
    const-string v10, "auto_dial"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_autoDial:Landroid/preference/ListPreference;

    .line 154
    const-string v10, "safereader_email_poll_interval"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_safereaderEmailPollInterval:Landroid/preference/ListPreference;

    .line 155
    const-string v10, "safereader_email_accounts"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_emailAccounts:Landroid/preference/Preference;

    .line 156
    const-string v10, "shake_to_skip"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_ShakeToSkip:Landroid/preference/CheckBoxPreference;

    .line 157
    const-string v10, "safereader_sms_enabled"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_SMSReadback:Landroid/preference/CheckBoxPreference;

    .line 158
    const-string v10, "safereader_email_enabled"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_EmailReadback:Landroid/preference/CheckBoxPreference;

    .line 159
    const-string v10, "tts_carmode_prompt"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_CarModePrompts:Landroid/preference/CheckBoxPreference;

    .line 160
    const-string v10, "tts_carmode_home_prompt"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeTtsPrompt:Landroid/preference/EditTextPreference;

    .line 161
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeTtsPrompt:Landroid/preference/EditTextPreference;

    if-eqz v10, :cond_d8

    .line 162
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeTtsPrompt:Landroid/preference/EditTextPreference;

    new-instance v11, Lcom/vlingo/client/settings/SettingsScreen$1;

    invoke-direct {v11, p0}, Lcom/vlingo/client/settings/SettingsScreen$1;-><init>(Lcom/vlingo/client/settings/SettingsScreen;)V

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    :cond_d8
    const-string v10, "tts_carmode_startup_prompt"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeStartupTtsPrompt:Landroid/preference/EditTextPreference;

    .line 178
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeStartupTtsPrompt:Landroid/preference/EditTextPreference;

    if-eqz v10, :cond_f0

    .line 179
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeStartupTtsPrompt:Landroid/preference/EditTextPreference;

    new-instance v11, Lcom/vlingo/client/settings/SettingsScreen$2;

    invoke-direct {v11, p0}, Lcom/vlingo/client/settings/SettingsScreen$2;-><init>(Lcom/vlingo/client/settings/SettingsScreen;)V

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    :cond_f0
    const-string v10, "car_nav_home_address"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeHomeAddress:Landroid/preference/EditTextPreference;

    .line 195
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeHomeAddress:Landroid/preference/EditTextPreference;

    if-eqz v10, :cond_108

    .line 196
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeHomeAddress:Landroid/preference/EditTextPreference;

    new-instance v11, Lcom/vlingo/client/settings/SettingsScreen$3;

    invoke-direct {v11, p0}, Lcom/vlingo/client/settings/SettingsScreen$3;-><init>(Lcom/vlingo/client/settings/SettingsScreen;)V

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 211
    :cond_108
    const-string v10, "car_word_spotter_enabled"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_wakeUpWord:Landroid/preference/CheckBoxPreference;

    .line 212
    const-string v10, "use_network_tts"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_useNetworkTTS:Landroid/preference/CheckBoxPreference;

    .line 213
    const-string v10, "car_safereader_read_message"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_SafeReaderReadMessage:Landroid/preference/CheckBoxPreference;

    .line 214
    const-string v10, "listen_over_bluetooth"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_listenOverBluetooth:Landroid/preference/CheckBoxPreference;

    .line 215
    const-string v10, "auto_punctuation"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_autoPunctuation:Landroid/preference/CheckBoxPreference;

    .line 216
    const-string v10, "car_word_spotter_motion"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_motionSettings:Landroid/preference/Preference;

    .line 217
    const-string v10, "help_voice_command"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_voiceCommandHelp:Landroid/preference/Preference;

    .line 218
    const-string v10, "help_voice_talk"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_voiceTalkHelp:Landroid/preference/Preference;

    .line 219
    const-string v10, "help_about"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_about:Landroid/preference/Preference;

    .line 220
    const-string v10, "uuid"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_uuid:Landroid/preference/Preference;

    .line 226
    const-string v10, "launch_voicetalk"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_launchVoicetalk:Landroid/preference/CheckBoxPreference;

    .line 227
    const/4 v5, 0x1

    .line 230
    .local v5, removeDoubleClickLaunchPref:Z
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v10

    if-eqz v10, :cond_2d7

    .line 231
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    if-eqz v10, :cond_187

    .line 232
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    const v11, 0x7f070029

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 233
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    const v11, 0x7f070008

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 235
    :cond_187
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_webSearchEngine:Landroid/preference/ListPreference;

    if-eqz v10, :cond_19b

    .line 236
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_webSearchEngine:Landroid/preference/ListPreference;

    const v11, 0x7f070002

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 237
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_webSearchEngine:Landroid/preference/ListPreference;

    const v11, 0x7f070003

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 260
    :cond_19b
    :goto_19b
    if-eqz v5, :cond_1ac

    .line 261
    const-string v10, "general_settings"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 262
    .local v3, mCategory:Landroid/preference/PreferenceCategory;
    if-eqz v3, :cond_1ac

    .line 263
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_launchVoicetalk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 267
    .end local v3           #mCategory:Landroid/preference/PreferenceCategory;
    :cond_1ac
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_uuid:Landroid/preference/Preference;

    if-eqz v10, :cond_1b9

    .line 268
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_uuid:Landroid/preference/Preference;

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getUUID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    :cond_1b9
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_TTSSetting:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_1c8

    .line 272
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_TTSSetting:Landroid/preference/CheckBoxPreference;

    sget-boolean v11, Lcom/vlingo/client/settings/Settings;->s_TTS_Enabled:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 275
    :cond_1c8
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_emailAccounts:Landroid/preference/Preference;

    if-eqz v10, :cond_1d8

    .line 276
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_emailAccounts:Landroid/preference/Preference;

    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;

    invoke-direct {v11, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 279
    :cond_1d8
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_voiceCommandHelp:Landroid/preference/Preference;

    if-eqz v10, :cond_1ee

    .line 281
    new-instance v1, Landroid/content/Intent;

    const-class v10, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-direct {v1, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .local v1, i:Landroid/content/Intent;
    const-string v10, "EXTRA_VOICE_COMMAND"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_voiceCommandHelp:Landroid/preference/Preference;

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 286
    .end local v1           #i:Landroid/content/Intent;
    :cond_1ee
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_voiceTalkHelp:Landroid/preference/Preference;

    if-eqz v10, :cond_1fe

    .line 287
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_voiceTalkHelp:Landroid/preference/Preference;

    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/vlingo/client/car/CarHelpScreen;

    invoke-direct {v11, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 290
    :cond_1fe
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_about:Landroid/preference/Preference;

    if-eqz v10, :cond_20e

    .line 291
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_about:Landroid/preference/Preference;

    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/vlingo/client/help/AboutScreen;

    invoke-direct {v11, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 294
    :cond_20e
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_autoPunctuation:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_21d

    .line 295
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_autoPunctuation:Landroid/preference/CheckBoxPreference;

    const/16 v11, 0x10

    invoke-static {v11}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 298
    :cond_21d
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_motionSettings:Landroid/preference/Preference;

    if-eqz v10, :cond_24b

    .line 300
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xe

    if-ge v10, v11, :cond_324

    .line 301
    const-string v10, "SANDI-1132"

    const-string v11, "motion settings for GINGERBREAD"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, intent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.sec.android.motions.settings"

    const-string v12, "com.sec.android.motions.settings.MotionsSettings"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 304
    const/high16 v10, 0x1020

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 305
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_motionSettings:Landroid/preference/Preference;

    invoke-virtual {v10, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 315
    .end local v2           #intent:Landroid/content/Intent;
    :cond_24b
    :goto_24b
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isGaudiPhone()Z

    move-result v10

    if-eqz v10, :cond_33f

    .line 316
    const-string v10, "launch_voicetalk"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_launchVoicetalk:Landroid/preference/CheckBoxPreference;

    .line 317
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_launchVoicetalk:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_26e

    .line 318
    const-string v10, "general_settings"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 319
    .restart local v3       #mCategory:Landroid/preference/PreferenceCategory;
    if-eqz v3, :cond_26e

    .line 320
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_launchVoicetalk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    .end local v3           #mCategory:Landroid/preference/PreferenceCategory;
    :cond_26e
    :goto_26e
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSettingUI()V

    .line 330
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSocialUI()V

    .line 331
    const/16 v10, 0xf

    invoke-static {v10}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_29a

    .line 332
    const-string v10, "vlingo_car_settings"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    .line 333
    .local v8, voiceTalkSettings:Landroid/preference/PreferenceScreen;
    const-string v10, "car_nav_settings"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 334
    .local v4, p:Landroid/preference/PreferenceCategory;
    if-eqz v4, :cond_29a

    .line 335
    iget-boolean v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->greyDisabled:Z

    if-eqz v10, :cond_35c

    .line 336
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 337
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->setShouldDisableView(Z)V

    .line 348
    .end local v4           #p:Landroid/preference/PreferenceCategory;
    .end local v8           #voiceTalkSettings:Landroid/preference/PreferenceScreen;
    :cond_29a
    :goto_29a
    const/16 v10, 0x14

    invoke-static {v10}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_2b1

    .line 349
    const-string v10, "car_wakeup"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 350
    .local v9, wakeupPrefCategory:Landroid/preference/PreferenceCategory;
    if-eqz v9, :cond_2b1

    .line 351
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_motionSettings:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    .end local v9           #wakeupPrefCategory:Landroid/preference/PreferenceCategory;
    :cond_2b1
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v10

    const-string v11, "settings"

    invoke-virtual {v10, v11}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 357
    return-void

    .line 136
    .end local v5           #removeDoubleClickLaunchPref:Z
    .end local v7           #subscreen:Ljava/lang/String;
    :cond_2bb
    const-string v10, "com.vlingo.client.settings.VOICE_TALK_SETTINGS"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 137
    const-string v10, "vlingo_car_settings"

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 138
    .restart local v6       #screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/vlingo/client/settings/SettingsScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0, v6}, Lcom/vlingo/client/settings/SettingsScreen;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_3c

    .line 241
    .end local v6           #screen:Landroid/preference/PreferenceScreen;
    .restart local v5       #removeDoubleClickLaunchPref:Z
    .restart local v7       #subscreen:Ljava/lang/String;
    :cond_2d7
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isJKBuild()Z

    move-result v10

    if-eqz v10, :cond_308

    .line 242
    const/4 v5, 0x0

    .line 244
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    if-eqz v10, :cond_2f2

    .line 245
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    const v11, 0x7f07002a

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 246
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    const v11, 0x7f070009

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 248
    :cond_2f2
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_webSearchEngine:Landroid/preference/ListPreference;

    if-eqz v10, :cond_19b

    .line 249
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_webSearchEngine:Landroid/preference/ListPreference;

    const v11, 0x7f070004

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 250
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_webSearchEngine:Landroid/preference/ListPreference;

    const v11, 0x7f070005

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_19b

    .line 253
    :cond_308
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isRussianBuild()Z

    move-result v10

    if-eqz v10, :cond_19b

    .line 254
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    if-eqz v10, :cond_19b

    .line 255
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    const v11, 0x7f07002b

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 256
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    const v11, 0x7f07000a

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_19b

    .line 307
    :cond_324
    const-string v10, "SANDI-1132"

    const-string v11, "motion settings for ICE CREAM SANDWICH"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.settings.MOTION_SETTINGS"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v2       #intent:Landroid/content/Intent;
    const v10, 0x8000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 310
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_motionSettings:Landroid/preference/Preference;

    invoke-virtual {v10, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_24b

    .line 324
    .end local v2           #intent:Landroid/content/Intent;
    :cond_33f
    iget-object v10, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_launchVoicetalk:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_26e

    if-nez v5, :cond_26e

    .line 325
    iget-object v11, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_launchVoicetalk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "double_tab_launch"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_35a

    const/4 v10, 0x1

    :goto_355
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_26e

    :cond_35a
    const/4 v10, 0x0

    goto :goto_355

    .line 339
    .restart local v4       #p:Landroid/preference/PreferenceCategory;
    .restart local v8       #voiceTalkSettings:Landroid/preference/PreferenceScreen;
    :cond_35c
    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v10

    if-nez v10, :cond_29a

    .line 340
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 341
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->setShouldDisableView(Z)V

    goto/16 :goto_29a
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 591
    invoke-super {p0}, Lcom/vlingo/client/ui/VLPreferenceActivity;->onPause()V

    .line 592
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 364
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/ui/VLPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 365
    .local v0, res:Z
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "social_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 366
    new-instance v1, Lcom/vlingo/client/settings/SettingsScreen$4;

    invoke-direct {v1, p0}, Lcom/vlingo/client/settings/SettingsScreen$4;-><init>(Lcom/vlingo/client/settings/SettingsScreen;)V

    invoke-static {v1}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 373
    :cond_18
    iget-object v1, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_launchVoicetalk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 374
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    iget-object v1, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_launchVoicetalk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    :goto_2f
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    :cond_32
    return v0

    .line 374
    :cond_33
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 581
    invoke-super {p0}, Lcom/vlingo/client/ui/VLPreferenceActivity;->onResume()V

    .line 582
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSettingUI()V

    .line 583
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSocialUI()V

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_alreadyTTSedWakeupWord:Z

    .line 585
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 586
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 11
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const v7, 0x7f09021d

    const/16 v6, 0x6e

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 595
    const-string v2, "auto_dial"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 596
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSettingUI()V

    .line 789
    :cond_12
    :goto_12
    return-void

    .line 598
    :cond_13
    const-string v2, "language"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 599
    iget-boolean v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->langChanged:Z

    if-nez v2, :cond_12

    .line 600
    iput-boolean v5, p0, Lcom/vlingo/client/settings/SettingsScreen;->langChanged:Z

    .line 601
    const-string v2, "language"

    const-string v3, "en-US"

    invoke-static {v2, v3}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, language:Ljava/lang/String;
    iput-boolean v5, p0, Lcom/vlingo/client/settings/SettingsScreen;->homePromptAutoReset:Z

    .line 604
    iput-boolean v5, p0, Lcom/vlingo/client/settings/SettingsScreen;->startupPromptAutoReset:Z

    .line 605
    invoke-static {v0, v5}, Lcom/vlingo/client/settings/Settings;->setLanguage(Ljava/lang/String;Z)V

    .line 607
    new-instance v2, Lcom/vlingo/client/settings/SettingsScreen$5;

    invoke-direct {v2, p0}, Lcom/vlingo/client/settings/SettingsScreen$5;-><init>(Lcom/vlingo/client/settings/SettingsScreen;)V

    const-wide/16 v3, 0xfa

    invoke-static {v2, v3, v4}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 613
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->sendLanguageUpdatedLMTTRequest()V

    .line 616
    invoke-static {v0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->wakeupWordChanged(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->finish()V

    .line 620
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/vlingo/client/settings/SettingsScreen;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/vlingo/client/settings/SettingsScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_12

    .line 623
    .end local v0           #language:Ljava/lang/String;
    :cond_4e
    const-string v2, "web_search_engine"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 624
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSettingUI()V

    goto :goto_12

    .line 626
    :cond_5a
    const-string v2, "tts_carmode_home_prompt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 627
    iget-boolean v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->homePromptAutoReset:Z

    if-eqz v2, :cond_69

    .line 628
    iput-boolean v4, p0, Lcom/vlingo/client/settings/SettingsScreen;->homePromptAutoReset:Z

    goto :goto_12

    .line 631
    :cond_69
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "car-settings-main-prompt"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSettingUI()V

    .line 633
    const-string v2, "tts_carmode_home_prompt"

    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->getHomePromptDefault()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, prompt:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_e2

    .line 635
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    .line 637
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 638
    const-string v2, "tts_carmode_home_prompt"

    invoke-static {v2, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v2, "tts_carmode_home_prompt_dirty"

    invoke-static {v2, v4}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 640
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeTtsPrompt:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 643
    :cond_a8
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b6

    invoke-direct {p0, v1}, Lcom/vlingo/client/settings/SettingsScreen;->containsNoAlphaNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 646
    :cond_b6
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 647
    const-string v2, "tts_carmode_home_prompt"

    invoke-static {v2, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v2, "tts_carmode_home_prompt_dirty"

    invoke-static {v2, v5}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 649
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeTtsPrompt:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 652
    :cond_cf
    const-string v2, "tts_carmode_home_prompt_dirty"

    invoke-static {v2, v4}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 653
    invoke-static {v1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->setCarModeHomePrompt(Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v2, v3}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto/16 :goto_12

    .line 658
    :cond_e2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090383

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0903cd

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090321

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/vlingo/client/settings/SettingsScreen$6;

    invoke-direct {v4, p0}, Lcom/vlingo/client/settings/SettingsScreen$6;-><init>(Lcom/vlingo/client/settings/SettingsScreen;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 666
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 667
    const-string v2, "tts_carmode_home_prompt"

    invoke-static {v2, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v2, "tts_carmode_home_prompt_dirty"

    invoke-static {v2, v5}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 669
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeTtsPrompt:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 673
    .end local v1           #prompt:Ljava/lang/String;
    :cond_129
    const-string v2, "tts_carmode_startup_prompt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 674
    iget-boolean v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->startupPromptAutoReset:Z

    if-eqz v2, :cond_139

    .line 675
    iput-boolean v4, p0, Lcom/vlingo/client/settings/SettingsScreen;->startupPromptAutoReset:Z

    goto/16 :goto_12

    .line 678
    :cond_139
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSettingUI()V

    .line 679
    const-string v2, "tts_carmode_startup_prompt"

    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->getStartupPromptDefault()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 680
    .restart local v1       #prompt:Ljava/lang/String;
    invoke-static {v1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->setStartupPrompt(Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->STARTUP_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v2, v3}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto/16 :goto_12

    .line 684
    .end local v1           #prompt:Ljava/lang/String;
    :cond_154
    const-string v2, "car_nav_home_address"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a6

    .line 685
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSettingUI()V

    .line 687
    const-string v2, "car_nav_home_address"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    .restart local v1       #prompt:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_12

    .line 689
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18a

    .line 691
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 692
    const-string v2, "car_nav_home_address"

    invoke-static {v2, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeHomeAddress:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 696
    :cond_18a
    if-eqz v1, :cond_198

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_198

    invoke-direct {p0, v1}, Lcom/vlingo/client/settings/SettingsScreen;->containsNoAlphaNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 699
    :cond_198
    const-string v2, "car_nav_home_address"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeHomeAddress:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 704
    .end local v1           #prompt:Ljava/lang/String;
    :cond_1a6
    const-string v2, "safereader_email_poll_interval"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 705
    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSettingUI()V

    .line 706
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_safereaderEmailPollInterval:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/settings/Settings;->setEmailPollInterval(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 708
    :cond_1bc
    const-string v2, "use_network_tts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1cf

    .line 709
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_useNetworkTTS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/vlingo/client/settings/Settings;->setUseNetworkTTS(Z)V

    goto/16 :goto_12

    .line 711
    :cond_1cf
    const-string v2, "tts_setting"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e2

    .line 712
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_TTSSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/vlingo/client/settings/Settings;->setTTSEnabled(Z)V

    goto/16 :goto_12

    .line 714
    :cond_1e2
    const-string v2, "shake_to_skip"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f5

    .line 715
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_ShakeToSkip:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/vlingo/client/settings/Settings;->setShakeToSkip(Z)V

    goto/16 :goto_12

    .line 747
    :cond_1f5
    const-string v2, "tts_carmode_prompt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20e

    .line 748
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v2

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_CarModePrompts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setFeature(IZ)V

    goto/16 :goto_12

    .line 750
    :cond_20e
    const-string v2, "car_word_spotter_enabled"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25c

    .line 752
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_wakeUpWord:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_252

    .line 753
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "car-settings-wake-up-word-enabled"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 759
    :goto_227
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_wakeUpWord:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_246

    .line 760
    invoke-direct {p0}, Lcom/vlingo/client/settings/SettingsScreen;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playWordSpottedTone()V

    .line 761
    iget-boolean v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_alreadyTTSedWakeupWord:Z

    if-nez v2, :cond_246

    .line 762
    iput-boolean v5, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_alreadyTTSedWakeupWord:Z

    .line 763
    new-instance v2, Lcom/vlingo/client/settings/SettingsScreen$7;

    invoke-direct {v2, p0}, Lcom/vlingo/client/settings/SettingsScreen$7;-><init>(Lcom/vlingo/client/settings/SettingsScreen;)V

    const-wide/16 v3, 0x2ee

    invoke-static {v2, v3, v4}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 770
    :cond_246
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vlingo.client.samsung.phrasespotter.CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/vlingo/client/settings/SettingsScreen;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 756
    :cond_252
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "car-settings-wake-up-word-disabled"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto :goto_227

    .line 771
    :cond_25c
    const-string v2, "car_word_spotter_when_charging_only"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_270

    .line 772
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vlingo.client.samsung.phrasespotter.CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/vlingo/client/settings/SettingsScreen;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 783
    :cond_270
    const-string v2, "car_safereader_read_message"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_283

    .line 784
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_SafeReaderReadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/vlingo/client/settings/Settings;->setReadMessage(Z)V

    goto/16 :goto_12

    .line 786
    :cond_283
    const-string v2, "listen_over_bluetooth"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 787
    iget-object v2, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_listenOverBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->onListenOverBTSettingChanged(Z)V

    goto/16 :goto_12
.end method

.method sendLanguageUpdatedLMTTRequest()V
    .registers 4

    .prologue
    .line 815
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vlingo/client/settings/SettingsScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vlingo/client/lmtt/LMTTService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.lang_change"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/SettingsScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 818
    return-void
.end method

.method showSafeReaderEmailMessage()V
    .registers 4

    .prologue
    .line 797
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090101

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090118

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090321

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/settings/SettingsScreen$9;

    invoke-direct {v2, p0}, Lcom/vlingo/client/settings/SettingsScreen$9;-><init>(Lcom/vlingo/client/settings/SettingsScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09036e

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/settings/SettingsScreen$8;

    invoke-direct {v2, p0}, Lcom/vlingo/client/settings/SettingsScreen$8;-><init>(Lcom/vlingo/client/settings/SettingsScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 812
    return-void
.end method

.method protected updateSettingUI()V
    .registers 10

    .prologue
    .line 522
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_webSearchEngine:Landroid/preference/ListPreference;

    if-eqz v6, :cond_f

    .line 523
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_webSearchEngine:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_webSearchEngine:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    :cond_f
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_autoDial:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1e

    .line 526
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_autoDial:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_autoDial:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 528
    :cond_1e
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    if-eqz v6, :cond_2d

    .line 529
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_language:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 531
    :cond_2d
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeTtsPrompt:Landroid/preference/EditTextPreference;

    if-eqz v6, :cond_40

    .line 532
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeTtsPrompt:Landroid/preference/EditTextPreference;

    const-string v7, "tts_carmode_home_prompt"

    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->getHomePromptDefault()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    :cond_40
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeStartupTtsPrompt:Landroid/preference/EditTextPreference;

    if-eqz v6, :cond_53

    .line 536
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeStartupTtsPrompt:Landroid/preference/EditTextPreference;

    const-string v7, "tts_carmode_startup_prompt"

    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->getStartupPromptDefault()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 539
    :cond_53
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_autoPunctuation:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_62

    .line 540
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_autoPunctuation:Landroid/preference/CheckBoxPreference;

    const/16 v7, 0x10

    invoke-static {v7}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 543
    :cond_62
    const/16 v6, 0xf

    invoke-static {v6}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_82

    .line 544
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeHomeAddress:Landroid/preference/EditTextPreference;

    if-eqz v6, :cond_82

    .line 545
    const-string v6, "car_nav_home_address"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 546
    .local v5, summery:Ljava/lang/String;
    if-eqz v5, :cond_103

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_103

    .line 547
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeHomeAddress:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 556
    .end local v5           #summery:Ljava/lang/String;
    :cond_82
    :goto_82
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_emailAccounts:Landroid/preference/Preference;

    if-eqz v6, :cond_ab

    .line 557
    invoke-static {p0}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->getEmailAccounts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 558
    .local v0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/EmailAccount;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 559
    .local v2, numEmailAccounts:I
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_emailAccounts:Landroid/preference/Preference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0903c0

    invoke-virtual {p0, v8}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 562
    .end local v0           #accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/EmailAccount;>;"
    .end local v2           #numEmailAccounts:I
    :cond_ab
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_safereaderEmailPollInterval:Landroid/preference/ListPreference;

    if-eqz v6, :cond_e9

    .line 563
    const-string v6, "safereader_email_poll_interval"

    const-string v7, "30000"

    invoke-static {v6, v7}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 564
    .local v3, pollms:J
    const-wide/32 v6, 0xea60

    div-long/2addr v3, v6

    .line 565
    const v6, 0x7f0903c2

    invoke-virtual {p0, v6}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, min:Ljava/lang/String;
    const-wide/16 v6, 0x1

    cmp-long v6, v3, v6

    if-nez v6, :cond_d3

    const v6, 0x7f0903c1

    invoke-virtual {p0, v6}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    :cond_d3
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_safereaderEmailPollInterval:Landroid/preference/ListPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 570
    .end local v1           #min:Ljava/lang/String;
    .end local v3           #pollms:J
    :cond_e9
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_EmailReadback:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_102

    .line 571
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isEMailReadbackEnabled()Z

    move-result v6

    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_EmailReadback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eq v6, v7, :cond_102

    .line 572
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_EmailReadback:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isEMailReadbackEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 577
    :cond_102
    return-void

    .line 550
    .restart local v5       #summery:Ljava/lang/String;
    :cond_103
    iget-object v6, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_carModeHomeAddress:Landroid/preference/EditTextPreference;

    const v7, 0x7f09037c

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_82
.end method

.method protected updateSocialUI()V
    .registers 12

    .prologue
    .line 381
    const-string v7, "social_settings"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 382
    .local v3, socialScreen:Landroid/preference/PreferenceScreen;
    if-nez v3, :cond_b

    .line 519
    :cond_a
    :goto_a
    return-void

    .line 385
    :cond_b
    const-string v7, "voicecommand"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 386
    .local v6, voiceCommandPreferenceCategory:Landroid/preference/PreferenceCategory;
    const-string v7, "social_settings"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 388
    .local v4, socialSettingsScreen:Landroid/preference/PreferenceScreen;
    const/16 v7, 0xe

    invoke-static {v7}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_194

    .line 389
    const-string v7, "foursquare_account"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/vlingo/client/settings/ImagePreference;

    iput-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

    .line 390
    const-string v7, "twitter_account"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/vlingo/client/settings/ImagePreference;

    iput-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_twitter:Lcom/vlingo/client/settings/ImagePreference;

    .line 391
    const-string v7, "facebook_account"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/vlingo/client/settings/ImagePreference;

    iput-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_facebook:Lcom/vlingo/client/settings/ImagePreference;

    .line 407
    :cond_41
    :goto_41
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

    if-eqz v7, :cond_b1

    .line 408
    const/16 v7, 0xb

    invoke-static {v7}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1e0

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    .local v0, intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v7, "android.intent.extra.INTENT"

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

    invoke-virtual {v7, v0}, Lcom/vlingo/client/settings/ImagePreference;->setIntent(Landroid/content/Intent;)V

    .line 414
    const-string v7, "foursquare_account"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 415
    .local v1, loggedIn:Z
    if-eqz v1, :cond_1c0

    .line 416
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0903ae

    invoke-virtual {p0, v9}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "foursquare_account_name"

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

    const v8, 0x7f0903b2

    invoke-virtual {p0, v8}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    const-string v7, "foursquare_picture"

    invoke-static {v7}, Lcom/vlingo/client/settings/Settings;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 419
    .local v5, thumbImg:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setImageViewVisibility(I)V

    .line 420
    if-eqz v5, :cond_b1

    .line 421
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

    invoke-virtual {v7, v5}, Lcom/vlingo/client/settings/ImagePreference;->setImageViewBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #loggedIn:Z
    .end local v5           #thumbImg:Landroid/graphics/Bitmap;
    :cond_b1
    :goto_b1
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_twitter:Lcom/vlingo/client/settings/ImagePreference;

    if-eqz v7, :cond_121

    .line 450
    const/16 v7, 0xc

    invoke-static {v7}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_230

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v7, "android.intent.extra.INTENT"

    const/4 v8, 0x4

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_twitter:Lcom/vlingo/client/settings/ImagePreference;

    invoke-virtual {v7, v0}, Lcom/vlingo/client/settings/ImagePreference;->setIntent(Landroid/content/Intent;)V

    .line 456
    const-string v7, "twitter_account"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 457
    .restart local v1       #loggedIn:Z
    if-eqz v1, :cond_210

    .line 458
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_twitter:Lcom/vlingo/client/settings/ImagePreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0903ae

    invoke-virtual {p0, v9}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "twitter_account_name"

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_twitter:Lcom/vlingo/client/settings/ImagePreference;

    const v8, 0x7f0903b2

    invoke-virtual {p0, v8}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 460
    const-string v7, "twitter_picture"

    invoke-static {v7}, Lcom/vlingo/client/settings/Settings;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 461
    .restart local v5       #thumbImg:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_twitter:Lcom/vlingo/client/settings/ImagePreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setImageViewVisibility(I)V

    .line 462
    if-eqz v5, :cond_121

    .line 463
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_twitter:Lcom/vlingo/client/settings/ImagePreference;

    invoke-virtual {v7, v5}, Lcom/vlingo/client/settings/ImagePreference;->setImageViewBitmap(Landroid/graphics/Bitmap;)V

    .line 487
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #loggedIn:Z
    .end local v5           #thumbImg:Landroid/graphics/Bitmap;
    :cond_121
    :goto_121
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_facebook:Lcom/vlingo/client/settings/ImagePreference;

    if-eqz v7, :cond_a

    .line 488
    const/16 v7, 0xd

    invoke-static {v7}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_274

    .line 489
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v7, "android.intent.extra.INTENT"

    const/16 v8, 0x8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_facebook:Lcom/vlingo/client/settings/ImagePreference;

    invoke-virtual {v7, v0}, Lcom/vlingo/client/settings/ImagePreference;->setIntent(Landroid/content/Intent;)V

    .line 494
    const-string v7, "facebook_account"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 495
    .restart local v1       #loggedIn:Z
    if-eqz v1, :cond_254

    .line 496
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_facebook:Lcom/vlingo/client/settings/ImagePreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0903ae

    invoke-virtual {p0, v9}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "facebook_account_name"

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_facebook:Lcom/vlingo/client/settings/ImagePreference;

    const v8, 0x7f0903b2

    invoke-virtual {p0, v8}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    const-string v7, "facebook_picture"

    invoke-static {v7}, Lcom/vlingo/client/settings/Settings;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 499
    .restart local v5       #thumbImg:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_facebook:Lcom/vlingo/client/settings/ImagePreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setImageViewVisibility(I)V

    .line 500
    if-eqz v5, :cond_a

    .line 501
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_facebook:Lcom/vlingo/client/settings/ImagePreference;

    invoke-virtual {v7, v5}, Lcom/vlingo/client/settings/ImagePreference;->setImageViewBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_a

    .line 394
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #loggedIn:Z
    .end local v5           #thumbImg:Landroid/graphics/Bitmap;
    :cond_194
    const-string v7, "voicecommand"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6           #voiceCommandPreferenceCategory:Landroid/preference/PreferenceCategory;
    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 395
    .restart local v6       #voiceCommandPreferenceCategory:Landroid/preference/PreferenceCategory;
    iget-boolean v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->greyDisabled:Z

    if-eqz v7, :cond_1aa

    .line 396
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 397
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setShouldDisableView(Z)V

    goto/16 :goto_41

    .line 399
    :cond_1aa
    const-string v7, "social_settings"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 402
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 403
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setShouldDisableView(Z)V

    goto/16 :goto_41

    .line 425
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #loggedIn:Z
    :cond_1c0
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

    const v8, 0x7f0903b0

    invoke-virtual {p0, v8}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

    const v8, 0x7f09037b

    invoke-virtual {p0, v8}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_foursquare:Lcom/vlingo/client/settings/ImagePreference;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setImageViewVisibility(I)V

    goto/16 :goto_b1

    .line 430
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #loggedIn:Z
    :cond_1e0
    const-string v7, "foursquare_category"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 431
    .local v2, pref:Landroid/preference/Preference;
    iget-boolean v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->greyDisabled:Z

    if-eqz v7, :cond_1f4

    .line 432
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 433
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    goto/16 :goto_b1

    .line 435
    :cond_1f4
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v7

    if-nez v7, :cond_b1

    .line 438
    const-string v7, "foursquare_category"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    move-result v7

    if-nez v7, :cond_206

    .line 442
    :cond_206
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 443
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    goto/16 :goto_b1

    .line 467
    .end local v2           #pref:Landroid/preference/Preference;
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #loggedIn:Z
    :cond_210
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_twitter:Lcom/vlingo/client/settings/ImagePreference;

    const v8, 0x7f0903b1

    invoke-virtual {p0, v8}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_twitter:Lcom/vlingo/client/settings/ImagePreference;

    const v8, 0x7f09037b

    invoke-virtual {p0, v8}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_twitter:Lcom/vlingo/client/settings/ImagePreference;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setImageViewVisibility(I)V

    goto/16 :goto_121

    .line 472
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #loggedIn:Z
    :cond_230
    const-string v7, "twitter_preference_category"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 473
    .restart local v2       #pref:Landroid/preference/Preference;
    iget-boolean v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->greyDisabled:Z

    if-eqz v7, :cond_244

    .line 474
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 475
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    goto/16 :goto_121

    .line 477
    :cond_244
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v7

    if-nez v7, :cond_121

    .line 480
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 481
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    goto/16 :goto_121

    .line 505
    .end local v2           #pref:Landroid/preference/Preference;
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #loggedIn:Z
    :cond_254
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_facebook:Lcom/vlingo/client/settings/ImagePreference;

    const v8, 0x7f0903af

    invoke-virtual {p0, v8}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_facebook:Lcom/vlingo/client/settings/ImagePreference;

    const v8, 0x7f09037b

    invoke-virtual {p0, v8}, Lcom/vlingo/client/settings/SettingsScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v7, p0, Lcom/vlingo/client/settings/SettingsScreen;->m_facebook:Lcom/vlingo/client/settings/ImagePreference;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/vlingo/client/settings/ImagePreference;->setImageViewVisibility(I)V

    goto/16 :goto_a

    .line 510
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #loggedIn:Z
    :cond_274
    const-string v7, "facebook_preference_category"

    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/SettingsScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 511
    .restart local v2       #pref:Landroid/preference/Preference;
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 514
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 515
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    goto/16 :goto_a
.end method
