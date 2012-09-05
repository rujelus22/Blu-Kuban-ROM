.class public Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;
.super Ljava/lang/Object;
.source "PersonalizationPrefManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private final mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private final mPref:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mContext:Landroid/content/Context;

    .line 105
    iput-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    .line 106
    iput-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 107
    iput-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;Lcom/google/android/voicesearch/logging/VoiceSearchLogger;)V
    .registers 6
    .parameter "context"
    .parameter "helper"
    .parameter "logger"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mContext:Landroid/content/Context;

    .line 96
    const-string v0, "VoiceSearchPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    .line 98
    iput-object p2, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 99
    iput-object p3, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 100
    return-void
.end method

.method private getPersonalizationValue()I
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->getPersonalizationValue(Z)I

    move-result v0

    return v0
.end method

.method private getPersonalizationValue(Z)I
    .registers 6
    .parameter "refresh"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref-voice-personalization-status"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, personalizationMode:I
    if-eqz v0, :cond_10

    if-eqz p1, :cond_26

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 264
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->isPersonalizationAvailable()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 265
    const/4 v0, 0x5

    .line 269
    :goto_17
    iget-object v1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref-voice-personalization-status"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 275
    :cond_26
    return v0

    .line 267
    :cond_27
    const/4 v0, 0x1

    goto :goto_17
.end method


# virtual methods
.method public handleGservicesChange(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 223
    iget-object v2, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "pref-voice-personalization-status"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, personalizationMode:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->isPersonalizationAvailable()Z

    move-result v1

    .line 225
    .local v1, personalizationPermitted:Z
    if-eq v0, v5, :cond_12

    if-nez v0, :cond_24

    :cond_12
    if-eqz v1, :cond_24

    .line 228
    iget-object v2, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref-voice-personalization-status"

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 231
    :cond_24
    if-nez v1, :cond_37

    if-eq v0, v5, :cond_37

    .line 232
    iget-object v2, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref-voice-personalization-status"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 235
    :cond_37
    return-void
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->getPersonalizationValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isPersonalizationAvailable()Z
    .registers 15

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x0

    .line 177
    iget-object v11, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v0

    .line 179
    .local v0, accountHelper:Lcom/google/android/voicesearch/util/AccountHelper;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/util/AccountHelper;->hasGoogleAccount()Z

    move-result v11

    if-nez v11, :cond_1a

    .line 181
    const-string v11, "PersonalizationPrefManagerImpl"

    const-string v12, "No google account found"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_19
    :goto_19
    return v10

    .line 184
    :cond_1a
    const-string v11, "PersonalizationPrefManagerImpl"

    const-string v12, "Google account found"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v11, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mContext:Landroid/content/Context;

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 188
    .local v9, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, simOperator:Ljava/lang/String;
    if-eqz v8, :cond_19

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v13, :cond_19

    .line 191
    invoke-virtual {v8, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 192
    .local v6, mcc:I
    iget-object v11, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v11}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationCountries()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, country:[Ljava/lang/String;
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4e
    if-ge v4, v5, :cond_63

    aget-object v7, v1, v4

    .line 196
    .local v7, s:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v11, v13, :cond_5b

    .line 193
    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 199
    :cond_5b
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 200
    .local v2, code:I
    if-ne v2, v6, :cond_58

    .line 202
    const/4 v10, 0x1

    goto :goto_19

    .line 211
    .end local v2           #code:I
    .end local v7           #s:Ljava/lang/String;
    :cond_63
    const-string v11, "PersonalizationPrefManagerImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Personalization disabled for SIM country code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public isSet()Z
    .registers 3

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->getPersonalizationValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    invoke-direct {p0}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->getPersonalizationValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setEnabled(ZI)V
    .registers 6
    .parameter "enabled"
    .parameter "source"

    .prologue
    .line 142
    if-eqz p1, :cond_23

    .line 143
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref-voice-personalization-status"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 150
    :goto_12
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1a

    .line 151
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationPopup(Z)V

    .line 154
    :cond_1a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_22

    .line 155
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationSetting(Z)V

    .line 157
    :cond_22
    return-void

    .line 146
    :cond_23
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref-voice-personalization-status"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_12
.end method
