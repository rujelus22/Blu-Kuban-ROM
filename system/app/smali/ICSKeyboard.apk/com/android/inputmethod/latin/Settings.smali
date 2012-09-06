.class public Lcom/android/inputmethod/latin/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Settings$Values;
    }
.end annotation


# static fields
.field public static final ENABLE_EXPERIMENTAL_SETTINGS:Z = false

.field public static final PREF_ALWAYS_SUGGEST:Ljava/lang/String; = "always_suggest"

.field public static final PREF_AUTO_CAP:Ljava/lang/String; = "auto_cap"

.field public static final PREF_AUTO_CORRECTION_THRESHOLD:Ljava/lang/String; = "auto_correction_threshold"

.field public static final PREF_AUTO_SPACE:Ljava/lang/String; = "auto_space"

.field public static final PREF_BIGRAM_PREDICTIONS:Ljava/lang/String; = "bigram_prediction"

.field public static final PREF_BIGRAM_SUGGESTIONS:Ljava/lang/String; = "bigram_suggestion"

.field public static final PREF_CONFIGURE_DICTIONARIES_KEY:Ljava/lang/String; = "configure_dictionaries_key"

.field public static final PREF_CORRECTION_SETTINGS_KEY:Ljava/lang/String; = "correction_settings"

.field public static final PREF_DEBUG_SETTINGS:Ljava/lang/String; = "debug_settings"

.field public static final PREF_DONATION_SETTINGS_KEY:Ljava/lang/String; = "donation_settings"

.field public static final PREF_EXTERNAL_SKIN:Ljava/lang/String; = "external_skin"

.field public static final PREF_GENERAL_SETTINGS_KEY:Ljava/lang/String; = "general_settings"

.field public static final PREF_INPUT_LANGUAGE:Ljava/lang/String; = "input_language"

.field public static final PREF_INTERNATIONAL_LAYOUT_KEY:Ljava/lang/String; = "international_layouts"

.field public static final PREF_KEYBOARD_HEIGHT_SETTINGS_LANDSCAPE:Ljava/lang/String; = "pref_keyboard_height_settings_landscape"

.field public static final PREF_KEYBOARD_HEIGHT_SETTINGS_PORTRAIT:Ljava/lang/String; = "pref_keyboard_height_settings_portrait"

.field public static final PREF_KEY_ENABLE_SPAN_INSERT:Ljava/lang/String; = "enable_span_insert"

.field public static final PREF_KEY_PREVIEW_POPUP_DISMISS_DELAY:Ljava/lang/String; = "pref_key_preview_popup_dismiss_delay"

.field public static final PREF_KEY_PREVIEW_POPUP_ON:Ljava/lang/String; = "popup_on"

.field public static final PREF_KEY_USE_CONTACTS_DICT:Ljava/lang/String; = "pref_key_use_contacts_dict"

.field public static final PREF_MISC_SETTINGS_KEY:Ljava/lang/String; = "misc_settings"

.field public static final PREF_SELECTED_LANGUAGES:Ljava/lang/String; = "selected_languages"

.field public static final PREF_SHOW_SETTINGS_KEY:Ljava/lang/String; = "show_settings_key"

.field public static final PREF_SHOW_SUGGESTIONS_SETTING:Ljava/lang/String; = "show_suggestions_setting"

.field public static final PREF_SOUND_ON:Ljava/lang/String; = "sound_on"

.field public static final PREF_SUBTYPES:Ljava/lang/String; = "subtype_settings"

.field public static final PREF_SWIPE_DOWN:Ljava/lang/String; = "swipe_down"

.field public static final PREF_SWIPE_LEFT:Ljava/lang/String; = "swipe_left"

.field public static final PREF_SWIPE_RIGHT:Ljava/lang/String; = "swipe_right"

.field public static final PREF_SWIPE_UP:Ljava/lang/String; = "swipe_up"

.field public static final PREF_URI_BACKGROUND_IMAGE:Ljava/lang/String; = "background_image_uri"

.field public static final PREF_USABILITY_STUDY_MODE:Ljava/lang/String; = "usability_study_mode"

.field public static final PREF_USE_CUSTOM_IMAGE:Ljava/lang/String; = "use_custom_image"

.field public static final PREF_VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field public static final PREF_VIBRATION_DURATION_SETTINGS:Ljava/lang/String; = "pref_vibration_duration_settings"

.field public static final PREF_VOICE_SETTINGS_KEY:Ljava/lang/String; = "voice_mode"

.field private static final REQ_CODE_PICK_IMAGE:I

.field private static final TAG:Ljava/lang/String;

.field private static final VOICE_INPUT_CONFIRM_DIALOG:I


# instance fields
.field private mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

.field private mBigramPrediction:Landroid/preference/CheckBoxPreference;

.field private mBigramSuggestion:Landroid/preference/CheckBoxPreference;

.field private mDebugSettingsPreference:Landroid/preference/Preference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mInputLanguageSelection:Landroid/preference/PreferenceScreen;

.field private mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

.field private mKeyboardHieghtLandscapeSettingsPref:Landroid/preference/PreferenceScreen;

.field private mKeyboardHieghtSettingsPref:Landroid/preference/PreferenceScreen;

.field private mKeyboardHieghtSettingsTextView:Landroid/widget/TextView;

.field private mOkClicked:Z

.field private mPref_download_full:Landroid/preference/Preference;

.field private mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

.field private mShowSettingsKeyPreference:Landroid/preference/CheckBoxPreference;

.field private mVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

.field private mVibrationSettingsTextView:Landroid/widget/TextView;

.field private mVoiceModeOff:Ljava/lang/String;

.field private mVoiceOn:Z

.field private mVoicePreference:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-class v0, Lcom/android/inputmethod/latin/Settings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Settings;->TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    .line 58
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/inputmethod/latin/Settings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/Settings;)V
    .registers 1
    .parameter

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->showVibrationSettingsDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/Settings;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/Settings;->showKeyHeightDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/inputmethod/latin/Settings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/inputmethod/latin/Settings;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/inputmethod/latin/Settings;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    return-void
.end method

.method static synthetic access$6(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVibrationSettingsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 735
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/Settings;->updateVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$8(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeyboardHieghtSettingsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 743
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Settings;->updateKeyboardHeightSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)V

    return-void
.end method

.method private ensureConsistencyOfAutoCorrectionSettings()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 391
    const v5, 0x7f0c0061

    .line 390
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, autoCorrectionOff:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, currentSetting:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/latin/Settings;->mBigramSuggestion:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move v2, v3

    :goto_1c
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 394
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2e

    .line 395
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    :goto_2b
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 397
    :cond_2e
    return-void

    :cond_2f
    move v2, v4

    .line 393
    goto :goto_1c

    :cond_31
    move v3, v4

    .line 395
    goto :goto_2b
.end method

.method private grayDonationFeatures()V
    .registers 5

    .prologue
    .line 859
    const-string v2, "donation_settings"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 861
    .local v0, donationSettings:Landroid/preference/PreferenceGroup;
    const-string v2, "general_settings"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 862
    .local v1, generalSettings:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "inputmethod.latin.ported.full"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 864
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mPref_download_full:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 870
    :goto_23
    return-void

    .line 868
    :cond_24
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_23
.end method

.method private showKeyHeightDialog(Ljava/lang/String;)V
    .registers 12
    .parameter "key"

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 799
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v1

    .line 800
    .local v1, context:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 801
    .local v3, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 802
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0c010a

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 803
    const v7, 0x104000a

    new-instance v8, Lcom/android/inputmethod/latin/Settings$10;

    invoke-direct {v8, p0, v5, p1, v3}, Lcom/android/inputmethod/latin/Settings$10;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 811
    const/high16 v7, 0x104

    new-instance v8, Lcom/android/inputmethod/latin/Settings$11;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/Settings$11;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 817
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 818
    const v8, 0x7f030004

    const/4 v9, 0x0

    .line 817
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 820
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "pref_keyboard_height_settings_portrait"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 819
    invoke-static {v7, v8, v9}, Lcom/android/inputmethod/latin/Utils;->getCurrentKeyboardHeight(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)I

    move-result v2

    .line 821
    .local v2, currentHeight:I
    const v7, 0x7f070041

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/inputmethod/latin/Settings;->mKeyboardHieghtSettingsTextView:Landroid/widget/TextView;

    .line 822
    const v7, 0x7f070042

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 823
    .local v4, sb:Landroid/widget/SeekBar;
    new-instance v7, Lcom/android/inputmethod/latin/Settings$12;

    invoke-direct {v7, p0}, Lcom/android/inputmethod/latin/Settings$12;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 839
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 840
    iget-object v7, p0, Lcom/android/inputmethod/latin/Settings;->mKeyboardHieghtSettingsTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 842
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 843
    return-void
.end method

.method private showVibrationSettingsDialog()V
    .registers 11

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 751
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v1

    .line 752
    .local v1, context:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 753
    .local v3, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 754
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0c00f9

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 755
    const v7, 0x104000a

    new-instance v8, Lcom/android/inputmethod/latin/Settings$7;

    invoke-direct {v8, p0, v5, v3}, Lcom/android/inputmethod/latin/Settings$7;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 763
    const/high16 v7, 0x104

    new-instance v8, Lcom/android/inputmethod/latin/Settings$8;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/Settings$8;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 769
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 770
    const v8, 0x7f03000e

    const/4 v9, 0x0

    .line 769
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 772
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 771
    invoke-static {v7, v8}, Lcom/android/inputmethod/latin/Utils;->getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v2

    .line 773
    .local v2, currentMs:I
    const v7, 0x7f07004d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/inputmethod/latin/Settings;->mVibrationSettingsTextView:Landroid/widget/TextView;

    .line 774
    const v7, 0x7f07004e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 775
    .local v4, sb:Landroid/widget/SeekBar;
    new-instance v7, Lcom/android/inputmethod/latin/Settings$9;

    invoke-direct {v7, p0, v1}, Lcom/android/inputmethod/latin/Settings$9;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/app/Activity;)V

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 792
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 793
    iget-object v7, p0, Lcom/android/inputmethod/latin/Settings;->mVibrationSettingsTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 795
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 796
    return-void
.end method

.method private showVoiceConfirmation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 662
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    .line 663
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 665
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_22

    .line 666
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mDialog:Landroid/app/AlertDialog;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 667
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_22

    .line 668
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 671
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_22
    return-void
.end method

.method private updateKeyPreviewPopupDelaySummary()V
    .registers 4

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    .line 658
    .local v0, lp:Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 659
    return-void
.end method

.method private updateKeyboardHeightSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)V
    .registers 6
    .parameter "sp"
    .parameter "res"
    .parameter "portrait"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_11

    .line 745
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    .line 746
    invoke-static {p1, p2, p3}, Lcom/android/inputmethod/latin/Utils;->getCurrentKeyboardHeight(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 748
    :cond_11
    return-void
.end method

.method private updateShowCorrectionSuggestionsSummary()V
    .registers 5

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    .line 651
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 652
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    .line 653
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 651
    aget-object v1, v1, v2

    .line 650
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 654
    return-void
.end method

.method private updateVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .registers 6
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_25

    .line 737
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/Utils;->getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    const v2, 0x7f0c0078

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 737
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 741
    :cond_25
    return-void
.end method

.method private updateVoiceModeSummary()V
    .registers 5

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 675
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 676
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 675
    aget-object v1, v1, v2

    .line 674
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 677
    return-void
.end method


# virtual methods
.method public getActivityInternal()Landroid/app/Activity;
    .registers 3

    .prologue
    .line 400
    move-object v0, p0

    .line 401
    .local v0, thisObject:Lcom/android/inputmethod/latin/Settings;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_8

    .line 402
    check-cast v0, Landroid/app/Activity;

    .line 405
    .end local v0           #thisObject:Lcom/android/inputmethod/latin/Settings;
    :goto_7
    return-object v0

    .restart local v0       #thisObject:Lcom/android/inputmethod/latin/Settings;
    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "imageReturnedIntent"

    .prologue
    .line 845
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 847
    packed-switch p1, :pswitch_data_28

    .line 855
    :cond_6
    :goto_6
    return-void

    .line 849
    :pswitch_7
    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    .line 850
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 851
    .local v1, selectedImage:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 852
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "background_image_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6

    .line 847
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 26
    .parameter "icicle"

    .prologue
    .line 411
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 415
    .local v14, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v2

    .line 417
    .local v2, context:Landroid/content/Context;
    const v20, 0x7f05002f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->addPreferencesFromResource(I)V

    .line 418
    const-string v20, "subtype_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mInputLanguageSelection:Landroid/preference/PreferenceScreen;

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mInputLanguageSelection:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 420
    const-string v20, "voice_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 421
    const-string v20, "show_settings_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mShowSettingsKeyPreference:Landroid/preference/CheckBoxPreference;

    .line 423
    const-string v20, "show_suggestions_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    .line 422
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 425
    .local v13, prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 427
    const v20, 0x7f0c0067

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    .line 428
    const-string v20, "voice_mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_36a

    const/16 v20, 0x0

    .line 428
    :goto_a6
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Settings;->mVoiceOn:Z

    .line 432
    const-string v20, "auto_correction_threshold"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    .line 431
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

    .line 433
    const-string v20, "bigram_suggestion"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mBigramSuggestion:Landroid/preference/CheckBoxPreference;

    .line 434
    const-string v20, "bigram_prediction"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    .line 435
    const-string v20, "debug_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11f

    .line 437
    new-instance v3, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v3, debugSettingsIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/android/inputmethod/latin/DebugSettings;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    .line 438
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 443
    .end local v3           #debugSettingsIntent:Landroid/content/Intent;
    :cond_11f
    const-string v20, "download_full"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mPref_download_full:Landroid/preference/Preference;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mPref_download_full:Landroid/preference/Preference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/inputmethod/latin/Settings$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Settings$1;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 456
    const-string v20, "pref_select_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 457
    .local v12, pref_select_background:Landroid/preference/Preference;
    new-instance v20, Lcom/android/inputmethod/latin/Settings$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Settings$2;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/Settings;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 472
    const-string v20, "general_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 474
    .local v6, generalSettings:Landroid/preference/PreferenceGroup;
    const-string v20, "correction_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceGroup;

    .line 476
    .local v19, textCorrectionGroup:Landroid/preference/PreferenceGroup;
    const-string v20, "misc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 477
    .local v8, miscSettings:Landroid/preference/PreferenceGroup;
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/Settings;->grayDonationFeatures()V

    .line 479
    invoke-static {v14}, Lcom/android/inputmethod/latin/Settings$Values;->isShowSettingsKeyOption(Landroid/content/res/Resources;)Z

    move-result v20

    if-nez v20, :cond_194

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mShowSettingsKeyPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 484
    :cond_194
    const v20, 0x7f080004

    .line 483
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 485
    .local v18, showVoiceKeyOption:Z
    if-nez v18, :cond_1aa

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 489
    :cond_1aa
    invoke-static {v2}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->hasVibrator()Z

    move-result v20

    if-nez v20, :cond_1c3

    .line 490
    const-string v20, "vibrate_on"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 498
    :cond_1c3
    const v20, 0x7f080005

    .line 497
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 499
    .local v16, showPopupOption:Z
    if-nez v16, :cond_1dd

    .line 500
    const-string v20, "popup_on"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 504
    :cond_1dd
    const v20, 0x7f080006

    .line 503
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 505
    .local v15, showBigramSuggestionsOption:Z
    if-nez v15, :cond_202

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mBigramSuggestion:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_202

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 513
    :cond_202
    const-string v20, "pref_key_preview_popup_dismiss_delay"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    .line 512
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    .line 514
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    .line 515
    const v21, 0x7f0c0089

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    const/16 v20, 0x1

    .line 516
    const v21, 0x7f0c008a

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    .line 519
    .local v5, entries:[Ljava/lang/String;
    const v20, 0x7f0a0007

    .line 518
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, popupDismissDelayDefaultValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    .line 522
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    .line 521
    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_27e

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 526
    :cond_27e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-static {v13, v14}, Lcom/android/inputmethod/latin/Settings$Values;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 529
    const-string v20, "configure_dictionaries_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 530
    .local v4, dictionaryLink:Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 532
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v9

    .line 533
    .local v9, number:I
    if-gtz v9, :cond_2b4

    .line 534
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 538
    :cond_2b4
    const v20, 0x7f080007

    .line 537
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    .line 539
    .local v17, showUsabilityModeStudyOption:Z
    if-eqz v17, :cond_2bf

    .line 540
    :cond_2bf
    const-string v20, "usability_study_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 541
    .local v11, pref:Landroid/preference/Preference;
    if-eqz v11, :cond_2ce

    .line 542
    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 547
    :cond_2ce
    const-string v20, "pref_vibration_duration_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    .line 546
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2ff

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    .line 550
    new-instance v21, Lcom/android/inputmethod/latin/Settings$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Settings$3;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    .line 549
    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 557
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/inputmethod/latin/Settings;->updateVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 561
    :cond_2ff
    const-string v20, "pref_keyboard_height_settings_portrait"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    .line 560
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mKeyboardHieghtSettingsPref:Landroid/preference/PreferenceScreen;

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyboardHieghtSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_334

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyboardHieghtSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    .line 564
    new-instance v21, Lcom/android/inputmethod/latin/Settings$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Settings$4;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    .line 563
    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 571
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v14, v1}, Lcom/android/inputmethod/latin/Settings;->updateKeyboardHeightSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)V

    .line 575
    :cond_334
    const-string v20, "pref_keyboard_height_settings_landscape"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    .line 574
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mKeyboardHieghtLandscapeSettingsPref:Landroid/preference/PreferenceScreen;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyboardHieghtLandscapeSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_369

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyboardHieghtLandscapeSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    .line 578
    new-instance v21, Lcom/android/inputmethod/latin/Settings$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Settings$5;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    .line 577
    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 585
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v14, v1}, Lcom/android/inputmethod/latin/Settings;->updateKeyboardHeightSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)V

    .line 588
    :cond_369
    return-void

    .line 429
    .end local v4           #dictionaryLink:Landroid/preference/PreferenceScreen;
    .end local v5           #entries:[Ljava/lang/String;
    .end local v6           #generalSettings:Landroid/preference/PreferenceGroup;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #miscSettings:Landroid/preference/PreferenceGroup;
    .end local v9           #number:I
    .end local v10           #popupDismissDelayDefaultValue:Ljava/lang/String;
    .end local v11           #pref:Landroid/preference/Preference;
    .end local v12           #pref_select_background:Landroid/preference/Preference;
    .end local v15           #showBigramSuggestionsOption:Z
    .end local v16           #showPopupOption:Z
    .end local v17           #showUsabilityModeStudyOption:Z
    .end local v18           #showVoiceKeyOption:Z
    .end local v19           #textCorrectionGroup:Landroid/preference/PreferenceGroup;
    :cond_36a
    const/16 v20, 0x1

    goto/16 :goto_a6
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 14
    .parameter "id"

    .prologue
    const v11, 0x7f0c00d3

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 681
    packed-switch p1, :pswitch_data_a0

    .line 721
    sget-object v5, Lcom/android/inputmethod/latin/Settings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unknown dialog "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v1, 0x0

    :goto_1f
    return-object v1

    .line 683
    :pswitch_20
    new-instance v2, Lcom/android/inputmethod/latin/Settings$6;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/Settings$6;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    .line 693
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 694
    const v6, 0x7f0c00d1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 695
    const v6, 0x104000a

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 696
    const/high16 v6, 0x104

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 702
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 701
    invoke-static {p0, v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 705
    .local v3, localeSupported:Z
    if-eqz v3, :cond_76

    .line 706
    new-array v5, v10, [Ljava/lang/CharSequence;

    .line 707
    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "\n\n"

    aput-object v6, v5, v8

    .line 708
    const v6, 0x7f0c00d5

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 715
    .local v4, message:Ljava/lang/CharSequence;
    :goto_69
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 716
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 717
    .local v1, dialog:Landroid/app/AlertDialog;
    iput-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mDialog:Landroid/app/AlertDialog;

    .line 718
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1f

    .line 710
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v4           #message:Ljava/lang/CharSequence;
    :cond_76
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 711
    const v6, 0x7f0c00d2

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "\n\n"

    aput-object v6, v5, v8

    .line 712
    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "\n\n"

    aput-object v6, v5, v10

    const/4 v6, 0x4

    .line 713
    const v7, 0x7f0c00d5

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #message:Ljava/lang/CharSequence;
    goto :goto_69

    .line 681
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 610
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 611
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    if-nez v0, :cond_b

    .line 731
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 733
    :cond_b
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "pref"

    .prologue
    const/4 v0, 0x0

    .line 639
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mInputLanguageSelection:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_13

    .line 640
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getInputLanguageSelectionIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->startActivity(Landroid/content/Intent;)V

    .line 644
    const/4 v0, 0x1

    .line 646
    :cond_13
    return v0
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 593
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 594
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v0

    .line 595
    .local v0, isShortcutImeEnabled:Z
    if-nez v0, :cond_17

    .line 597
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 598
    :cond_17
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoiceModeSummary()V

    .line 602
    :goto_1a
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateShowCorrectionSuggestionsSummary()V

    .line 603
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateKeyPreviewPopupDelaySummary()V

    .line 604
    return-void

    .line 600
    :cond_21
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1a
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    .line 615
    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 617
    const-string v2, "voice_mode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceOn:Z

    if-nez v2, :cond_4c

    .line 618
    const-string v2, "voice_mode"

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 619
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 620
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->showVoiceConfirmation()V

    .line 629
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 630
    const-string v2, "voice_mode"

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 631
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v1, 0x0

    .line 630
    :cond_40
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceOn:Z

    .line 632
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoiceModeSummary()V

    .line 633
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateShowCorrectionSuggestionsSummary()V

    .line 634
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateKeyPreviewPopupDelaySummary()V

    .line 635
    return-void

    .line 622
    :cond_4c
    const-string v2, "popup_on"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 624
    const-string v2, "pref_key_preview_popup_dismiss_delay"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 625
    .local v0, popupDismissDelay:Landroid/preference/ListPreference;
    if-eqz v0, :cond_2c

    .line 626
    const-string v2, "popup_on"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_2c
.end method
