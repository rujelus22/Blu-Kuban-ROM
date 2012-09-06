.class public Lcom/google/android/apps/googlevoice/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# static fields
.field static final ID_DIALOG_DND_FAILED:I = 0xfa2

.field static final ID_DIALOG_DND_PROGRESS:I = 0xfa1

.field static final ID_DIALOG_ENABLING_NOTIFICATIONS_VIA_SMS:I = 0xbb9

.field static final ID_DIALOG_TOGGLE_SMS_NOTIFICATIONS:I = 0x7d1

.field static final ID_DIALOG_TOGGLE_SMS_NOTIFICATIONS_FAILED:I = 0x7d2

.field static final ID_REQUEST_TOGGLE_DO_NOT_DISTURB:I = 0x3ea

.field static final ID_REQUEST_TOGGLE_SMS_NOTIFICATIONS:I = 0x3e9

.field public static final ID_SETTINGS_UPDATED:I = 0x1

.field private static final LOG:Lcom/google/android/apps/common/log/GLog;


# instance fields
.field private actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

.field private applicationInformation:Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

.field private credentials:Lcom/google/android/apps/googlevoice/net/Credentials;

.field private eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

.field private gvVvmSyncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

.field private handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private isFullSubscriber:Z

.field private proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private settingsProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/SettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private shouldInterceptCalls:Z

.field private useInboxNotifications:Z

.field private versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->LOG:Lcom/google/android/apps/common/log/GLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/SettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->updatePreferenceValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/SettingsActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->settingsProviders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/SettingsActivity;I)Landroid/preference/Preference;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/SettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->toggleNotificationViaSms()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/SettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/SettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->updateVibrateLightAndRingtoneEnabledState()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/SettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->toggleDoNotDisturb()V

    return-void
.end method

.method private addPreferenceListeners()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 335
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->receive_text_messages_key:I

    new-instance v1, Lcom/google/android/apps/googlevoice/SettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/SettingsActivity$3;-><init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->setOnPreferenceChangedListener(ILandroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsIcsOrLater()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 350
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->vvm_preference_key:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/google/android/apps/googlevoice/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/SettingsActivity$4;-><init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 369
    :cond_2a
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->text_notifications_key:I

    new-instance v1, Lcom/google/android/apps/googlevoice/SettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/SettingsActivity$5;-><init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->setOnPreferenceChangedListener(ILandroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 380
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->voicemail_notifications_key:I

    new-instance v1, Lcom/google/android/apps/googlevoice/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/SettingsActivity$6;-><init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->setOnPreferenceChangedListener(ILandroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 390
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->isFullSubscriber:Z

    if-eqz v0, :cond_4c

    .line 391
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->do_not_disturb_preference_key:I

    new-instance v1, Lcom/google/android/apps/googlevoice/SettingsActivity$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/SettingsActivity$7;-><init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->setOnPreferenceChangedListener(ILandroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 400
    :cond_4c
    return-void
.end method

.method private configurePreferences()V
    .registers 3

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->useInboxNotifications:Z

    if-eqz v0, :cond_6e

    .line 275
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->synchronization_settings_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->update_interval_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    .line 281
    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 282
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->isFullSubscriber:Z

    if-nez v0, :cond_25

    .line 284
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->information_settings_category_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->google_voice_number_preference_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    .line 288
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->googlevoice_preferences_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->do_not_disturb_preference_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    .line 291
    :cond_25
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->shouldInterceptCalls:Z

    if-nez v0, :cond_30

    .line 292
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->googlevoice_preferences_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->call_routing_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    .line 296
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsIcsOrLater()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 297
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->googlevoice_preferences_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->vvm_preference_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    .line 316
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 318
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->notification_settings_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->receive_text_messages_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    .line 320
    :cond_4e
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->updateVibrateLightAndRingtoneEnabledState()V

    .line 323
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->terms_of_service_preference_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->uri_terms_of_service:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->setUri(II)V

    .line 324
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->privacy_policy_preference_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->uri_privacy_policy:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->setUri(II)V

    .line 325
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->program_policy_preference_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->uri_program_policy:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->setUri(II)V

    .line 326
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->legal_notices_preference_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->uri_legal_notices:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->setUri(II)V

    .line 327
    return-void

    .line 277
    :cond_6e
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->synchronization_settings_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->background_data_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    goto :goto_b

    .line 302
    :cond_76
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->googlevoice_preferences_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->call_routing_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    .line 305
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->googlevoice_preferences_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->forwarding_number_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    .line 308
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->googlevoice_preferences_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_playback_via_speaker_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    .line 312
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->googlevoice_preferences_key:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->vvm_preference_key:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->removePreferenceFrom(II)V

    goto :goto_3f
.end method

.method private findPreference(I)Landroid/preference/Preference;
    .registers 3
    .parameter "keyId"

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private removePreferenceFrom(II)V
    .registers 7
    .parameter "preferenceGroupKeyId"
    .parameter "preferenceKeyId"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 563
    .local v0, preferenceGroup:Landroid/preference/PreferenceGroup;
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 564
    sget-object v1, Lcom/google/android/apps/googlevoice/SettingsActivity;->LOG:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not remove preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 566
    :cond_32
    return-void
.end method

.method private setOnPreferenceChangedListener(ILandroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 4
    .parameter "preferenceKeyId"
    .parameter "listener"

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 574
    return-void
.end method

.method private setUri(II)V
    .registers 7
    .parameter "keyId"
    .parameter "uriId"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 237
    .local v0, preference:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 238
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method private toggleDoNotDisturb()V
    .registers 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    const/16 v1, 0xfa1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->showDialog(I)V

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3ea

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    return-void
.end method

.method private toggleNotificationViaSms()V
    .registers 3

    .prologue
    .line 249
    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->showDialog(I)V

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.apps.googlevoice.sms.TOGGLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    return-void
.end method

.method private updatePreferenceValues()V
    .registers 20

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->useInboxNotifications:Z

    if-eqz v13, :cond_12c

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/VoicePreferences;->mayUseDataInBackground()Z

    move-result v6

    .line 411
    .local v6, mayUseDataInBackground:Z
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->background_data_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 412
    .local v1, backgroundDataPreference:Landroid/preference/Preference;
    if-eqz v6, :cond_128

    sget v13, Lcom/google/android/apps/googlevoice/R$string;->background_data_settings_enabled:I

    :goto_1a
    invoke-virtual {v1, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 427
    .end local v1           #backgroundDataPreference:Landroid/preference/Preference;
    .end local v6           #mayUseDataInBackground:Z
    :goto_1d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->updateReceiveTextMessagesEnabledState()V

    .line 430
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->text_notifications_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 432
    .local v7, notifyWhenNewTextMesssagePreference:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/VoicePreferences;->notifyWhenNewTextMessage()Z

    move-result v13

    invoke-virtual {v7, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 436
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->voicemail_notifications_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 438
    .local v8, notifyWhenNewVoicemailPreference:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/VoicePreferences;->notifyWhenNewVoicemail()Z

    move-result v13

    invoke-virtual {v8, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 443
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->credentials:Lcom/google/android/apps/googlevoice/net/Credentials;

    if-eqz v13, :cond_15c

    .line 444
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->sign_out_preference_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/google/android/apps/googlevoice/R$string;->sign_out_preference_summary:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->credentials:Lcom/google/android/apps/googlevoice/net/Credentials;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/net/Credentials;->getUserName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    :goto_7b
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->build_number_preference_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->applicationInformation:Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/system/ApplicationInformation;->getApplicationVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_ed

    .line 457
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->shouldInterceptCalls:Z

    if-eqz v13, :cond_b3

    .line 458
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->call_routing_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getModeString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 462
    :cond_b3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getFormattedForwardingNumber()Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, formattedForwardingNumber:Ljava/lang/String;
    if-nez v3, :cond_cb

    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v9

    .line 467
    .local v9, rawForwardingNumber:Ljava/lang/String;
    if-eqz v9, :cond_cb

    .line 468
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    .end local v9           #rawForwardingNumber:Ljava/lang/String;
    :cond_cb
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->forwarding_number_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 474
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->voicemail_playback_via_speaker_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVoicemailPlaybackViaSpeaker()Z

    move-result v13

    if-eqz v13, :cond_16b

    sget v13, Lcom/google/android/apps/googlevoice/R$string;->voicemail_playback_speaker:I

    :goto_ea
    invoke-virtual {v14, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 481
    .end local v3           #formattedForwardingNumber:Ljava/lang/String;
    :cond_ed
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->isFullSubscriber:Z

    if-eqz v13, :cond_127

    .line 483
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->google_voice_number_preference_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 485
    .local v5, googleVoiceNumberPreference:Landroid/preference/Preference;
    const-string v4, ""

    .line 486
    .local v4, formattedSubscriberNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v11

    .line 487
    .local v11, subscriberNumber:Ljava/lang/String;
    if-eqz v11, :cond_10b

    .line 488
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 490
    :cond_10b
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 491
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 493
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->do_not_disturb_preference_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 495
    .local v2, doNotDisturbPreference:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v13

    invoke-virtual {v2, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 497
    .end local v2           #doNotDisturbPreference:Landroid/preference/CheckBoxPreference;
    .end local v4           #formattedSubscriberNumber:Ljava/lang/String;
    .end local v5           #googleVoiceNumberPreference:Landroid/preference/Preference;
    .end local v11           #subscriberNumber:Ljava/lang/String;
    :cond_127
    return-void

    .line 412
    .end local v7           #notifyWhenNewTextMesssagePreference:Landroid/preference/CheckBoxPreference;
    .end local v8           #notifyWhenNewVoicemailPreference:Landroid/preference/CheckBoxPreference;
    .restart local v1       #backgroundDataPreference:Landroid/preference/Preference;
    .restart local v6       #mayUseDataInBackground:Z
    :cond_128
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->background_data_settings_disabled:I

    goto/16 :goto_1a

    .line 417
    .end local v1           #backgroundDataPreference:Landroid/preference/Preference;
    .end local v6           #mayUseDataInBackground:Z
    :cond_12c
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->update_interval_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-class v15, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 420
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->update_interval_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v12

    .line 421
    .local v12, updateIntervalPreference:Landroid/preference/Preference;
    invoke-virtual {v12}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v10

    .line 422
    .local v10, shouldDisableDependents:Z
    invoke-virtual {v12, v10}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 423
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getUpdateIntervalString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 448
    .end local v10           #shouldDisableDependents:Z
    .end local v12           #updateIntervalPreference:Landroid/preference/Preference;
    .restart local v7       #notifyWhenNewTextMesssagePreference:Landroid/preference/CheckBoxPreference;
    .restart local v8       #notifyWhenNewVoicemailPreference:Landroid/preference/CheckBoxPreference;
    :cond_15c
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->sign_out_preference_key:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7b

    .line 474
    .restart local v3       #formattedForwardingNumber:Ljava/lang/String;
    :cond_16b
    sget v13, Lcom/google/android/apps/googlevoice/R$string;->voicemail_playback_handset:I

    goto/16 :goto_ea
.end method

.method private updateReceiveTextMessagesEnabledState()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 506
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 507
    sget v4, Lcom/google/android/apps/googlevoice/R$string;->text_notifications_key:I

    invoke-direct {p0, v4}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 509
    .local v0, androidTextNotificationsPreference:Landroid/preference/CheckBoxPreference;
    sget v4, Lcom/google/android/apps/googlevoice/R$string;->receive_text_messages_key:I

    invoke-direct {p0, v4}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 511
    .local v2, receiveTextMessagesPreference:Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/apps/googlevoice/R$array;->receive_text_messages_preference_options:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, receiveTextMessagesOptions:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/apps/googlevoice/R$array;->receive_text_messages_preference_values:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, receiveTextMessagesValues:[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {v4, v5}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSmsNotificationEnabled(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 519
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 522
    aget-object v4, v3, v7

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 523
    aget-object v4, v1, v7

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 530
    :goto_45
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->updateVibrateLightAndRingtoneEnabledState()V

    .line 532
    .end local v0           #androidTextNotificationsPreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #receiveTextMessagesOptions:[Ljava/lang/String;
    .end local v2           #receiveTextMessagesPreference:Landroid/preference/ListPreference;
    .end local v3           #receiveTextMessagesValues:[Ljava/lang/String;
    :cond_48
    return-void

    .line 525
    .restart local v0       #androidTextNotificationsPreference:Landroid/preference/CheckBoxPreference;
    .restart local v1       #receiveTextMessagesOptions:[Ljava/lang/String;
    .restart local v2       #receiveTextMessagesPreference:Landroid/preference/ListPreference;
    .restart local v3       #receiveTextMessagesValues:[Ljava/lang/String;
    :cond_49
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 526
    aget-object v4, v3, v6

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 527
    aget-object v4, v1, v6

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_45
.end method

.method private updateVibrateLightAndRingtoneEnabledState()V
    .registers 4

    .prologue
    .line 540
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->displayTextMessageStatusBarNotification(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->notifyWhenNewVoicemail()Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_12
    const/4 v0, 0x1

    .line 543
    .local v0, enabled:Z
    :goto_13
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notification_vibrate_key:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 544
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notification_light_key:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 545
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notification_ringtone_key:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 546
    return-void

    .line 540
    .end local v0           #enabled:Z
    :cond_2f
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 178
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_21

    .line 179
    sget-object v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "sms notification activity finished, updating checkbox"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    const/16 v1, 0x7d1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->dismissDialog(I)V

    .line 181
    if-ne p2, v2, :cond_19

    .line 182
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->updateReceiveTextMessagesEnabledState()V

    .line 196
    :cond_18
    :goto_18
    return-void

    .line 184
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    const/16 v1, 0x7d2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->showDialog(I)V

    goto :goto_18

    .line 186
    :cond_21
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_3d

    .line 187
    sget-object v0, Lcom/google/android/apps/googlevoice/SettingsActivity;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "dnd activity finished, updating checkbox"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    const/16 v1, 0xfa1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->removeDialog(I)V

    .line 190
    if-eq p2, v2, :cond_18

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    const/16 v1, 0xfa2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->showDialog(I)V

    goto :goto_18

    .line 194
    :cond_3d
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_18
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 87
    sget-object v4, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 89
    sget-object v4, Lcom/google/android/apps/googlevoice/SettingsActivity;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v5, "SettingsActivity.onCreate()"

    invoke-interface {v4, v5}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 92
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 93
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getActionBarHelper()Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    .line 94
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    invoke-interface {v4, p0}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->requestLeftIcon(Landroid/app/Activity;)V

    .line 95
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    sget v5, Lcom/google/android/apps/googlevoice/R$drawable;->gv_title_bar_icon:I

    invoke-interface {v4, p0, v5}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setLeftIconDrawableResource(Landroid/app/Activity;I)V

    .line 96
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    invoke-interface {v4, p0, v3}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V

    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 102
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    .line 103
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getApplicationInformation()Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->applicationInformation:Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

    .line 104
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getEventLogger()Lcom/google/android/apps/googlevoice/net/EventLogger;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    .line 106
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 107
    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createActivityProxy(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    .line 109
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->useInboxNotifications:Z

    .line 110
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v4

    sget-object v5, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-eq v4, v5, :cond_c4

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v4, v5}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldInterceptCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v4

    if-eqz v4, :cond_c4

    :goto_6f
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->shouldInterceptCalls:Z

    .line 112
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getCredentials()Lcom/google/android/apps/googlevoice/net/Credentials;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->credentials:Lcom/google/android/apps/googlevoice/net/Credentials;

    .line 113
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->isFullSubscriber()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->isFullSubscriber:Z

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->settingsProviders:Ljava/util/List;

    .line 116
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getModule()Lcom/google/android/apps/googlevoice/modules/Module;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->settingsProviders:Ljava/util/List;

    invoke-interface {v3, v4}, Lcom/google/android/apps/googlevoice/modules/Module;->addSettingsProvider(Ljava/util/List;)V

    .line 118
    sget v3, Lcom/google/android/apps/googlevoice/R$xml;->preferences:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/SettingsActivity;->addPreferencesFromResource(I)V

    .line 120
    new-instance v3, Lcom/google/android/apps/googlevoice/SettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/googlevoice/SettingsActivity$1;-><init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    invoke-interface {v0, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->configurePreferences()V

    .line 136
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->settingsProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/SettingsProvider;

    .line 137
    .local v2, settingsProvider:Lcom/google/android/apps/googlevoice/SettingsProvider;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/apps/googlevoice/SettingsProvider;->configure(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceManager;)V

    goto :goto_ac

    .line 110
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #settingsProvider:Lcom/google/android/apps/googlevoice/SettingsProvider;
    :cond_c4
    const/4 v3, 0x0

    goto :goto_6f

    .line 140
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_c6
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->addPreferenceListeners()V

    .line 141
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->settingsProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/SettingsProvider;

    .line 142
    .restart local v2       #settingsProvider:Lcom/google/android/apps/googlevoice/SettingsProvider;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/apps/googlevoice/SettingsProvider;->addListeners(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceManager;)V

    goto :goto_cf

    .line 145
    .end local v2           #settingsProvider:Lcom/google/android/apps/googlevoice/SettingsProvider;
    :cond_e7
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsIcsOrLater()Z

    move-result v3

    if-eqz v3, :cond_101

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 146
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getGvVvmSyncer()Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->gvVvmSyncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

    .line 148
    :cond_101
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 200
    sparse-switch p1, :sswitch_data_50

    .line 231
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 203
    :sswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->sms_notifications_setting_progress:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_7

    .line 212
    .end local v0           #progressDialog:Landroid/app/ProgressDialog;
    :sswitch_1b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->dialog_title_error:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->sms_notifications_setting_failed:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/google/android/apps/googlevoice/SettingsActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/apps/googlevoice/SettingsActivity$2;-><init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 225
    :sswitch_44
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {p0, v1}, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->createProgressDialog(Landroid/content/Context;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_7

    .line 228
    :sswitch_4b
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->createErrorDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 200
    :sswitch_data_50
    .sparse-switch
        0x7d1 -> :sswitch_8
        0x7d2 -> :sswitch_1b
        0xfa1 -> :sswitch_44
        0xfa2 -> :sswitch_4b
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "menuItem"

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 169
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->finish()V

    .line 173
    const/4 v0, 0x1

    :goto_d
    return v0

    .line 171
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 158
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 159
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    .line 160
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->updatePreferenceValues()V

    .line 161
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->settingsProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/SettingsProvider;

    .line 162
    .local v1, settingsProvider:Lcom/google/android/apps/googlevoice/SettingsProvider;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/apps/googlevoice/SettingsProvider;->update(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceManager;)V

    goto :goto_18

    .line 164
    .end local v1           #settingsProvider:Lcom/google/android/apps/googlevoice/SettingsProvider;
    :cond_30
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 152
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_SETTINGS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/EventLogger;->submit(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 154
    return-void
.end method
