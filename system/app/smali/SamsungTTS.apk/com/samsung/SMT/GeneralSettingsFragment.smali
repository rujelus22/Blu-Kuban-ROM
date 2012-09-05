.class public Lcom/samsung/SMT/GeneralSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "GeneralSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final DATA_EXISTS_IN_NOWHERE:I = -0x1

.field static final DATA_EXISTS_IN_STORAGE_AREA:I = 0x1

.field static final DATA_EXISTS_IN_SYSTEM_AREA:I = 0x0

.field static final DEU_DEU_F01_DATA_PATH:Ljava/lang/String; = "deu-DEU-f01 Data Path"

.field static final DEU_DEU_TOTAL_AVAILABLE_VARIANTS_COUNT:I = 0x1

.field static final DEU_DEU_VARIANT_INDEX:Ljava/lang/String; = "deu-DEU Variant Index"

.field static final ENG_GBR_F01_DATA_PATH:Ljava/lang/String; = "eng-GBR-f01 Data Path"

.field static final ENG_GBR_TOTAL_AVAILABLE_VARIANTS_COUNT:I = 0x1

.field static final ENG_GBR_VARIANT_INDEX:Ljava/lang/String; = "eng-GBR Variant Index"

.field static final ENG_USA_D01_DATA_PATH:Ljava/lang/String; = "eng-USA-d01 Data Path"

.field static final ENG_USA_F01_DATA_PATH:Ljava/lang/String; = "eng-USA-f01 Data Path"

.field static final ENG_USA_TOTAL_AVAILABLE_VARIANTS_COUNT:I = 0x1

.field static final ENG_USA_VARIANT_INDEX:Ljava/lang/String; = "eng-USA Variant Index"

.field static final FRA_FRA_F01_DATA_PATH:Ljava/lang/String; = "fra-FRA-f01 Data Path"

.field static final FRA_FRA_TOTAL_AVAILABLE_VARIANTS_COUNT:I = 0x1

.field static final FRA_FRA_VARIANT_INDEX:Ljava/lang/String; = "fra-FRA Variant Index"

.field static final ITA_ITA_F01_DATA_PATH:Ljava/lang/String; = "ita-ITA-f01 Data Path"

.field static final ITA_ITA_TOTAL_AVAILABLE_VARIANTS_COUNT:I = 0x1

.field static final ITA_ITA_VARIANT_INDEX:Ljava/lang/String; = "ita-ITA Variant Index"

.field static final KOR_KOR_F01_DATA_PATH:Ljava/lang/String; = "kor-KOR-f01 Data Path"

.field static final KOR_KOR_M01_DATA_PATH:Ljava/lang/String; = "kor-KOR-m01 Data Path"

.field static final KOR_KOR_TOTAL_AVAILABLE_VARIANTS_COUNT:I = 0x2

.field static final KOR_KOR_VARIANT_INDEX:Ljava/lang/String; = "kor-KOR Variant Index"

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "SamsungTTSSettings"

.field static final SMT_LANGUAGE_DEU_DEU_F01:I = 0x6

.field static final SMT_LANGUAGE_ENG_GBR_F01:I = 0x8

.field static final SMT_LANGUAGE_ENG_USA_D01:I = 0x3

.field static final SMT_LANGUAGE_ENG_USA_F01:I = 0x2

.field static final SMT_LANGUAGE_FRA_FRA_F01:I = 0x7

.field static final SMT_LANGUAGE_ITA_ITA_F01:I = 0x9

.field static final SMT_LANGUAGE_KOR_KOR_F01:I = 0x0

.field static final SMT_LANGUAGE_KOR_KOR_M01:I = 0x1

.field static final SMT_LANGUAGE_SPA_ESP_F01:I = 0x5

.field static final SMT_LANGUAGE_ZHO_CHN_F01:I = 0x4

.field static final SMT_SPECTRUM_DEF:F = 0.42f

.field static final SMT_SPECTRUM_MAX:F = 0.62f

.field static final SMT_SPECTRUM_MIN:F = 0.22f

.field static final SMT_VOICEEFFECTS_DEEP:I = 0x1

.field static final SMT_VOICEEFFECTS_HELIUM_GAS:I = 0x6

.field static final SMT_VOICEEFFECTS_HIGH:I = 0x2

.field static final SMT_VOICEEFFECTS_NORMAL:I = 0x0

.field static final SMT_VOICEEFFECTS_ROBOT:I = 0x5

.field static final SMT_VOICEEFFECTS_THICK:I = 0x4

.field static final SMT_VOICEEFFECTS_THIN:I = 0x3

.field static final SPA_ESP_F01_DATA_PATH:Ljava/lang/String; = "spa-ESP-f01 Data Path"

.field static final SPA_ESP_TOTAL_AVAILABLE_VARIANTS_COUNT:I = 0x1

.field static final SPA_ESP_VARIANT_INDEX:Ljava/lang/String; = "spa-ESP Variant Index"

.field static final SPECTRUM_VALUE:Ljava/lang/String; = "Spectrum Value"

.field static final TAG:Ljava/lang/String; = "Samsung TTS"

.field static final VOICE_EFFECTS_INDEX:Ljava/lang/String; = "Voice Effects Index"

.field static final ZHO_CHN_F01_DATA_PATH:Ljava/lang/String; = "zho-CHN-f01 Data Path"

.field static final ZHO_CHN_TOTAL_AVAILABLE_VARIANTS_COUNT:I = 0x1

.field static final ZHO_CHN_VARIANT_INDEX:Ljava/lang/String; = "zho-CHN Variant Index"


# instance fields
.field private m_acsEntriesdeuDEU:[Ljava/lang/CharSequence;

.field private m_acsEntriesengGBR:[Ljava/lang/CharSequence;

.field private m_acsEntriesengUSA:[Ljava/lang/CharSequence;

.field private m_acsEntriesfraFRA:[Ljava/lang/CharSequence;

.field private m_acsEntriesitaITA:[Ljava/lang/CharSequence;

.field private m_acsEntrieskorKOR:[Ljava/lang/CharSequence;

.field private m_acsEntriesspaESP:[Ljava/lang/CharSequence;

.field private m_acsEntrieszhoCHN:[Ljava/lang/CharSequence;

.field private m_acsValuesdeuDEU:[Ljava/lang/CharSequence;

.field private m_acsValuesengGBR:[Ljava/lang/CharSequence;

.field private m_acsValuesengUSA:[Ljava/lang/CharSequence;

.field private m_acsValuesfraFRA:[Ljava/lang/CharSequence;

.field private m_acsValuesitaITA:[Ljava/lang/CharSequence;

.field private m_acsValueskorKOR:[Ljava/lang/CharSequence;

.field private m_acsValuesspaESP:[Ljava/lang/CharSequence;

.field private m_acsValueszhoCHN:[Ljava/lang/CharSequence;

.field private volatile m_iDataPathdeuDEUf01:I

.field private volatile m_iDataPathengGBRf01:I

.field private volatile m_iDataPathengUSAd01:I

.field private volatile m_iDataPathengUSAf01:I

.field private volatile m_iDataPathfraFRAf01:I

.field private volatile m_iDataPathitaITAf01:I

.field private volatile m_iDataPathkorKORf01:I

.field private volatile m_iDataPathkorKORm01:I

.field private volatile m_iDataPathspaESPf01:I

.field private volatile m_iDataPathzhoCHNf01:I

.field private volatile m_iVariantIndexdeuDEU:I

.field private volatile m_iVariantIndexengGBR:I

.field private volatile m_iVariantIndexengUSA:I

.field private volatile m_iVariantIndexfraFRA:I

.field private volatile m_iVariantIndexitaITA:I

.field private volatile m_iVariantIndexkorKOR:I

.field private volatile m_iVariantIndexspaESP:I

.field private volatile m_iVariantIndexzhoCHN:I

.field private volatile m_iVoiceEffectsIndex:I

.field private m_oSharedPrefs:Landroid/content/SharedPreferences;

.field private m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

.field private m_prefLanguageengGBR:Landroid/preference/ListPreference;

.field private m_prefLanguageengUSA:Landroid/preference/ListPreference;

.field private m_prefLanguagefraFRA:Landroid/preference/ListPreference;

.field private m_prefLanguageitaITA:Landroid/preference/ListPreference;

.field private m_prefLanguagekorKOR:Landroid/preference/ListPreference;

.field private m_prefLanguagespaESP:Landroid/preference/ListPreference;

.field private m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

.field private m_prefOpenSourceLicenses:Landroid/preference/Preference;

.field private m_prefVoiceEffects:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    .line 101
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefOpenSourceLicenses:Landroid/preference/Preference;

    .line 103
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    .line 104
    iput v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    .line 106
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    .line 107
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    .line 108
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    .line 109
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    .line 110
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    .line 111
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    .line 112
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    .line 113
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    .line 115
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieskorKOR:[Ljava/lang/CharSequence;

    .line 116
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesengUSA:[Ljava/lang/CharSequence;

    .line 117
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieszhoCHN:[Ljava/lang/CharSequence;

    .line 118
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesspaESP:[Ljava/lang/CharSequence;

    .line 119
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesdeuDEU:[Ljava/lang/CharSequence;

    .line 120
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesfraFRA:[Ljava/lang/CharSequence;

    .line 121
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesengGBR:[Ljava/lang/CharSequence;

    .line 122
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesitaITA:[Ljava/lang/CharSequence;

    .line 124
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueskorKOR:[Ljava/lang/CharSequence;

    .line 125
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengUSA:[Ljava/lang/CharSequence;

    .line 126
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueszhoCHN:[Ljava/lang/CharSequence;

    .line 127
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesspaESP:[Ljava/lang/CharSequence;

    .line 128
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesdeuDEU:[Ljava/lang/CharSequence;

    .line 129
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesfraFRA:[Ljava/lang/CharSequence;

    .line 130
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengGBR:[Ljava/lang/CharSequence;

    .line 131
    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesitaITA:[Ljava/lang/CharSequence;

    .line 133
    iput v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORf01:I

    .line 134
    iput v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORm01:I

    .line 135
    iput v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAf01:I

    .line 136
    iput v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAd01:I

    .line 137
    iput v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathzhoCHNf01:I

    .line 138
    iput v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathspaESPf01:I

    .line 139
    iput v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathdeuDEUf01:I

    .line 140
    iput v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathfraFRAf01:I

    .line 141
    iput v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengGBRf01:I

    .line 142
    iput v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathitaITAf01:I

    .line 144
    iput v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    .line 145
    iput v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    .line 146
    iput v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    .line 147
    iput v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    .line 148
    iput v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    .line 149
    iput v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    .line 150
    iput v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    .line 151
    iput v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    .line 33
    return-void
.end method

.method private getVoiceEffectsIndex()I
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_e

    .line 157
    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    .line 159
    :cond_e
    iget-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "Voice Effects Index"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 31
    .parameter "savedInstanceState"

    .prologue
    .line 166
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v26

    const-string v27, "SamsungTTSSettings"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 169
    const/high16 v26, 0x7f02

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->addPreferencesFromResource(I)V

    .line 171
    const-string v26, "open_source_licences"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefOpenSourceLicenses:Landroid/preference/Preference;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefOpenSourceLicenses:Landroid/preference/Preference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 177
    .local v25, prefSettingsEditor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "Voice Effects Index"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7f

    .line 181
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    .line 182
    const-string v26, "Voice Effects Index"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 185
    :cond_7f
    const-string v26, "change_voice_effects"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/ListPreference;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1bde

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f03

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    :goto_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "kor-KOR-f01 Data Path"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORf01:I

    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_102

    .line 228
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORf01:I

    .line 229
    const-string v26, "kor-KOR-f01 Data Path"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORf01:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 232
    :cond_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "kor-KOR-m01 Data Path"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORm01:I

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORm01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_137

    .line 236
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORm01:I

    .line 237
    const-string v26, "kor-KOR-m01 Data Path"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORm01:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 240
    :cond_137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "eng-USA-f01 Data Path"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAf01:I

    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16c

    .line 244
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAf01:I

    .line 245
    const-string v26, "eng-USA-f01 Data Path"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAf01:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 248
    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "eng-USA-d01 Data Path"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAd01:I

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAd01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a1

    .line 252
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAd01:I

    .line 253
    const-string v26, "eng-USA-d01 Data Path"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAd01:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "zho-CHN-f01 Data Path"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathzhoCHNf01:I

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathzhoCHNf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d6

    .line 260
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathzhoCHNf01:I

    .line 261
    const-string v26, "zho-CHN-f01 Data Path"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathzhoCHNf01:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 264
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "spa-ESP-f01 Data Path"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathspaESPf01:I

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathspaESPf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_20b

    .line 268
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathspaESPf01:I

    .line 269
    const-string v26, "spa-ESP-f01 Data Path"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathspaESPf01:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    :cond_20b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "deu-DEU-f01 Data Path"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathdeuDEUf01:I

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathdeuDEUf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_240

    .line 276
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathdeuDEUf01:I

    .line 277
    const-string v26, "deu-DEU-f01 Data Path"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathdeuDEUf01:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 280
    :cond_240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "fra-FRA-f01 Data Path"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathfraFRAf01:I

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathfraFRAf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_275

    .line 284
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathfraFRAf01:I

    .line 285
    const-string v26, "fra-FRA-f01 Data Path"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathfraFRAf01:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 288
    :cond_275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "eng-GBR-f01 Data Path"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengGBRf01:I

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengGBRf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2aa

    .line 292
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengGBRf01:I

    .line 293
    const-string v26, "eng-GBR-f01 Data Path"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengGBRf01:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 296
    :cond_2aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "ita-ITA-f01 Data Path"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathitaITAf01:I

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathitaITAf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2df

    .line 300
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathitaITAf01:I

    .line 301
    const-string v26, "ita-ITA-f01 Data Path"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathitaITAf01:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 304
    :cond_2df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "kor-KOR Variant Index"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_314

    .line 308
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    .line 309
    const-string v26, "kor-KOR Variant Index"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 312
    :cond_314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "eng-USA Variant Index"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    .line 314
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_349

    .line 316
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    .line 317
    const-string v26, "eng-USA Variant Index"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 320
    :cond_349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "zho-CHN Variant Index"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_37e

    .line 324
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    .line 325
    const-string v26, "zho-CHN Variant Index"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 328
    :cond_37e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "spa-ESP Variant Index"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3b3

    .line 332
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    .line 333
    const-string v26, "spa-ESP Variant Index"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 336
    :cond_3b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "deu-DEU Variant Index"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3e8

    .line 340
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    .line 341
    const-string v26, "deu-DEU Variant Index"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 344
    :cond_3e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "fra-FRA Variant Index"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_41d

    .line 348
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    .line 349
    const-string v26, "fra-FRA Variant Index"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 352
    :cond_41d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "eng-GBR Variant Index"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    .line 354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_452

    .line 356
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    .line 357
    const-string v26, "eng-GBR Variant Index"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 360
    :cond_452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "ita-ITA Variant Index"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_487

    .line 364
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    .line 365
    const-string v26, "ita-ITA Variant Index"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 368
    :cond_487
    const/4 v14, 0x0

    .line 369
    .local v14, iVariantsCount:I
    const/4 v13, 0x0

    .line 370
    .local v13, iEntriesCount:I
    const/4 v11, 0x0

    .line 371
    .local v11, bMatch:Z
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v8, v0, [Z

    .line 373
    .local v8, abkorKORVariantsAvailable:[Z
    const-string v26, "installed_languages_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    .line 376
    .local v16, languagesCategory:Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4b8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORm01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_668

    .line 378
    :cond_4b8
    new-instance v22, Ljava/util/Locale;

    const-string v26, "kor"

    const-string v27, "KOR"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .local v22, localekorKOR:Ljava/util/Locale;
    new-instance v26, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12f2

    .line 384
    const/16 v26, 0x0

    const/16 v27, 0x1

    aput-boolean v27, v8, v26

    .line 385
    add-int/lit8 v14, v14, 0x1

    .line 391
    :goto_51a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathkorKORm01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12fa

    .line 393
    const/16 v26, 0x1

    const/16 v27, 0x1

    aput-boolean v27, v8, v26

    .line 394
    add-int/lit8 v14, v14, 0x1

    .line 400
    :goto_530
    if-eqz v14, :cond_668

    .line 402
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieskorKOR:[Ljava/lang/CharSequence;

    .line 403
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueskorKOR:[Ljava/lang/CharSequence;

    .line 405
    const/4 v12, 0x0

    .local v12, i:I
    :goto_547
    const/16 v26, 0x2

    move/from16 v0, v26

    if-lt v12, v0, :cond_1302

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieskorKOR:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueskorKOR:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 431
    const/4 v15, 0x0

    .local v15, j:I
    :goto_56c
    if-lt v15, v13, :cond_13da

    .line 440
    if-nez v11, :cond_597

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueskorKOR:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 446
    :cond_597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1bf0

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f04000f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 460
    :goto_5dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const-string v27, "select_kor_KOR_variant"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 469
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v22           #localekorKOR:Ljava/util/Locale;
    :cond_668
    const/4 v14, 0x0

    .line 470
    const/4 v13, 0x0

    .line 471
    const/4 v11, 0x0

    .line 472
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v5, v0, [Z

    .line 475
    .local v5, abengUSAVariantsAvailable:[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_819

    .line 477
    new-instance v19, Ljava/util/Locale;

    const-string v26, "eng"

    const-string v27, "USA"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .local v19, localeengUSA:Ljava/util/Locale;
    new-instance v26, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengUSAf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1482

    .line 483
    const/16 v26, 0x0

    const/16 v27, 0x1

    aput-boolean v27, v5, v26

    .line 484
    add-int/lit8 v14, v14, 0x1

    .line 490
    :goto_6e1
    if-eqz v14, :cond_819

    .line 492
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesengUSA:[Ljava/lang/CharSequence;

    .line 493
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengUSA:[Ljava/lang/CharSequence;

    .line 495
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_6f8
    const/16 v26, 0x1

    move/from16 v0, v26

    if-lt v12, v0, :cond_148a

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesengUSA:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengUSA:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 517
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_71d
    if-lt v15, v13, :cond_1525

    .line 526
    if-nez v11, :cond_748

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengUSA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 532
    :cond_748
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1bf8

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040011

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 542
    :goto_78d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const-string v27, "select_eng_USA_variant"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 551
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v19           #localeengUSA:Ljava/util/Locale;
    :cond_819
    const/4 v14, 0x0

    .line 552
    const/4 v13, 0x0

    .line 553
    const/4 v11, 0x0

    .line 554
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v10, v0, [Z

    .line 557
    .local v10, abzhoCHNVariantsAvailable:[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathzhoCHNf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9ca

    .line 559
    new-instance v24, Ljava/util/Locale;

    const-string v26, "zho"

    const-string v27, "CHN"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .local v24, localezhoCHN:Ljava/util/Locale;
    new-instance v26, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 563
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathzhoCHNf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_158f

    .line 565
    const/16 v26, 0x0

    const/16 v27, 0x1

    aput-boolean v27, v10, v26

    .line 566
    add-int/lit8 v14, v14, 0x1

    .line 572
    :goto_892
    if-eqz v14, :cond_9ca

    .line 574
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieszhoCHN:[Ljava/lang/CharSequence;

    .line 575
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueszhoCHN:[Ljava/lang/CharSequence;

    .line 577
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_8a9
    const/16 v26, 0x1

    move/from16 v0, v26

    if-lt v12, v0, :cond_1597

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieszhoCHN:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueszhoCHN:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 599
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_8ce
    if-lt v15, v13, :cond_1632

    .line 608
    if-nez v11, :cond_8f9

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueszhoCHN:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 614
    :cond_8f9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1bfe

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040012

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 624
    :goto_93e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const-string v27, "select_zho_CHN_variant"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 633
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v24           #localezhoCHN:Ljava/util/Locale;
    :cond_9ca
    const/4 v14, 0x0

    .line 634
    const/4 v13, 0x0

    .line 635
    const/4 v11, 0x0

    .line 636
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v9, v0, [Z

    .line 639
    .local v9, abspaESPVariantsAvailable:[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathspaESPf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_b7b

    .line 641
    new-instance v23, Ljava/util/Locale;

    const-string v26, "spa"

    const-string v27, "ESP"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .local v23, localespaESP:Ljava/util/Locale;
    new-instance v26, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathspaESPf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_169c

    .line 647
    const/16 v26, 0x0

    const/16 v27, 0x1

    aput-boolean v27, v9, v26

    .line 648
    add-int/lit8 v14, v14, 0x1

    .line 654
    :goto_a43
    if-eqz v14, :cond_b7b

    .line 656
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesspaESP:[Ljava/lang/CharSequence;

    .line 657
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesspaESP:[Ljava/lang/CharSequence;

    .line 659
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_a5a
    const/16 v26, 0x1

    move/from16 v0, v26

    if-lt v12, v0, :cond_16a4

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesspaESP:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesspaESP:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 681
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_a7f
    if-lt v15, v13, :cond_173f

    .line 690
    if-nez v11, :cond_aaa

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesspaESP:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 696
    :cond_aaa
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1c04

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040013

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 706
    :goto_aef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const-string v27, "select_spa_ESP_variant"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 715
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v23           #localespaESP:Ljava/util/Locale;
    :cond_b7b
    const/4 v14, 0x0

    .line 716
    const/4 v13, 0x0

    .line 717
    const/4 v11, 0x0

    .line 718
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v3, v0, [Z

    .line 721
    .local v3, abdeuDEUVariantsAvailable:[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathdeuDEUf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_d2c

    .line 723
    new-instance v17, Ljava/util/Locale;

    const-string v26, "deu"

    const-string v27, "DEU"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .local v17, localedeuDEU:Ljava/util/Locale;
    new-instance v26, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathdeuDEUf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_17a9

    .line 729
    const/16 v26, 0x0

    const/16 v27, 0x1

    aput-boolean v27, v3, v26

    .line 730
    add-int/lit8 v14, v14, 0x1

    .line 736
    :goto_bf4
    if-eqz v14, :cond_d2c

    .line 738
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesdeuDEU:[Ljava/lang/CharSequence;

    .line 739
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesdeuDEU:[Ljava/lang/CharSequence;

    .line 741
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_c0b
    const/16 v26, 0x1

    move/from16 v0, v26

    if-lt v12, v0, :cond_17b1

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesdeuDEU:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesdeuDEU:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 763
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_c30
    if-lt v15, v13, :cond_184c

    .line 772
    if-nez v11, :cond_c5b

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesdeuDEU:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 778
    :cond_c5b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1c0a

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040014

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 788
    :goto_ca0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const-string v27, "select_deu_DEU_variant"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 797
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v17           #localedeuDEU:Ljava/util/Locale;
    :cond_d2c
    const/4 v14, 0x0

    .line 798
    const/4 v13, 0x0

    .line 799
    const/4 v11, 0x0

    .line 800
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v6, v0, [Z

    .line 803
    .local v6, abfraFRAVariantsAvailable:[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathfraFRAf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_edd

    .line 805
    new-instance v20, Ljava/util/Locale;

    const-string v26, "fra"

    const-string v27, "FRA"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .local v20, localefraFRA:Ljava/util/Locale;
    new-instance v26, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 809
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathfraFRAf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18b6

    .line 811
    const/16 v26, 0x0

    const/16 v27, 0x1

    aput-boolean v27, v6, v26

    .line 812
    add-int/lit8 v14, v14, 0x1

    .line 818
    :goto_da5
    if-eqz v14, :cond_edd

    .line 820
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesfraFRA:[Ljava/lang/CharSequence;

    .line 821
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesfraFRA:[Ljava/lang/CharSequence;

    .line 823
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_dbc
    const/16 v26, 0x1

    move/from16 v0, v26

    if-lt v12, v0, :cond_18be

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesfraFRA:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesfraFRA:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 845
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_de1
    if-lt v15, v13, :cond_1959

    .line 854
    if-nez v11, :cond_e0c

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesfraFRA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 860
    :cond_e0c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1c10

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040015

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 870
    :goto_e51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const-string v27, "select_fra_FRA_variant"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 879
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v20           #localefraFRA:Ljava/util/Locale;
    :cond_edd
    const/4 v14, 0x0

    .line 880
    const/4 v13, 0x0

    .line 881
    const/4 v11, 0x0

    .line 882
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v4, v0, [Z

    .line 885
    .local v4, abengGBRVariantsAvailable:[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengGBRf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_108e

    .line 887
    new-instance v18, Ljava/util/Locale;

    const-string v26, "eng"

    const-string v27, "GBR"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .local v18, localeengGBR:Ljava/util/Locale;
    new-instance v26, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 891
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathengGBRf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_19c3

    .line 893
    const/16 v26, 0x0

    const/16 v27, 0x1

    aput-boolean v27, v4, v26

    .line 894
    add-int/lit8 v14, v14, 0x1

    .line 900
    :goto_f56
    if-eqz v14, :cond_108e

    .line 902
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesengGBR:[Ljava/lang/CharSequence;

    .line 903
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengGBR:[Ljava/lang/CharSequence;

    .line 905
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_f6d
    const/16 v26, 0x1

    move/from16 v0, v26

    if-lt v12, v0, :cond_19cb

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesengGBR:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengGBR:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 927
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_f92
    if-lt v15, v13, :cond_1a66

    .line 936
    if-nez v11, :cond_fbd

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengGBR:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 942
    :cond_fbd
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1c16

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040016

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 952
    :goto_1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const-string v27, "select_eng_GBR_variant"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 961
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v18           #localeengGBR:Ljava/util/Locale;
    :cond_108e
    const/4 v14, 0x0

    .line 962
    const/4 v13, 0x0

    .line 963
    const/4 v11, 0x0

    .line 964
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v7, v0, [Z

    .line 967
    .local v7, abitaITAVariantsAvailable:[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathitaITAf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_123f

    .line 969
    new-instance v21, Ljava/util/Locale;

    const-string v26, "ita"

    const-string v27, "ITA"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    .local v21, localeitaITA:Ljava/util/Locale;
    new-instance v26, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 973
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iDataPathitaITAf01:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1ad0

    .line 975
    const/16 v26, 0x0

    const/16 v27, 0x1

    aput-boolean v27, v7, v26

    .line 976
    add-int/lit8 v14, v14, 0x1

    .line 982
    :goto_1107
    if-eqz v14, :cond_123f

    .line 984
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesitaITA:[Ljava/lang/CharSequence;

    .line 985
    new-array v0, v14, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesitaITA:[Ljava/lang/CharSequence;

    .line 987
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_111e
    const/16 v26, 0x1

    move/from16 v0, v26

    if-lt v12, v0, :cond_1ad8

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesitaITA:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesitaITA:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1009
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_1143
    if-lt v15, v13, :cond_1b73

    .line 1018
    if-nez v11, :cond_116e

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesitaITA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1024
    :cond_116e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1c1c

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040017

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1034
    :goto_11b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const-string v27, "select_ita_ITA_variant"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1043
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v21           #localeitaITA:Ljava/util/Locale;
    :cond_123f
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1044
    return-void

    .line 191
    .end local v3           #abdeuDEUVariantsAvailable:[Z
    .end local v4           #abengGBRVariantsAvailable:[Z
    .end local v5           #abengUSAVariantsAvailable:[Z
    .end local v6           #abfraFRAVariantsAvailable:[Z
    .end local v7           #abitaITAVariantsAvailable:[Z
    .end local v8           #abkorKORVariantsAvailable:[Z
    .end local v9           #abspaESPVariantsAvailable:[Z
    .end local v10           #abzhoCHNVariantsAvailable:[Z
    .end local v11           #bMatch:Z
    .end local v13           #iEntriesCount:I
    .end local v14           #iVariantsCount:I
    .end local v16           #languagesCategory:Landroid/preference/PreferenceGroup;
    :pswitch_1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f03

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c0

    .line 195
    :pswitch_125c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f03

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c0

    .line 199
    :pswitch_1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f03

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c0

    .line 203
    :pswitch_128e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f03

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x3

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c0

    .line 207
    :pswitch_12a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f03

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c0

    .line 211
    :pswitch_12c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f03

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x5

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c0

    .line 215
    :pswitch_12d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f03

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x6

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c0

    .line 389
    .restart local v8       #abkorKORVariantsAvailable:[Z
    .restart local v11       #bMatch:Z
    .restart local v13       #iEntriesCount:I
    .restart local v14       #iVariantsCount:I
    .restart local v16       #languagesCategory:Landroid/preference/PreferenceGroup;
    .restart local v22       #localekorKOR:Ljava/util/Locale;
    :cond_12f2
    const/16 v26, 0x0

    const/16 v27, 0x0

    aput-boolean v27, v8, v26

    goto/16 :goto_51a

    .line 398
    :cond_12fa
    const/16 v26, 0x1

    const/16 v27, 0x0

    aput-boolean v27, v8, v26

    goto/16 :goto_530

    .line 407
    .restart local v12       #i:I
    :cond_1302
    aget-boolean v26, v8, v12

    if-eqz v26, :cond_135d

    .line 409
    packed-switch v12, :pswitch_data_1c22

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieskorKOR:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f04000f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 423
    :goto_1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueskorKOR:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 424
    add-int/lit8 v13, v13, 0x1

    .line 405
    :cond_135d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_547

    .line 412
    :pswitch_1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieskorKOR:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f04000f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    goto :goto_1344

    .line 416
    :pswitch_139d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieskorKOR:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040010

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040019

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    goto/16 :goto_1344

    .line 433
    .restart local v15       #j:I
    :cond_13da
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueskorKOR:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1402

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 436
    const/4 v11, 0x1

    .line 431
    :cond_1402
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_56c

    .line 449
    :pswitch_1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f04000f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5dc

    .line 453
    :pswitch_1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040010

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040019

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5dc

    .line 488
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v22           #localekorKOR:Ljava/util/Locale;
    .restart local v5       #abengUSAVariantsAvailable:[Z
    .restart local v19       #localeengUSA:Ljava/util/Locale;
    :cond_1482
    const/16 v26, 0x0

    const/16 v27, 0x0

    aput-boolean v27, v5, v26

    goto/16 :goto_6e1

    .line 497
    .restart local v12       #i:I
    :cond_148a
    aget-boolean v26, v5, v12

    if-eqz v26, :cond_14e5

    .line 499
    packed-switch v12, :pswitch_data_1c2a

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesengUSA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040011

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 509
    :goto_14cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengUSA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 510
    add-int/lit8 v13, v13, 0x1

    .line 495
    :cond_14e5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6f8

    .line 502
    :pswitch_14e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesengUSA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040011

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    goto :goto_14cc

    .line 519
    .restart local v15       #j:I
    :cond_1525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengUSA:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_154d

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 522
    const/4 v11, 0x1

    .line 517
    :cond_154d
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_71d

    .line 535
    :pswitch_1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040011

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_78d

    .line 570
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v19           #localeengUSA:Ljava/util/Locale;
    .restart local v10       #abzhoCHNVariantsAvailable:[Z
    .restart local v24       #localezhoCHN:Ljava/util/Locale;
    :cond_158f
    const/16 v26, 0x0

    const/16 v27, 0x0

    aput-boolean v27, v10, v26

    goto/16 :goto_892

    .line 579
    .restart local v12       #i:I
    :cond_1597
    aget-boolean v26, v10, v12

    if-eqz v26, :cond_15f2

    .line 581
    packed-switch v12, :pswitch_data_1c30

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieszhoCHN:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040012

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 591
    :goto_15d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueszhoCHN:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 592
    add-int/lit8 v13, v13, 0x1

    .line 577
    :cond_15f2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8a9

    .line 584
    :pswitch_15f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntrieszhoCHN:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040012

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    goto :goto_15d9

    .line 601
    .restart local v15       #j:I
    :cond_1632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValueszhoCHN:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_165a

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 604
    const/4 v11, 0x1

    .line 599
    :cond_165a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8ce

    .line 617
    :pswitch_165e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040012

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_93e

    .line 652
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v24           #localezhoCHN:Ljava/util/Locale;
    .restart local v9       #abspaESPVariantsAvailable:[Z
    .restart local v23       #localespaESP:Ljava/util/Locale;
    :cond_169c
    const/16 v26, 0x0

    const/16 v27, 0x0

    aput-boolean v27, v9, v26

    goto/16 :goto_a43

    .line 661
    .restart local v12       #i:I
    :cond_16a4
    aget-boolean v26, v9, v12

    if-eqz v26, :cond_16ff

    .line 663
    packed-switch v12, :pswitch_data_1c36

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesspaESP:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040013

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 673
    :goto_16e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesspaESP:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 674
    add-int/lit8 v13, v13, 0x1

    .line 659
    :cond_16ff
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a5a

    .line 666
    :pswitch_1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesspaESP:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040013

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    goto :goto_16e6

    .line 683
    .restart local v15       #j:I
    :cond_173f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesspaESP:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1767

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 686
    const/4 v11, 0x1

    .line 681
    :cond_1767
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a7f

    .line 699
    :pswitch_176b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040013

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_aef

    .line 734
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v23           #localespaESP:Ljava/util/Locale;
    .restart local v3       #abdeuDEUVariantsAvailable:[Z
    .restart local v17       #localedeuDEU:Ljava/util/Locale;
    :cond_17a9
    const/16 v26, 0x0

    const/16 v27, 0x0

    aput-boolean v27, v3, v26

    goto/16 :goto_bf4

    .line 743
    .restart local v12       #i:I
    :cond_17b1
    aget-boolean v26, v3, v12

    if-eqz v26, :cond_180c

    .line 745
    packed-switch v12, :pswitch_data_1c3c

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesdeuDEU:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040014

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 755
    :goto_17f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesdeuDEU:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 756
    add-int/lit8 v13, v13, 0x1

    .line 741
    :cond_180c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_c0b

    .line 748
    :pswitch_1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesdeuDEU:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040014

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    goto :goto_17f3

    .line 765
    .restart local v15       #j:I
    :cond_184c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesdeuDEU:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1874

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 768
    const/4 v11, 0x1

    .line 763
    :cond_1874
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_c30

    .line 781
    :pswitch_1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040014

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_ca0

    .line 816
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v17           #localedeuDEU:Ljava/util/Locale;
    .restart local v6       #abfraFRAVariantsAvailable:[Z
    .restart local v20       #localefraFRA:Ljava/util/Locale;
    :cond_18b6
    const/16 v26, 0x0

    const/16 v27, 0x0

    aput-boolean v27, v6, v26

    goto/16 :goto_da5

    .line 825
    .restart local v12       #i:I
    :cond_18be
    aget-boolean v26, v6, v12

    if-eqz v26, :cond_1919

    .line 827
    packed-switch v12, :pswitch_data_1c42

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesfraFRA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040015

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 837
    :goto_1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesfraFRA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 838
    add-int/lit8 v13, v13, 0x1

    .line 823
    :cond_1919
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_dbc

    .line 830
    :pswitch_191d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesfraFRA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040015

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    goto :goto_1900

    .line 847
    .restart local v15       #j:I
    :cond_1959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesfraFRA:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1981

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 850
    const/4 v11, 0x1

    .line 845
    :cond_1981
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_de1

    .line 863
    :pswitch_1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040015

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_e51

    .line 898
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v20           #localefraFRA:Ljava/util/Locale;
    .restart local v4       #abengGBRVariantsAvailable:[Z
    .restart local v18       #localeengGBR:Ljava/util/Locale;
    :cond_19c3
    const/16 v26, 0x0

    const/16 v27, 0x0

    aput-boolean v27, v4, v26

    goto/16 :goto_f56

    .line 907
    .restart local v12       #i:I
    :cond_19cb
    aget-boolean v26, v4, v12

    if-eqz v26, :cond_1a26

    .line 909
    packed-switch v12, :pswitch_data_1c48

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesengGBR:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040016

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 919
    :goto_1a0d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengGBR:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 920
    add-int/lit8 v13, v13, 0x1

    .line 905
    :cond_1a26
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_f6d

    .line 912
    :pswitch_1a2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesengGBR:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040016

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    goto :goto_1a0d

    .line 929
    .restart local v15       #j:I
    :cond_1a66
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesengGBR:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a8e

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 932
    const/4 v11, 0x1

    .line 927
    :cond_1a8e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_f92

    .line 945
    :pswitch_1a92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040016

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1002

    .line 980
    .end local v12           #i:I
    .end local v15           #j:I
    .end local v18           #localeengGBR:Ljava/util/Locale;
    .restart local v7       #abitaITAVariantsAvailable:[Z
    .restart local v21       #localeitaITA:Ljava/util/Locale;
    :cond_1ad0
    const/16 v26, 0x0

    const/16 v27, 0x0

    aput-boolean v27, v7, v26

    goto/16 :goto_1107

    .line 989
    .restart local v12       #i:I
    :cond_1ad8
    aget-boolean v26, v7, v12

    if-eqz v26, :cond_1b33

    .line 991
    packed-switch v12, :pswitch_data_1c4e

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesitaITA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040017

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 1001
    :goto_1b1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesitaITA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    .line 1002
    add-int/lit8 v13, v13, 0x1

    .line 987
    :cond_1b33
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_111e

    .line 994
    :pswitch_1b37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsEntriesitaITA:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040017

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v13

    goto :goto_1b1a

    .line 1011
    .restart local v15       #j:I
    :cond_1b73
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_acsValuesitaITA:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b9b

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1014
    const/4 v11, 0x1

    .line 1009
    :cond_1b9b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1143

    .line 1027
    :pswitch_1b9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f040017

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f040018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_11b3

    .line 188
    nop

    :pswitch_data_1bde
    .packed-switch 0x0
        :pswitch_1243
        :pswitch_125c
        :pswitch_1275
        :pswitch_128e
        :pswitch_12a7
        :pswitch_12c0
        :pswitch_12d9
    .end packed-switch

    .line 446
    :pswitch_data_1bf0
    .packed-switch 0x0
        :pswitch_1406
        :pswitch_1444
    .end packed-switch

    .line 532
    :pswitch_data_1bf8
    .packed-switch 0x0
        :pswitch_1551
    .end packed-switch

    .line 614
    :pswitch_data_1bfe
    .packed-switch 0x0
        :pswitch_165e
    .end packed-switch

    .line 696
    :pswitch_data_1c04
    .packed-switch 0x0
        :pswitch_176b
    .end packed-switch

    .line 778
    :pswitch_data_1c0a
    .packed-switch 0x0
        :pswitch_1878
    .end packed-switch

    .line 860
    :pswitch_data_1c10
    .packed-switch 0x0
        :pswitch_1985
    .end packed-switch

    .line 942
    :pswitch_data_1c16
    .packed-switch 0x0
        :pswitch_1a92
    .end packed-switch

    .line 1024
    :pswitch_data_1c1c
    .packed-switch 0x0
        :pswitch_1b9f
    .end packed-switch

    .line 409
    :pswitch_data_1c22
    .packed-switch 0x0
        :pswitch_1361
        :pswitch_139d
    .end packed-switch

    .line 499
    :pswitch_data_1c2a
    .packed-switch 0x0
        :pswitch_14e9
    .end packed-switch

    .line 581
    :pswitch_data_1c30
    .packed-switch 0x0
        :pswitch_15f6
    .end packed-switch

    .line 663
    :pswitch_data_1c36
    .packed-switch 0x0
        :pswitch_1703
    .end packed-switch

    .line 745
    :pswitch_data_1c3c
    .packed-switch 0x0
        :pswitch_1810
    .end packed-switch

    .line 827
    :pswitch_data_1c42
    .packed-switch 0x0
        :pswitch_191d
    .end packed-switch

    .line 909
    :pswitch_data_1c48
    .packed-switch 0x0
        :pswitch_1a2a
    .end packed-switch

    .line 991
    :pswitch_data_1c4e
    .packed-switch 0x0
        :pswitch_1b37
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 1049
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 1051
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1053
    .local v0, prefSettingsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Voice Effects Index"

    iget v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1054
    const-string v1, "kor-KOR Variant Index"

    iget v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1055
    const-string v1, "eng-USA Variant Index"

    iget v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1056
    const-string v1, "zho-CHN Variant Index"

    iget v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1057
    const-string v1, "spa-ESP Variant Index"

    iget v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1058
    const-string v1, "deu-DEU Variant Index"

    iget v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1059
    const-string v1, "fra-FRA Variant Index"

    iget v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1060
    const-string v1, "eng-GBR Variant Index"

    iget v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1061
    const-string v1, "ita-ITA Variant Index"

    iget v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1063
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1064
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 1069
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 1070
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const v7, 0x7f04000f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v3, 0x7f03

    const v4, 0x7f040018

    .line 1088
    const/4 v0, 0x0

    .line 1090
    .local v0, iValue:I
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1092
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "change_voice_effects"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 1094
    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    .line 1096
    iget v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    packed-switch v1, :pswitch_data_2f4

    .line 1127
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1187
    :cond_33
    :goto_33
    return v5

    .line 1099
    :pswitch_34
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1103
    :pswitch_44
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1107
    :pswitch_54
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1111
    :pswitch_65
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1115
    :pswitch_76
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1119
    :pswitch_87
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1123
    :pswitch_98
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1131
    :cond_a9
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_kor_KOR_variant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 1133
    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    .line 1135
    iget v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    if-nez v1, :cond_e7

    .line 1136
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1138
    :cond_e7
    iget v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexkorKOR:I

    if-ne v1, v5, :cond_11d

    .line 1139
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f040010

    invoke-virtual {p0, v3}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f040019

    invoke-virtual {p0, v3}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1142
    :cond_11d
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagekorKOR:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1145
    :cond_149
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_eng_USA_variant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_186

    .line 1147
    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengUSA:I

    .line 1148
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengUSA:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f040011

    invoke-virtual {p0, v3}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1151
    :cond_186
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_zho_CHN_variant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c3

    .line 1153
    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexzhoCHN:I

    .line 1154
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagezhoCHN:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f040012

    invoke-virtual {p0, v3}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1157
    :cond_1c3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_spa_ESP_variant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_200

    .line 1159
    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexspaESP:I

    .line 1160
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagespaESP:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f040013

    invoke-virtual {p0, v3}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1163
    :cond_200
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_deu_DEU_variant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23d

    .line 1165
    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexdeuDEU:I

    .line 1166
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagedeuDEU:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f040014

    invoke-virtual {p0, v3}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1169
    :cond_23d
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_fra_FRA_variant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27a

    .line 1171
    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexfraFRA:I

    .line 1172
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguagefraFRA:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f040015

    invoke-virtual {p0, v3}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1175
    :cond_27a
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_eng_GBR_variant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b7

    .line 1177
    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexengGBR:I

    .line 1178
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageengGBR:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f040016

    invoke-virtual {p0, v3}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1181
    :cond_2b7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_ita_ITA_variant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1183
    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVariantIndexitaITA:I

    .line 1184
    iget-object v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefLanguageitaITA:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f040017

    invoke-virtual {p0, v3}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/SMT/GeneralSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1096
    :pswitch_data_2f4
    .packed-switch 0x0
        :pswitch_34
        :pswitch_44
        :pswitch_54
        :pswitch_65
        :pswitch_76
        :pswitch_87
        :pswitch_98
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    .line 1193
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/SMT/DisplayLicense;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1194
    .local v0, oIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/SMT/GeneralSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1196
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 1075
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 1077
    invoke-direct {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getVoiceEffectsIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    .line 1079
    iget v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1080
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    .line 1082
    :cond_11
    iget-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1083
    iget-object v0, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_prefVoiceEffects:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/SMT/GeneralSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/SMT/GeneralSettingsFragment;->m_iVoiceEffectsIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1084
    return-void
.end method
