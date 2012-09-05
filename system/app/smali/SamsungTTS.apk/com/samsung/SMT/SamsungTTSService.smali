.class public Lcom/samsung/SMT/SamsungTTSService;
.super Landroid/speech/tts/TextToSpeechService;
.source "SamsungTTSService.java"


# static fields
.field private static final SAMPLES_PER_FRAME:I = 0x50

.field private static final SAMPLING_RATE_HZ:I = 0x3e80

.field private static final SYNTHESIS_IS_DOING:I = 0x0

.field private static final SYNTHESIS_IS_DONE:I = 0x1

.field private static final SYNTHESIS_IS_STOPPED:I = -0x1


# instance fields
.field private final m_abPCMBuffer:[B

.field private volatile m_bIsSamsungProduct:Z

.field private volatile m_bStopRequested:Z

.field private volatile m_fSpectrumValue:F

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

.field private volatile m_szCurrentLanguage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1055
    :try_start_0
    const-string v1, "samsungtts"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 41
    .local v0, e:Ljava/lang/Exception;
    :goto_5
    return-void

    .line 1058
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 1060
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "Samsung TTS"

    const-string v2, "Fail to load libsamsungtts.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;-><init>()V

    .line 56
    const/16 v0, 0xa0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_abPCMBuffer:[B

    .line 57
    iput-object v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_bStopRequested:Z

    .line 59
    iput-boolean v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_bIsSamsungProduct:Z

    .line 61
    iput-object v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    .line 63
    const v0, 0x3ed70a3d

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_fSpectrumValue:F

    .line 64
    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVoiceEffectsIndex:I

    .line 66
    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORf01:I

    .line 67
    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORm01:I

    .line 68
    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAf01:I

    .line 69
    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAd01:I

    .line 70
    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathzhoCHNf01:I

    .line 71
    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathspaESPf01:I

    .line 72
    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathdeuDEUf01:I

    .line 73
    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathfraFRAf01:I

    .line 74
    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengGBRf01:I

    .line 75
    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathitaITAf01:I

    .line 77
    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexkorKOR:I

    .line 78
    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexengUSA:I

    .line 79
    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexzhoCHN:I

    .line 80
    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexspaESP:I

    .line 81
    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexdeuDEU:I

    .line 82
    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexfraFRA:I

    .line 83
    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexengGBR:I

    .line 84
    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexitaITA:I

    .line 41
    return-void
.end method

.method private generateFrameOfAudio(Landroid/speech/tts/SynthesisCallback;)I
    .registers 6
    .parameter "cb"

    .prologue
    .line 1007
    const/4 v0, 0x0

    .line 1014
    .local v0, iResult:I
    iget-boolean v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_bStopRequested:Z

    if-eqz v1, :cond_7

    .line 1015
    const/4 v1, -0x1

    .line 1040
    :goto_6
    return v1

    .line 1018
    :cond_7
    iget-object v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_abPCMBuffer:[B

    invoke-direct {p0, v1}, Lcom/samsung/SMT/SamsungTTSService;->getSynthesizedData([B)I

    move-result v1

    packed-switch v1, :pswitch_data_22

    .line 1037
    const/4 v0, 0x1

    :goto_11
    move v1, v0

    .line 1040
    goto :goto_6

    .line 1022
    :pswitch_13
    iget-object v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_abPCMBuffer:[B

    const/4 v2, 0x0

    const/16 v3, 0xa0

    invoke-interface {p1, v1, v2, v3}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    .line 1023
    const/4 v0, 0x0

    .line 1025
    goto :goto_11

    .line 1028
    :pswitch_1d
    const/4 v0, 0x1

    .line 1029
    goto :goto_11

    .line 1033
    :pswitch_1f
    const/4 v0, 0x0

    .line 1034
    goto :goto_11

    .line 1018
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_13
        :pswitch_1d
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method private native getSynthesizedData([B)I
.end method

.method private getVoiceEffectsIndex()I
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_d

    .line 90
    const-string v0, "SamsungTTSSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/SMT/SamsungTTSService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    .line 92
    :cond_d
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "Voice Effects Index"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private native initialize()I
.end method

.method private isControlParametersForSamsungTTS(Ljava/lang/String;)Z
    .registers 7
    .parameter "szParameters"

    .prologue
    const/16 v4, 0x12

    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, bResult:Z
    const-string v1, "<SMT:VoiceEffects>"

    invoke-virtual {p1, v2, v1, v2, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 213
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVoiceEffectsIndex:I

    .line 214
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVoiceEffectsIndex:I

    invoke-direct {p0, v1}, Lcom/samsung/SMT/SamsungTTSService;->setVoiceEffectsIndex(I)V

    .line 215
    const/4 v0, 0x1

    .line 224
    :cond_1e
    :goto_1e
    return v0

    .line 218
    :cond_1f
    const-string v1, "<SMT:Spectrum>"

    invoke-virtual {p1, v2, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 220
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_fSpectrumValue:F

    .line 221
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method private loadVariantIndexes()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 107
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_e

    .line 108
    const-string v0, "SamsungTTSSettings"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/SMT/SamsungTTSService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    .line 110
    :cond_e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "kor-KOR Variant Index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexkorKOR:I

    .line 112
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexkorKOR:I

    if-ne v0, v2, :cond_1e

    .line 113
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexkorKOR:I

    .line 115
    :cond_1e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "eng-USA Variant Index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexengUSA:I

    .line 117
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexengUSA:I

    if-ne v0, v2, :cond_2e

    .line 118
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexengUSA:I

    .line 120
    :cond_2e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "zho-CHN Variant Index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexzhoCHN:I

    .line 122
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexzhoCHN:I

    if-ne v0, v2, :cond_3e

    .line 123
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexzhoCHN:I

    .line 125
    :cond_3e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "spa-ESP Variant Index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexspaESP:I

    .line 127
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexspaESP:I

    if-ne v0, v2, :cond_4e

    .line 128
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexspaESP:I

    .line 130
    :cond_4e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "deu-DEU Variant Index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexdeuDEU:I

    .line 132
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexdeuDEU:I

    if-ne v0, v2, :cond_5e

    .line 133
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexdeuDEU:I

    .line 135
    :cond_5e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fra-FRA Variant Index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexfraFRA:I

    .line 137
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexfraFRA:I

    if-ne v0, v2, :cond_6e

    .line 138
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexfraFRA:I

    .line 140
    :cond_6e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "eng-GBR Variant Index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexengGBR:I

    .line 142
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexengGBR:I

    if-ne v0, v2, :cond_7e

    .line 143
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexengGBR:I

    .line 145
    :cond_7e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ita-ITA Variant Index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexitaITA:I

    .line 147
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexitaITA:I

    if-ne v0, v2, :cond_8e

    .line 148
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexitaITA:I

    .line 149
    :cond_8e
    return-void
.end method

.method private loadVoiceDataPath()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 153
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_e

    .line 154
    const-string v0, "SamsungTTSSettings"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/SMT/SamsungTTSService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    .line 156
    :cond_e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "kor-KOR-f01 Data Path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORf01:I

    .line 158
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORf01:I

    if-ne v0, v2, :cond_1e

    .line 159
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORf01:I

    .line 161
    :cond_1e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "kor-KOR-m01 Data Path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORm01:I

    .line 163
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORm01:I

    if-ne v0, v2, :cond_2e

    .line 164
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORm01:I

    .line 166
    :cond_2e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "eng-USA-f01 Data Path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAf01:I

    .line 168
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAf01:I

    if-ne v0, v2, :cond_3e

    .line 169
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAf01:I

    .line 171
    :cond_3e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "eng-USA-d01 Data Path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAd01:I

    .line 173
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAd01:I

    if-ne v0, v2, :cond_4e

    .line 174
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAd01:I

    .line 176
    :cond_4e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "zho-CHN-f01 Data Path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathzhoCHNf01:I

    .line 178
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathzhoCHNf01:I

    if-ne v0, v2, :cond_5e

    .line 179
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathzhoCHNf01:I

    .line 181
    :cond_5e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "spa-ESP-f01 Data Path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathspaESPf01:I

    .line 183
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathspaESPf01:I

    if-ne v0, v2, :cond_6e

    .line 184
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathspaESPf01:I

    .line 186
    :cond_6e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "deu-DEU-f01 Data Path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathdeuDEUf01:I

    .line 188
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathdeuDEUf01:I

    if-ne v0, v2, :cond_7e

    .line 189
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathdeuDEUf01:I

    .line 191
    :cond_7e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fra-FRA-f01 Data Path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathfraFRAf01:I

    .line 193
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathfraFRAf01:I

    if-ne v0, v2, :cond_8e

    .line 194
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathfraFRAf01:I

    .line 196
    :cond_8e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "eng-GBR-f01 Data Path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengGBRf01:I

    .line 198
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengGBRf01:I

    if-ne v0, v2, :cond_9e

    .line 199
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengGBRf01:I

    .line 201
    :cond_9e
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ita-ITA-f01 Data Path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathitaITAf01:I

    .line 203
    iget v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathitaITAf01:I

    if-ne v0, v2, :cond_ae

    .line 204
    iput v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathitaITAf01:I

    .line 205
    :cond_ae
    return-void
.end method

.method private native setLanguage(II)I
.end method

.method private native setParameters(IIFI)I
.end method

.method private setVoiceEffectsIndex(I)V
    .registers 5
    .parameter "iVoiceEffectsIndex"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_d

    .line 98
    const-string v1, "SamsungTTSSettings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/SMT/SamsungTTSService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    .line 100
    :cond_d
    iget-object v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, prefSettingsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Voice Effects Index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    return-void
.end method

.method private native speak(Ljava/lang/String;)I
.end method

.method private native terminate()I
.end method


# virtual methods
.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService;->onCreate()V

    .line 237
    const-string v0, "Samsung TTS"

    const-string v1, "onCreate() - Samsung TTS package (released - 2011.12.19)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/samsung/SMT/SamsungTTSService;->initialize()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_43

    .line 240
    iput-boolean v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_bIsSamsungProduct:Z

    .line 245
    :goto_16
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/SMT/SamsungTTSService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 243
    :cond_43
    iput-boolean v3, p0, Lcom/samsung/SMT/SamsungTTSService;->m_bIsSamsungProduct:Z

    goto :goto_16
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService;->onDestroy()V

    .line 254
    invoke-direct {p0}, Lcom/samsung/SMT/SamsungTTSService;->terminate()I

    .line 255
    const v0, 0x3ed70a3d

    iput v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_fSpectrumValue:F

    .line 258
    return-void
.end method

.method protected onGetLanguage()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    return-object v0
.end method

.method protected onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v0, -0x1

    .line 273
    invoke-direct {p0}, Lcom/samsung/SMT/SamsungTTSService;->loadVoiceDataPath()V

    .line 276
    const-string v5, "kor"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 278
    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 280
    iget v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORf01:I

    if-ne v2, v0, :cond_23

    .line 282
    iget v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORm01:I

    if-ne v2, v0, :cond_21

    .line 615
    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    .line 286
    goto :goto_20

    :cond_23
    move v0, v1

    .line 290
    goto :goto_20

    .line 293
    :cond_25
    const-string v1, "KOR"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 295
    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 297
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORf01:I

    if-ne v1, v0, :cond_3f

    .line 299
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORm01:I

    if-eq v1, v0, :cond_20

    move v0, v2

    .line 303
    goto :goto_20

    :cond_3f
    move v0, v2

    .line 307
    goto :goto_20

    .line 311
    :cond_41
    const-string v1, "f01"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 313
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORf01:I

    if-eq v1, v0, :cond_20

    move v0, v3

    .line 317
    goto :goto_20

    .line 320
    :cond_4f
    const-string v1, "m01"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 322
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORm01:I

    if-eq v1, v0, :cond_20

    move v0, v3

    .line 326
    goto :goto_20

    :cond_5d
    move v0, v4

    .line 330
    goto :goto_20

    :cond_5f
    move v0, v4

    .line 334
    goto :goto_20

    .line 338
    :cond_61
    const-string v5, "eng"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 340
    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 342
    iget v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAf01:I

    if-eq v2, v0, :cond_20

    move v0, v1

    .line 346
    goto :goto_20

    .line 349
    :cond_77
    const-string v1, "USA"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 351
    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 353
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAf01:I

    if-eq v1, v0, :cond_20

    move v0, v2

    .line 357
    goto :goto_20

    .line 361
    :cond_8d
    const-string v1, "f01"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 363
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAf01:I

    if-eq v1, v0, :cond_20

    move v0, v3

    .line 367
    goto :goto_20

    .line 371
    :cond_9b
    const-string v1, "d01"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 373
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAd01:I

    if-eq v1, v0, :cond_20

    move v0, v3

    .line 377
    goto/16 :goto_20

    :cond_aa
    move v0, v4

    .line 382
    goto/16 :goto_20

    .line 385
    :cond_ad
    const-string v1, "GBR"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 387
    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 389
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengGBRf01:I

    if-eq v1, v0, :cond_20

    move v0, v2

    .line 393
    goto/16 :goto_20

    .line 397
    :cond_c4
    const-string v1, "f01"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 399
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengGBRf01:I

    if-eq v1, v0, :cond_20

    move v0, v3

    .line 403
    goto/16 :goto_20

    :cond_d3
    move v0, v4

    .line 408
    goto/16 :goto_20

    :cond_d6
    move v0, v4

    .line 412
    goto/16 :goto_20

    .line 416
    :cond_d9
    const-string v5, "zho"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11c

    .line 418
    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 420
    iget v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathzhoCHNf01:I

    if-eq v2, v0, :cond_20

    move v0, v1

    .line 424
    goto/16 :goto_20

    .line 427
    :cond_f0
    const-string v1, "CHN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 429
    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 431
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathzhoCHNf01:I

    if-eq v1, v0, :cond_20

    move v0, v2

    .line 435
    goto/16 :goto_20

    .line 438
    :cond_107
    const-string v1, "f01"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 440
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathzhoCHNf01:I

    if-eq v1, v0, :cond_20

    move v0, v3

    .line 444
    goto/16 :goto_20

    :cond_116
    move v0, v4

    .line 448
    goto/16 :goto_20

    :cond_119
    move v0, v4

    .line 452
    goto/16 :goto_20

    .line 456
    :cond_11c
    const-string v5, "spa"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15f

    .line 458
    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 460
    iget v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathspaESPf01:I

    if-eq v2, v0, :cond_20

    move v0, v1

    .line 464
    goto/16 :goto_20

    .line 467
    :cond_133
    const-string v1, "ESP"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 469
    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 471
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathspaESPf01:I

    if-eq v1, v0, :cond_20

    move v0, v2

    .line 475
    goto/16 :goto_20

    .line 478
    :cond_14a
    const-string v1, "f01"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 480
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathspaESPf01:I

    if-eq v1, v0, :cond_20

    move v0, v3

    .line 484
    goto/16 :goto_20

    :cond_159
    move v0, v4

    .line 488
    goto/16 :goto_20

    :cond_15c
    move v0, v4

    .line 492
    goto/16 :goto_20

    .line 496
    :cond_15f
    const-string v5, "deu"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a2

    .line 498
    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_176

    .line 500
    iget v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathdeuDEUf01:I

    if-eq v2, v0, :cond_20

    move v0, v1

    .line 504
    goto/16 :goto_20

    .line 507
    :cond_176
    const-string v1, "DEU"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 509
    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18d

    .line 511
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathdeuDEUf01:I

    if-eq v1, v0, :cond_20

    move v0, v2

    .line 515
    goto/16 :goto_20

    .line 518
    :cond_18d
    const-string v1, "f01"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 520
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathdeuDEUf01:I

    if-eq v1, v0, :cond_20

    move v0, v3

    .line 524
    goto/16 :goto_20

    :cond_19c
    move v0, v4

    .line 528
    goto/16 :goto_20

    :cond_19f
    move v0, v4

    .line 532
    goto/16 :goto_20

    .line 536
    :cond_1a2
    const-string v5, "fra"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e5

    .line 538
    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b9

    .line 540
    iget v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathfraFRAf01:I

    if-eq v2, v0, :cond_20

    move v0, v1

    .line 544
    goto/16 :goto_20

    .line 547
    :cond_1b9
    const-string v1, "FRA"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e2

    .line 549
    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d0

    .line 551
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathfraFRAf01:I

    if-eq v1, v0, :cond_20

    move v0, v2

    .line 555
    goto/16 :goto_20

    .line 558
    :cond_1d0
    const-string v1, "f01"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1df

    .line 560
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathfraFRAf01:I

    if-eq v1, v0, :cond_20

    move v0, v3

    .line 564
    goto/16 :goto_20

    :cond_1df
    move v0, v4

    .line 568
    goto/16 :goto_20

    :cond_1e2
    move v0, v4

    .line 572
    goto/16 :goto_20

    .line 576
    :cond_1e5
    const-string v5, "ita"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_228

    .line 578
    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fc

    .line 580
    iget v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathitaITAf01:I

    if-eq v2, v0, :cond_20

    move v0, v1

    .line 584
    goto/16 :goto_20

    .line 587
    :cond_1fc
    const-string v1, "ITA"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_225

    .line 589
    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_213

    .line 591
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathitaITAf01:I

    if-eq v1, v0, :cond_20

    move v0, v2

    .line 595
    goto/16 :goto_20

    .line 598
    :cond_213
    const-string v1, "f01"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_222

    .line 600
    iget v1, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathitaITAf01:I

    if-eq v1, v0, :cond_20

    move v0, v3

    .line 604
    goto/16 :goto_20

    :cond_222
    move v0, v4

    .line 608
    goto/16 :goto_20

    :cond_225
    move v0, v4

    .line 612
    goto/16 :goto_20

    :cond_228
    move v0, v4

    .line 615
    goto/16 :goto_20
.end method

.method protected onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, -0x1

    .line 626
    const-string v5, "Samsung TTS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onLoadLanguage() - lang : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", country : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", variant : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0}, Lcom/samsung/SMT/SamsungTTSService;->loadVoiceDataPath()V

    .line 629
    invoke-direct {p0}, Lcom/samsung/SMT/SamsungTTSService;->loadVariantIndexes()V

    .line 631
    const/4 v2, 0x0

    .line 632
    .local v2, szLoadLanguage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 633
    .local v1, szLoadCountry:Ljava/lang/String;
    const/4 v3, 0x0

    .line 635
    .local v3, szLoadVariant:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/SMT/SamsungTTSService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 637
    .local v0, iIsLanguageAvailable:I
    const/4 v5, -0x2

    if-ne v0, v5, :cond_3e

    .line 935
    .end local v0           #iIsLanguageAvailable:I
    :cond_3d
    :goto_3d
    return v0

    .line 640
    .restart local v0       #iIsLanguageAvailable:I
    :cond_3e
    if-nez v0, :cond_b0

    .line 642
    move-object v2, p1

    .line 644
    const-string v5, "kor"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 646
    const-string v1, "KOR"

    .line 648
    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexkorKOR:I

    if-nez v5, :cond_59

    .line 649
    const-string v3, "f01"

    .line 801
    :cond_51
    :goto_51
    if-eqz v2, :cond_57

    if-eqz v1, :cond_57

    if-nez v3, :cond_178

    :cond_57
    move v0, v4

    .line 804
    goto :goto_3d

    .line 651
    :cond_59
    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexkorKOR:I

    if-ne v5, v8, :cond_60

    .line 652
    const-string v3, "m01"

    goto :goto_51

    .line 655
    :cond_60
    const/4 v3, 0x0

    goto :goto_51

    .line 658
    :cond_62
    const-string v5, "eng"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 660
    const-string v1, "USA"

    .line 661
    const-string v3, "f01"

    goto :goto_51

    .line 664
    :cond_6f
    const-string v5, "zho"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 666
    const-string v1, "CHN"

    .line 667
    const-string v3, "f01"

    goto :goto_51

    .line 670
    :cond_7c
    const-string v5, "spa"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 672
    const-string v1, "ESP"

    .line 673
    const-string v3, "f01"

    goto :goto_51

    .line 676
    :cond_89
    const-string v5, "deu"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 678
    const-string v1, "DEU"

    .line 679
    const-string v3, "f01"

    goto :goto_51

    .line 682
    :cond_96
    const-string v5, "fra"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 684
    const-string v1, "FRA"

    .line 685
    const-string v3, "f01"

    goto :goto_51

    .line 688
    :cond_a3
    const-string v5, "ita"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 690
    const-string v1, "ITA"

    .line 691
    const-string v3, "f01"

    goto :goto_51

    .line 695
    :cond_b0
    if-ne v0, v8, :cond_171

    .line 697
    move-object v2, p1

    .line 698
    move-object v1, p2

    .line 700
    const-string v5, "kor"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 702
    const-string v5, "KOR"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 704
    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexkorKOR:I

    if-nez v5, :cond_cb

    .line 705
    const-string v3, "f01"

    goto :goto_51

    .line 707
    :cond_cb
    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVariantIndexkorKOR:I

    if-ne v5, v8, :cond_d2

    .line 708
    const-string v3, "m01"

    goto :goto_51

    .line 711
    :cond_d2
    const/4 v3, 0x0

    goto/16 :goto_51

    .line 716
    :cond_d5
    const/4 v1, 0x0

    .line 717
    const/4 v3, 0x0

    goto/16 :goto_51

    .line 721
    :cond_d9
    const-string v5, "eng"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 723
    const-string v5, "USA"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f1

    const-string v5, "GBR"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 724
    :cond_f1
    const-string v3, "f01"

    goto/16 :goto_51

    .line 728
    :cond_f5
    const/4 v1, 0x0

    .line 729
    const/4 v3, 0x0

    goto/16 :goto_51

    .line 733
    :cond_f9
    const-string v5, "zho"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_111

    .line 735
    const-string v5, "CHN"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 736
    const-string v3, "f01"

    goto/16 :goto_51

    .line 740
    :cond_10d
    const/4 v1, 0x0

    .line 741
    const/4 v3, 0x0

    goto/16 :goto_51

    .line 745
    :cond_111
    const-string v5, "spa"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 747
    const-string v5, "ESP"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_125

    .line 748
    const-string v3, "f01"

    goto/16 :goto_51

    .line 752
    :cond_125
    const/4 v1, 0x0

    .line 753
    const/4 v3, 0x0

    goto/16 :goto_51

    .line 757
    :cond_129
    const-string v5, "deu"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_141

    .line 759
    const-string v5, "DEU"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13d

    .line 760
    const-string v3, "f01"

    goto/16 :goto_51

    .line 764
    :cond_13d
    const/4 v1, 0x0

    .line 765
    const/4 v3, 0x0

    goto/16 :goto_51

    .line 769
    :cond_141
    const-string v5, "fra"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_159

    .line 771
    const-string v5, "FRA"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_155

    .line 772
    const-string v3, "f01"

    goto/16 :goto_51

    .line 776
    :cond_155
    const/4 v1, 0x0

    .line 777
    const/4 v3, 0x0

    goto/16 :goto_51

    .line 781
    :cond_159
    const-string v5, "ita"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 783
    const-string v5, "ITA"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16d

    .line 784
    const-string v3, "f01"

    goto/16 :goto_51

    .line 788
    :cond_16d
    const/4 v1, 0x0

    .line 789
    const/4 v3, 0x0

    goto/16 :goto_51

    .line 794
    :cond_171
    if-ne v0, v9, :cond_51

    .line 796
    move-object v2, p1

    .line 797
    move-object v1, p2

    .line 798
    move-object v3, p3

    goto/16 :goto_51

    .line 808
    :cond_178
    iget-object v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    if-eqz v5, :cond_19a

    .line 810
    iget-object v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19a

    iget-object v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19a

    iget-object v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 815
    :cond_19a
    const-string v5, "kor"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e5

    .line 817
    const-string v5, "KOR"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1db

    .line 819
    const-string v5, "f01"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c3

    .line 820
    iget v4, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORf01:I

    invoke-direct {p0, v10, v4}, Lcom/samsung/SMT/SamsungTTSService;->setLanguage(II)I

    .line 933
    :goto_1b7
    new-array v4, v11, [Ljava/lang/String;

    aput-object v2, v4, v10

    aput-object v1, v4, v8

    aput-object v3, v4, v9

    iput-object v4, p0, Lcom/samsung/SMT/SamsungTTSService;->m_szCurrentLanguage:[Ljava/lang/String;

    goto/16 :goto_3d

    .line 822
    :cond_1c3
    const-string v5, "m01"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d1

    .line 823
    iget v4, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathkorKORm01:I

    invoke-direct {p0, v8, v4}, Lcom/samsung/SMT/SamsungTTSService;->setLanguage(II)I

    goto :goto_1b7

    .line 827
    :cond_1d1
    const-string v5, "Samsung TTS"

    const-string v6, "error : invalid variant value."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 828
    goto/16 :goto_3d

    .line 834
    :cond_1db
    const-string v5, "Samsung TTS"

    const-string v6, "error : invalid country value in kor."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 835
    goto/16 :goto_3d

    .line 839
    :cond_1e5
    const-string v5, "eng"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_235

    .line 841
    const-string v5, "USA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21b

    .line 843
    const-string v5, "f01"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_203

    .line 844
    iget v4, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAf01:I

    invoke-direct {p0, v9, v4}, Lcom/samsung/SMT/SamsungTTSService;->setLanguage(II)I

    goto :goto_1b7

    .line 846
    :cond_203
    const-string v5, "d01"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_211

    .line 847
    iget v4, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengUSAd01:I

    invoke-direct {p0, v11, v4}, Lcom/samsung/SMT/SamsungTTSService;->setLanguage(II)I

    goto :goto_1b7

    .line 851
    :cond_211
    const-string v5, "Samsung TTS"

    const-string v6, "error : invalid variant value."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 852
    goto/16 :goto_3d

    .line 856
    :cond_21b
    const-string v5, "GBR"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22b

    .line 857
    const/16 v4, 0x8

    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathengGBRf01:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/SMT/SamsungTTSService;->setLanguage(II)I

    goto :goto_1b7

    .line 861
    :cond_22b
    const-string v5, "Samsung TTS"

    const-string v6, "error : invalid country value in eng."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 862
    goto/16 :goto_3d

    .line 866
    :cond_235
    const-string v5, "zho"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_257

    .line 868
    const-string v5, "CHN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24d

    .line 869
    const/4 v4, 0x4

    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathzhoCHNf01:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/SMT/SamsungTTSService;->setLanguage(II)I

    goto/16 :goto_1b7

    .line 873
    :cond_24d
    const-string v5, "Samsung TTS"

    const-string v6, "error : invalid country value in zho."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 874
    goto/16 :goto_3d

    .line 878
    :cond_257
    const-string v5, "spa"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_279

    .line 880
    const-string v5, "ESP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26f

    .line 881
    const/4 v4, 0x5

    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathspaESPf01:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/SMT/SamsungTTSService;->setLanguage(II)I

    goto/16 :goto_1b7

    .line 885
    :cond_26f
    const-string v5, "Samsung TTS"

    const-string v6, "error : invalid country value in spa."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 886
    goto/16 :goto_3d

    .line 890
    :cond_279
    const-string v5, "deu"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29b

    .line 892
    const-string v5, "DEU"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_291

    .line 893
    const/4 v4, 0x6

    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathdeuDEUf01:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/SMT/SamsungTTSService;->setLanguage(II)I

    goto/16 :goto_1b7

    .line 897
    :cond_291
    const-string v5, "Samsung TTS"

    const-string v6, "error : invalid country value in deu."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 898
    goto/16 :goto_3d

    .line 902
    :cond_29b
    const-string v5, "fra"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2bd

    .line 904
    const-string v5, "FRA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b3

    .line 905
    const/4 v4, 0x7

    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathfraFRAf01:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/SMT/SamsungTTSService;->setLanguage(II)I

    goto/16 :goto_1b7

    .line 909
    :cond_2b3
    const-string v5, "Samsung TTS"

    const-string v6, "error : invalid country value in fra."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 910
    goto/16 :goto_3d

    .line 914
    :cond_2bd
    const-string v5, "ita"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e0

    .line 916
    const-string v5, "ITA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d6

    .line 917
    const/16 v4, 0x9

    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iDataPathitaITAf01:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/SMT/SamsungTTSService;->setLanguage(II)I

    goto/16 :goto_1b7

    .line 921
    :cond_2d6
    const-string v5, "Samsung TTS"

    const-string v6, "error : invalid country value in ita."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 922
    goto/16 :goto_3d

    .line 928
    :cond_2e0
    const-string v5, "Samsung TTS"

    const-string v6, "error : invalid language value."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 929
    goto/16 :goto_3d
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/SMT/SamsungTTSService;->m_bStopRequested:Z

    .line 943
    return-void
.end method

.method protected onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
    .registers 10
    .parameter "request"
    .parameter "callback"

    .prologue
    const/4 v6, 0x1

    .line 948
    iget-boolean v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_bIsSamsungProduct:Z

    if-nez v2, :cond_d

    .line 950
    const-string v2, "Samsung TTS"

    const-string v3, "onSynthesizeText() - Samsung TTS is not available on non-samsung product."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_c
    :goto_c
    return-void

    .line 956
    :cond_d
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/SMT/SamsungTTSService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 960
    .local v0, iLoad:I
    const/4 v2, -0x2

    if-ne v0, v2, :cond_24

    .line 962
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->error()V

    goto :goto_c

    .line 972
    :cond_24
    const/16 v2, 0x3e80

    const/4 v3, 0x2

    invoke-interface {p2, v2, v3, v6}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    .line 976
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, szText:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/SMT/SamsungTTSService;->isControlParametersForSamsungTTS(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 983
    invoke-direct {p0, v1}, Lcom/samsung/SMT/SamsungTTSService;->speak(Ljava/lang/String;)I

    .line 986
    invoke-direct {p0}, Lcom/samsung/SMT/SamsungTTSService;->getVoiceEffectsIndex()I

    move-result v2

    iput v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVoiceEffectsIndex:I

    .line 990
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v2

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v3

    iget v4, p0, Lcom/samsung/SMT/SamsungTTSService;->m_fSpectrumValue:F

    iget v5, p0, Lcom/samsung/SMT/SamsungTTSService;->m_iVoiceEffectsIndex:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/SMT/SamsungTTSService;->setParameters(IIFI)I

    .line 993
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/SMT/SamsungTTSService;->m_bStopRequested:Z

    .line 997
    :cond_4f
    invoke-direct {p0, p2}, Lcom/samsung/SMT/SamsungTTSService;->generateFrameOfAudio(Landroid/speech/tts/SynthesisCallback;)I

    move-result v2

    if-eq v2, v6, :cond_5c

    invoke-direct {p0, p2}, Lcom/samsung/SMT/SamsungTTSService;->generateFrameOfAudio(Landroid/speech/tts/SynthesisCallback;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4f

    .line 999
    :cond_5c
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->done()I

    goto :goto_c
.end method
