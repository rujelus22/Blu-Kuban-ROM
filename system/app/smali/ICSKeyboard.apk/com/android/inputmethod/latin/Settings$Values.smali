.class public Lcom/android/inputmethod/latin/Settings$Values;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation


# static fields
.field private static final PREF_RECORRECTION_ENABLED:Ljava/lang/String; = "recorrection_enabled"


# instance fields
.field public mAlwaysSuggest:Z

.field public final mAutoCap:Z

.field public final mAutoCorrectEnabled:Z

.field public final mAutoCorrectionThreshold:D

.field public mAutoSpaceAfterPunc:Z

.field public final mBigramPredictionEnabled:Z

.field public final mBigramSuggestionEnabled:Z

.field public final mDelayBeforeFadeoutLanguageOnSpacebar:I

.field public final mDelayUpdateOldSuggestions:I

.field public final mDelayUpdateShiftState:I

.field public final mDelayUpdateSuggestions:I

.field public final mDoubleSpacesTurnIntoPeriodTimeout:J

.field public final mDurationOfFadeoutLanguageOnSpacebar:I

.field public final mEnableSuggestionSpanInsertion:Z

.field public final mFinalFadeoutFactorOfLanguageOnSpacebar:F

.field public final mKeyPreviewPopupDismissDelay:I

.field public final mKeyPreviewPopupOn:Z

.field public final mMagicSpaceStrippers:Ljava/lang/String;

.field public final mMagicSpaceSwappers:Ljava/lang/String;

.field public mReCorrectionEnabled:Z

.field private final mShowSettingsKey:Z

.field public final mSoundOn:Z

.field public final mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

.field public final mSuggestPuncs:Ljava/lang/String;

.field private final mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

.field public final mUseContactsDict:Z

.field public final mVibrateOn:Z

.field private final mVoiceKeyEnabled:Z

.field private final mVoiceKeyOnMain:Z

.field public final mWordSeparators:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V
    .registers 17
    .parameter "prefs"
    .parameter "context"
    .parameter "localeStr"

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 165
    .local v4, res:Landroid/content/res/Resources;
    if-eqz p3, :cond_16a

    .line 166
    invoke-static/range {p3 .. p3}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 167
    .local v3, keyboardLocale:Ljava/util/Locale;
    invoke-static {v4, v3}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v5

    .line 174
    .end local v3           #keyboardLocale:Ljava/util/Locale;
    .local v5, savedLocale:Ljava/util/Locale;
    :goto_11
    const/high16 v11, 0x7f0a

    .line 173
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mDelayBeforeFadeoutLanguageOnSpacebar:I

    .line 176
    const v11, 0x7f0a0001

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 175
    iput v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mDelayUpdateSuggestions:I

    .line 178
    const v11, 0x7f0a0002

    .line 177
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mDelayUpdateOldSuggestions:I

    .line 180
    const v11, 0x7f0a0003

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 179
    iput v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mDelayUpdateShiftState:I

    .line 182
    const v11, 0x7f0a0004

    .line 181
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mDurationOfFadeoutLanguageOnSpacebar:I

    .line 184
    const v11, 0x7f0a0005

    .line 183
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-float v11, v11

    .line 184
    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    .line 183
    iput v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mFinalFadeoutFactorOfLanguageOnSpacebar:F

    .line 186
    const v11, 0x7f0a0012

    .line 185
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-long v11, v11

    iput-wide v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mDoubleSpacesTurnIntoPeriodTimeout:J

    .line 187
    const v11, 0x7f0c0054

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceStrippers:Ljava/lang/String;

    .line 188
    const v11, 0x7f0c0053

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceSwappers:Ljava/lang/String;

    .line 189
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceStrippers:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceSwappers:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 190
    const v12, 0x7f0c0055

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 189
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, wordSeparators:Ljava/lang/String;
    const v11, 0x7f0c0056

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, symbolsExcludedFromWordSeparators:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .local v2, i:I
    :goto_93
    if-gez v2, :cond_16d

    .line 197
    iput-object v6, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

    .line 198
    iput-object v10, p0, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    .line 199
    const v11, 0x7f0c0052

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncs:Ljava/lang/String;

    .line 201
    iget-object v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncs:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/inputmethod/latin/Settings$Values;->createSuggestPuncList(Ljava/lang/String;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v11

    iput-object v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 204
    invoke-static {p2}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->hasVibrator()Z

    move-result v1

    .line 205
    .local v1, hasVibrator:Z
    if-eqz v1, :cond_17d

    const-string v11, "vibrate_on"

    .line 206
    const v12, 0x7f08000e

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 205
    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_17d

    const/4 v11, 0x1

    :goto_c4
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mVibrateOn:Z

    .line 207
    const-string v11, "sound_on"

    .line 208
    const v12, 0x7f08000d

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 207
    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSoundOn:Z

    .line 209
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mKeyPreviewPopupOn:Z

    .line 210
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v11

    iput v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mKeyPreviewPopupDismissDelay:I

    .line 211
    const-string v11, "auto_cap"

    const/4 v12, 0x1

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCap:Z

    .line 212
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->isAutoCorrectEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    .line 213
    iget-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v11, :cond_180

    .line 214
    iget-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    invoke-static {p1, v4, v11}, Lcom/android/inputmethod/latin/Settings$Values;->isBigramSuggestionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)Z

    move-result v11

    if-eqz v11, :cond_180

    const/4 v11, 0x1

    .line 213
    :goto_fd
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mBigramSuggestionEnabled:Z

    .line 215
    iget-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mBigramSuggestionEnabled:Z

    if-eqz v11, :cond_183

    .line 216
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->isBigramPredictionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v11

    if-eqz v11, :cond_183

    const/4 v11, 0x1

    .line 215
    :goto_10a
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mBigramPredictionEnabled:Z

    .line 217
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->getAutoCorrectionThreshold(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)D

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectionThreshold:D

    .line 218
    const-string v11, "pref_key_use_contacts_dict"

    const/4 v12, 0x1

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mUseContactsDict:Z

    .line 220
    const-string v11, "enable_span_insert"

    const/4 v12, 0x1

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 219
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mEnableSuggestionSpanInsertion:Z

    .line 222
    const v11, 0x7f080003

    .line 221
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 223
    .local v0, defaultShowSettingsKey:Z
    invoke-static {v4}, Lcom/android/inputmethod/latin/Settings$Values;->isShowSettingsKeyOption(Landroid/content/res/Resources;)Z

    move-result v11

    if-eqz v11, :cond_137

    .line 224
    const-string v11, "show_settings_key"

    invoke-interface {p1, v11, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 223
    .end local v0           #defaultShowSettingsKey:Z
    :cond_137
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mShowSettingsKey:Z

    .line 226
    const v11, 0x7f0c0065

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, voiceModeMain:Ljava/lang/String;
    const v11, 0x7f0c0067

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, voiceModeOff:Ljava/lang/String;
    const-string v11, "voice_mode"

    invoke-interface {p1, v11, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, voiceMode:Ljava/lang/String;
    if-eqz v7, :cond_185

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_185

    const/4 v11, 0x1

    :goto_156
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mVoiceKeyEnabled:Z

    .line 230
    if-eqz v7, :cond_187

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_187

    const/4 v11, 0x1

    :goto_161
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mVoiceKeyOnMain:Z

    .line 232
    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 233
    invoke-direct {p0, p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->donationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 234
    return-void

    .line 169
    .end local v1           #hasVibrator:Z
    .end local v2           #i:I
    .end local v5           #savedLocale:Ljava/util/Locale;
    .end local v6           #symbolsExcludedFromWordSeparators:Ljava/lang/String;
    .end local v7           #voiceMode:Ljava/lang/String;
    .end local v8           #voiceModeMain:Ljava/lang/String;
    .end local v9           #voiceModeOff:Ljava/lang/String;
    .end local v10           #wordSeparators:Ljava/lang/String;
    :cond_16a
    const/4 v5, 0x0

    .restart local v5       #savedLocale:Ljava/util/Locale;
    goto/16 :goto_11

    .line 195
    .restart local v2       #i:I
    .restart local v6       #symbolsExcludedFromWordSeparators:Ljava/lang/String;
    .restart local v10       #wordSeparators:Ljava/lang/String;
    :cond_16d
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v6, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    .line 194
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 193
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_93

    .line 205
    .restart local v1       #hasVibrator:Z
    :cond_17d
    const/4 v11, 0x0

    goto/16 :goto_c4

    .line 214
    :cond_180
    const/4 v11, 0x0

    goto/16 :goto_fd

    .line 216
    :cond_183
    const/4 v11, 0x0

    goto :goto_10a

    .line 229
    .restart local v7       #voiceMode:Ljava/lang/String;
    .restart local v8       #voiceModeMain:Ljava/lang/String;
    .restart local v9       #voiceModeOff:Ljava/lang/String;
    :cond_185
    const/4 v11, 0x0

    goto :goto_156

    .line 230
    :cond_187
    const/4 v11, 0x0

    goto :goto_161
.end method

.method private static createSuggestPuncList(Ljava/lang/String;)Lcom/android/inputmethod/latin/SuggestedWords;
    .registers 4
    .parameter "puncs"

    .prologue
    .line 326
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    .line 327
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    if-eqz p0, :cond_e

    .line 328
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_17

    .line 332
    .end local v1           #i:I
    :cond_e
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setIsPunctuationSuggestions()Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    return-object v2

    .line 329
    .restart local v1       #i:I
    :cond_17
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private donationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .registers 6
    .parameter "prefs"
    .parameter "res"

    .prologue
    const/4 v2, 0x0

    .line 356
    const-string v0, "recorrection_enabled"

    .line 357
    const v1, 0x7f080012

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 356
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mReCorrectionEnabled:Z

    .line 358
    const-string v0, "always_suggest"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAlwaysSuggest:Z

    .line 359
    const-string v0, "auto_space"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoSpaceAfterPunc:Z

    .line 360
    return-void
.end method

.method private static getAutoCorrectionThreshold(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)D
    .registers 11
    .parameter "sp"
    .parameter "resources"

    .prologue
    .line 301
    .line 302
    const-string v6, "auto_correction_threshold"

    .line 303
    const v7, 0x7f0c0062

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 301
    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, currentAutoCorrectionSetting:Ljava/lang/String;
    const/high16 v6, 0x7f0d

    .line 304
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, autoCorrectionThresholdValues:[Ljava/lang/String;
    const-wide v1, 0x7fefffffffffffffL

    .line 309
    .local v1, autoCorrectionThreshold:D
    :try_start_18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 310
    .local v0, arrayIndex:I
    if-ltz v0, :cond_2b

    array-length v6, v3

    if-ge v0, v6, :cond_2b

    .line 312
    aget-object v6, v3, v0

    .line 311
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_2a} :catch_2c

    move-result-wide v1

    .line 322
    .end local v0           #arrayIndex:I
    :cond_2b
    :goto_2b
    return-wide v1

    .line 314
    :catch_2c
    move-exception v5

    .line 316
    .local v5, e:Ljava/lang/NumberFormatException;
    const-wide v1, 0x7fefffffffffffffL

    .line 317
    invoke-static {}, Lcom/android/inputmethod/latin/Settings;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cannot load auto correction threshold setting. currentAutoCorrectionSetting: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 319
    const-string v8, ", autoCorrectionThresholdValues: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 320
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 317
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public static getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 4
    .parameter "sp"
    .parameter "resources"

    .prologue
    .line 278
    const-string v0, "pref_key_preview_popup_dismiss_delay"

    .line 279
    const v1, 0x7f0a0007

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static isAutoCorrectEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .registers 6
    .parameter "sp"
    .parameter "resources"

    .prologue
    .line 257
    .line 258
    const-string v2, "auto_correction_threshold"

    .line 259
    const v3, 0x7f0c0062

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, currentAutoCorrectionSetting:Ljava/lang/String;
    const v2, 0x7f0c0061

    .line 260
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, autoCorrectionOff:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method private static isBigramPredictionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .registers 4
    .parameter "sp"
    .parameter "resources"

    .prologue
    .line 295
    const-string v0, "bigram_prediction"

    .line 296
    const v1, 0x7f08000c

    .line 295
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isBigramSuggestionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)Z
    .registers 6
    .parameter "sp"
    .parameter "resources"
    .parameter "autoCorrectEnabled"

    .prologue
    .line 284
    .line 285
    const v1, 0x7f080006

    .line 284
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 286
    .local v0, showBigramSuggestionsOption:Z
    if-nez v0, :cond_a

    .line 289
    .end local p2
    :goto_9
    return p2

    .restart local p2
    :cond_a
    const-string v1, "bigram_suggestion"

    .line 290
    const v2, 0x7f08000b

    .line 289
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_9
.end method

.method public static isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .registers 5
    .parameter "sp"
    .parameter "resources"

    .prologue
    const v2, 0x7f08000a

    .line 268
    .line 269
    const v1, 0x7f080005

    .line 268
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 270
    .local v0, showPopupOption:Z
    if-nez v0, :cond_11

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 271
    :goto_10
    return v1

    :cond_11
    const-string v1, "popup_on"

    .line 272
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 271
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_10
.end method

.method public static isShowSettingsKeyOption(Landroid/content/res/Resources;)Z
    .registers 2
    .parameter "resources"

    .prologue
    .line 336
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isMagicSpaceStripper(I)Z
    .registers 4
    .parameter "code"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceStrippers:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isMagicSpaceSwapper(I)Z
    .registers 4
    .parameter "code"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceSwappers:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isSettingsKeyEnabled()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mShowSettingsKey:Z

    return v0
.end method

.method public isSuggestedPunctuation(I)Z
    .registers 4
    .parameter "code"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncs:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isSymbolExcludedFromWordSeparators(I)Z
    .registers 4
    .parameter "code"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isVoiceKeyEnabled(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 6
    .parameter "attribute"

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v1

    .line 346
    .local v1, shortcutImeEnabled:Z
    if-eqz p1, :cond_1b

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 347
    .local v0, inputType:I
    :goto_d
    if-eqz v1, :cond_1a

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Settings$Values;->mVoiceKeyEnabled:Z

    if-eqz v3, :cond_1a

    .line 348
    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    return v2

    .end local v0           #inputType:I
    :cond_1b
    move v0, v2

    .line 346
    goto :goto_d
.end method

.method public isVoiceKeyOnMain()Z
    .registers 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mVoiceKeyOnMain:Z

    return v0
.end method

.method public isWordSeparator(I)Z
    .registers 4
    .parameter "code"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
