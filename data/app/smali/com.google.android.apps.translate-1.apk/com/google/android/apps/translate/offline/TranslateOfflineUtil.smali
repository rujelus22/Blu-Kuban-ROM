.class public Lcom/google/android/apps/translate/offline/TranslateOfflineUtil;
.super Ljava/lang/Object;
.source "TranslateOfflineUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TranslateOfflineUtil"

.field private static final PROFILING_MODE:Z

.field private static decoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/translatedecoder/decoder/Decoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/offline/TranslateOfflineUtil;->decoders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDecoder(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/decoder/Decoder;
    .registers 13
    .parameter "from"
    .parameter "to"

    .prologue
    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, decoderKey:Ljava/lang/String;
    sget-object v7, Lcom/google/android/apps/translate/offline/TranslateOfflineUtil;->decoders:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/translatedecoder/decoder/Decoder;

    .line 54
    .local v6, res:Lcom/google/android/apps/translatedecoder/decoder/Decoder;
    if-eqz v6, :cond_29

    .line 55
    const-string v7, "TranslateOfflineUtil"

    const-string v8, "=====using old offline decoder====="

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v6           #res:Lcom/google/android/apps/translatedecoder/decoder/Decoder;
    :goto_28
    return-object v6

    .line 58
    .restart local v6       #res:Lcom/google/android/apps/translatedecoder/decoder/Decoder;
    :cond_29
    const-string v7, "TranslateOfflineUtil"

    const-string v8, "=====create a new offline decoder====="

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-static {}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalConfigFile()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/google/android/apps/translatedecoder/util/Config;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, config:Lcom/google/android/apps/translatedecoder/util/Config;
    new-instance v1, Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalConfigFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/google/android/apps/translatedecoder/util/Config;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, configSpecific:Lcom/google/android/apps/translatedecoder/util/Config;
    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/util/Config;->relativeLmWeight()D

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/android/apps/translatedecoder/util/Config;->setRelativeLmWeight(D)V

    .line 62
    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/util/Config;->oovTmCost()D

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/android/apps/translatedecoder/util/Config;->setOovTmCost(D)V

    .line 64
    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/Config;->setMaxPhraseLength(I)V

    .line 65
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/Config;->setBeamSize(I)V

    .line 68
    invoke-virtual {v0, p0}, Lcom/google/android/apps/translatedecoder/util/Config;->setSrcLang(Ljava/lang/String;)V

    .line 69
    const-string v7, "TranslateOfflineUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.relativeLmWeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->relativeLmWeight()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v7, "TranslateOfflineUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.oovTmCost"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->oovTmCost()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v7, "TranslateOfflineUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.srcLang"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->srcLang()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v7, "TranslateOfflineUtil"

    invoke-static {}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalConfigFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v7, "TranslateOfflineUtil"

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalConfigFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v7, "TranslateOfflineUtil"

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalPtSymbolFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v7, "TranslateOfflineUtil"

    invoke-static {p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalLmSymbolFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v7, "TranslateOfflineUtil"

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalTmFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v7, "TranslateOfflineUtil"

    invoke-static {p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalLmFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v7, "TranslateOfflineUtil"

    invoke-static {}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalPreprocFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalPtSymbolFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/Config;->setPtSymbolTblFile(Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalLmSymbolFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/Config;->setLmSymbolTblFile(Ljava/lang/String;)V

    .line 84
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalTmFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/Config;->setTmFile(Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalLmFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/Config;->setLmFile(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalPreprocFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/Config;->setPreprocDataFile(Ljava/lang/String;)V

    .line 87
    const-string v7, "TranslateOfflineUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ptFile="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalTmFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v5, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-direct {v5}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>()V

    .line 91
    .local v5, ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    new-instance v4, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-direct {v4}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>()V

    .line 92
    .local v4, lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->readSymbolFromFile()Z

    move-result v7

    if-eqz v7, :cond_14d

    .line 93
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->ptSymbolTblFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v5

    .line 94
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->lmSymbolTblFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v4

    .line 96
    :cond_14d
    new-instance v2, Lcom/google/android/apps/translatedecoder/decoder/Decoder;

    invoke-direct {v2, v0, v5, v4}, Lcom/google/android/apps/translatedecoder/decoder/Decoder;-><init>(Lcom/google/android/apps/translatedecoder/util/Config;Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 99
    .local v2, decoder:Lcom/google/android/apps/translatedecoder/decoder/Decoder;
    sget-object v7, Lcom/google/android/apps/translate/offline/TranslateOfflineUtil;->decoders:Ljava/util/Map;

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    .line 100
    goto/16 :goto_28
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "fromLang"
    .parameter "toLang"
    .parameter "inputSent"

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/offline/TranslateOfflineUtil;->getDecoder(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/decoder/Decoder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->decoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, translation:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline translate:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
