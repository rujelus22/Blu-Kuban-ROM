.class public final Lcom/google/android/apps/translate/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final DEFAULT_CONVERSATION_LANGUAGES:[Ljava/lang/String; = null

.field private static final DEFAULT_CONVERSATION_LANGUAGES_SET:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOGFOOD_VOICE_LANGUAGE_TAG:Ljava/lang/String; = "dogfood"

.field private static final EXCLUDE_DOGFOOD_VOICE_INPUT_LANGUAGES:Z = false

.field private static final FIELD_NAME:Ljava/lang/String; = "fieldName"

.field private static final IME_OPTIONS:Ljava/lang/String; = "imeOptions"

.field private static final INPUT_TYPE:Ljava/lang/String; = "inputType"

.field private static final MAX_ASR_RESULTS:I = 0x32

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

#the value of this static final field might be set in the static constructor
.field private static final SDK_INT:I = 0x0

.field private static final SELECTED_LANGUAGE:Ljava/lang/String; = "selectedLanguage"

.field private static final SINGLE_LINE:Ljava/lang/String; = "singleLine"

.field private static final TAG:Ljava/lang/String; = "VoiceInputHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultVoiceInputLanguages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSpeechRecognizer:Z

.field private mVoiceInputLanguages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/apps/translate/VoiceInputHelper;->SDK_INT:I

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "es"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/translate/VoiceInputHelper;->DEFAULT_CONVERSATION_LANGUAGES:[Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/google/android/apps/translate/VoiceInputHelper;->DEFAULT_CONVERSATION_LANGUAGES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/apps/translate/VoiceInputHelper;->DEFAULT_CONVERSATION_LANGUAGES_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mVoiceInputLanguages:Ljava/util/Map;

    .line 61
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mDefaultVoiceInputLanguages:Ljava/util/Map;

    .line 141
    iput-object p1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/translate/VoiceInputHelper;->reloadVoiceInputLanguageMap()V

    .line 145
    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->hasSpeechRecognizer(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mHasSpeechRecognizer:Z

    .line 146
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$array;->voiceInputLocales:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, defaultLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mDefaultVoiceInputLanguages:Ljava/util/Map;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/translate/VoiceInputHelper;->loadVoiceInputLanguages(Ljava/util/Map;Ljava/util/List;)Z

    .line 150
    const-string v1, "DEFAULT"

    invoke-static {v1, v0}, Lcom/google/android/apps/translate/VoiceInputHelper;->logVoiceLanguages(Ljava/lang/String;Ljava/util/List;)V

    .line 151
    return-void
.end method

.method public static getRecognitionResult(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter "data"

    .prologue
    .line 324
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 326
    .local v0, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_15
    return-object v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static getRecognitionResults(Landroid/content/Intent;)Ljava/util/List;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getShortLanguageNameFromVoiceInputLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "voiceLang"

    .prologue
    .line 356
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 363
    const-string v1, "he-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 364
    const-string v1, "iw"

    .line 396
    :goto_e
    return-object v1

    .line 365
    :cond_f
    const-string v1, "latin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 366
    const-string v1, "la"

    goto :goto_e

    .line 367
    :cond_1a
    const-string v1, "euskara"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 368
    const-string v1, "eu"

    goto :goto_e

    .line 372
    :cond_25
    const-string v1, "fil-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 373
    const-string v1, "tl"

    goto :goto_e

    .line 374
    :cond_30
    const-string v1, "nb-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 375
    const-string v1, "no"

    goto :goto_e

    .line 380
    :cond_3b
    const-string v1, "-hans-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 381
    const-string v1, "zh-CN"

    goto :goto_e

    .line 382
    :cond_46
    const-string v1, "-hant-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 383
    const-string v1, "zh-TW"

    goto :goto_e

    .line 387
    :cond_51
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 388
    .local v0, codeLen:I
    if-gez v0, :cond_5d

    .line 389
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 391
    :cond_5d
    const/4 v1, 0x2

    if-eq v0, v1, :cond_63

    const/4 v1, 0x3

    if-ne v0, v1, :cond_69

    .line 392
    :cond_63
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 395
    :cond_69
    const-string v1, "VoiceInputHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized voice input language: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static getSupportedLanguages(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 10
    .parameter "context"
    .parameter "receiver"

    .prologue
    const/4 v2, 0x0

    .line 340
    sget v0, Lcom/google/android/apps/translate/VoiceInputHelper;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_17

    .line 341
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.speech.action.GET_LANGUAGE_DETAILS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, intent:Landroid/content/Intent;
    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 345
    .end local v1           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method public static final getVoiceInputLanguageNameFromDogfoodName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "voiceInputLanguage"

    .prologue
    .line 74
    const-string v1, "-x-dogfood.*$"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, lang:Ljava/lang/String;
    const-string v1, "VoiceInputHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceInputLanguageNameFromDogfoodName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-object v0
.end method

.method public static final isDogfoodVoiceInputLanguage(Ljava/lang/String;)Z
    .registers 2
    .parameter "voiceInputLanguage"

    .prologue
    .line 64
    const-string v0, "dogfood"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private loadVoiceInputLanguages(Ljava/util/Map;Ljava/util/List;)Z
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, voiceInputLanguages:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;>;"
    .local p2, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_59

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_59

    .line 179
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, language:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/translate/VoiceInputHelper;->getShortLanguageNameFromVoiceInputLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, transLang:Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 182
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;

    .line 183
    .local v3, voiceLanguages:Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
    if-nez v3, :cond_2e

    .line 184
    new-instance v3, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;

    .end local v3           #voiceLanguages:Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
    invoke-direct {v3, v2}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v3       #voiceLanguages:Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_2e
    invoke-virtual {v3, v1}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->addVoiceInputLanguage(Ljava/lang/String;)V

    goto :goto_c

    .line 192
    .end local v1           #language:Ljava/lang/String;
    .end local v2           #transLang:Ljava/lang/String;
    .end local v3           #voiceLanguages:Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
    :cond_32
    const-string v6, "zh-CN"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;

    .line 194
    .local v4, zhCN:Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
    const-string v6, "zh-TW"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;

    .line 196
    .local v5, zhTW:Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
    if-eqz v4, :cond_57

    if-eqz v5, :cond_57

    .line 197
    invoke-virtual {v5}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->getVoiceInputLanguageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->addVoiceInputLanguages(Ljava/util/List;)V

    .line 198
    invoke-virtual {v5}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->clearVoiceInputLanguages()V

    .line 199
    invoke-virtual {v4}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->getVoiceInputLanguageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->addVoiceInputLanguages(Ljava/util/List;)V

    .line 201
    :cond_57
    const/4 v6, 0x1

    .line 203
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #zhCN:Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
    .end local v5           #zhTW:Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
    :goto_58
    return v6

    :cond_59
    const/4 v6, 0x0

    goto :goto_58
.end method

.method public static logVoiceLanguages(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "VoiceInputHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logVoiceLanguages START tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    if-nez p1, :cond_1b

    .line 452
    :goto_1a
    return-void

    .line 448
    :cond_1b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    .local v1, voiceLang:Ljava/lang/String;
    const-string v2, "VoiceInputHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logVoiceLanguages latest list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 451
    .end local v1           #voiceLang:Ljava/lang/String;
    :cond_44
    const-string v2, "VoiceInputHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logVoiceLanguages DONE tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public static prepareAsrIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7
    .parameter "intent"
    .parameter "locale"

    .prologue
    const/4 v4, 0x1

    .line 287
    const-class v2, Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, s:Ljava/lang/String;
    const-string v2, "calling_package"

    const-class v3, Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v2, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceInputHelper: set EXTRA_LANGUAGE to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 296
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "packageName"

    const-string v3, "com.google.android.apps.translate"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v2, "fieldName"

    const-string v3, "AndroidTranslate"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v2, "inputType"

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v2, "imeOptions"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const-string v2, "singleLine"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    if-eqz p1, :cond_6d

    .line 304
    const-string v2, "selectedLanguage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_6d
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_7a

    .line 309
    const-string v2, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 311
    :cond_7a
    return-void
.end method

.method public static startVoiceInput(Lcom/google/android/apps/translate/VoiceInputHelper;Landroid/app/Activity;Lcom/google/android/apps/translate/Language;I)V
    .registers 5
    .parameter "voiceInputHelper"
    .parameter "activity"
    .parameter "sl"
    .parameter "requestCode"

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/apps/translate/VoiceInputHelper;->inputFromSpeech(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;ILandroid/app/PendingIntent;)V

    .line 260
    return-void
.end method


# virtual methods
.method public getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "fromLanguage"

    .prologue
    .line 267
    iget-object v2, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mVoiceInputLanguages:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;

    .line 268
    .local v1, prefs:Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
    const/4 v0, 0x0

    .line 269
    .local v0, locale:Ljava/lang/String;
    if-eqz v1, :cond_59

    .line 270
    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/apps/translate/Profile;->getVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    const-string v2, "VoiceInputHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsrLocale pref-locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->containsVoiceInputLanguage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 276
    :cond_3d
    invoke-virtual {v1}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->getDefaultVoiceInputLanguage()Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v2, "VoiceInputHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsrLocale default-locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_59
    return-object v0
.end method

.method public getTranslateLanguageList(Lcom/google/android/apps/translate/Languages;)Ljava/util/List;
    .registers 9
    .parameter "languages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/translate/Languages;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 416
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    iget-object v4, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mVoiceInputLanguages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 417
    .local v3, shortLangName:Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 418
    .local v1, lang:Lcom/google/android/apps/translate/Language;
    if-nez v1, :cond_3f

    .line 420
    const-string v4, "VoiceInputHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized language: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 423
    :cond_3f
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 425
    .end local v1           #lang:Lcom/google/android/apps/translate/Language;
    .end local v3           #shortLangName:Ljava/lang/String;
    :cond_43
    return-object v2
.end method

.method public getVoiceInputLanguageList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "langShortName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mVoiceInputLanguages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mVoiceInputLanguages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->getVoiceInputLanguageList()Ljava/util/List;

    move-result-object v0

    goto :goto_d
.end method

.method public inputFromSpeech(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;ILandroid/app/PendingIntent;)V
    .registers 12
    .parameter "activity"
    .parameter "fromLanguage"
    .parameter "requestCode"
    .parameter "forwardIntent"

    .prologue
    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/translate/VoiceInputHelper;->getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, locale:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, intent:Landroid/content/Intent;
    invoke-static {v3, v4}, Lcom/google/android/apps/translate/VoiceInputHelper;->prepareAsrIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 232
    if-eqz p4, :cond_35

    .line 235
    const-string v5, "android.speech.extra.MAX_RESULTS"

    const/16 v6, 0x32

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const-string v5, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    const-string v5, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 239
    sget v5, Lcom/google/android/apps/translate/R$string;->label_speak_now:I

    invoke-static {p1, v5, p2}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v2

    .line 241
    .local v2, extraPromptId:I
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, extraPrompt:Ljava/lang/String;
    const-string v5, "android.speech.extra.PROMPT"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    .end local v1           #extraPrompt:Ljava/lang/String;
    .end local v2           #extraPromptId:I
    :cond_35
    :try_start_35
    invoke-virtual {p1, v3, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_35 .. :try_end_38} :catch_39

    .line 251
    :goto_38
    return-void

    .line 247
    :catch_39
    move-exception v0

    .line 248
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/google/android/apps/translate/R$string;->msg_error_intent_voice_input:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;)V

    .line 249
    sget v5, Lcom/google/android/apps/translate/R$string;->msg_error_intent_voice_input:I

    invoke-static {p1, v5}, Lcom/google/android/apps/translate/Util;->showLongToastMessage(Landroid/app/Activity;I)V

    goto :goto_38
.end method

.method public isConversationLanguage(Lcom/google/android/apps/translate/Language;)Z
    .registers 4
    .parameter "lang"

    .prologue
    .line 435
    sget-object v0, Lcom/google/android/apps/translate/VoiceInputHelper;->DEFAULT_CONVERSATION_LANGUAGES_SET:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/VoiceInputHelper;->isVoiceInputAvailable(Lcom/google/android/apps/translate/Language;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_12
    const-string v0, "la"

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public isVoiceInputAvailable(Lcom/google/android/apps/translate/Language;)Z
    .registers 6
    .parameter "language"

    .prologue
    const/4 v0, 0x0

    .line 210
    if-nez p1, :cond_b

    .line 211
    const-string v1, "VoiceInputHelper"

    const-string v2, "isVoiceInputAvailable language=null"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_a
    :goto_a
    return v0

    .line 214
    :cond_b
    const-string v1, "VoiceInputHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceInputAvailable language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-boolean v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mHasSpeechRecognizer:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mVoiceInputLanguages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public reloadVoiceInputLanguageMap()V
    .registers 4

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mVoiceInputLanguages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mVoiceInputLanguages:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/translate/Profile;->getSupportedVoiceLanguages(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/translate/VoiceInputHelper;->loadVoiceInputLanguages(Ljava/util/Map;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 160
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1f

    .line 162
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mDefaultVoiceInputLanguages:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mVoiceInputLanguages:Ljava/util/Map;

    .line 174
    :cond_1e
    :goto_1e
    return-void

    .line 163
    :cond_1f
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1e

    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, language:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locale language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Logger;->i(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mDefaultVoiceInputLanguages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mVoiceInputLanguages:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/apps/translate/VoiceInputHelper;->mDefaultVoiceInputLanguages:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e
.end method

.method public startVoiceInput(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;)V
    .registers 4
    .parameter "activity"
    .parameter "fromLanguage"

    .prologue
    .line 317
    const/16 v0, 0x64

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/translate/VoiceInputHelper;->startVoiceInput(Lcom/google/android/apps/translate/VoiceInputHelper;Landroid/app/Activity;Lcom/google/android/apps/translate/Language;I)V

    .line 318
    return-void
.end method
