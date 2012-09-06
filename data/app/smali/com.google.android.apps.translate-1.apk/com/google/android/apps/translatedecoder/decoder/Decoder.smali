.class public Lcom/google/android/apps/translatedecoder/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final LM_UNK_STRING:Ljava/lang/String; = "<UNK>"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final config:Lcom/google/android/apps/translatedecoder/util/Config;

.field private final lmFeature:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

.field private final lmSymbolConverter:Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;

.field private final ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

.field private rapidRespTbl:Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;

.field private final tm:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

.field private final tokenizer:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/Config;Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V
    .registers 16
    .parameter "config"
    .parameter "ptSymbol"
    .parameter "lmSymbol"

    .prologue
    const-wide/16 v10, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 52
    const/4 v9, 0x0

    .line 53
    .local v9, simulateProdlm:Z
    const/4 v8, -0x1

    .line 55
    .local v8, lmUnkId:I
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->convertSymbol()Z

    move-result v1

    if-eqz v1, :cond_154

    .line 56
    if-nez p3, :cond_1b

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "convertSymbol is set true, but lmSymbol is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->simulateProdlm()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 61
    const-string v1, "<UNK>"

    invoke-virtual {p3, v1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->hasWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 62
    const/4 v9, 0x1

    .line 63
    const-string v1, "<UNK>"

    invoke-virtual {p3, v1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v8

    .line 68
    :cond_30
    :goto_30
    new-instance v1, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;

    invoke-direct {v1, p2, p3, v9, v8}, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;-><init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;ZI)V

    iput-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->lmSymbolConverter:Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;

    .line 74
    :goto_37
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->tmFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tm:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->oovTmCost()D

    move-result-wide v1

    cmpl-double v1, v1, v10

    if-lez v1, :cond_52

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tm:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->oovTmCost()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->setOovCost(D)V

    .line 79
    :cond_52
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength()I

    move-result v1

    if-lez v1, :cond_6d

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tm:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->maxPhraseLen()I

    move-result v2

    if-ge v1, v2, :cond_6d

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tm:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->setMaxPhraseLen(I)V

    .line 82
    :cond_6d
    sget-object v1, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->logger:Ljava/util/logging/Logger;

    const-string v2, "Finished reading pt!"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->rapidRespFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d3

    .line 91
    new-instance v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->oovTmCost()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->rapidRespFile()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;-><init>(IDLjava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 93
    .local v0, rapidPT:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    new-instance v1, Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->dominateCost()D

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;-><init>(Lcom/google/android/apps/translatedecoder/pt/PhraseTable;D)V

    iput-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->rapidRespTbl:Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;

    .line 95
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength()I

    move-result v1

    if-lez v1, :cond_ae

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->maxPhraseLen()I

    move-result v2

    if-ge v1, v2, :cond_ae

    .line 96
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->setMaxPhraseLen(I)V

    .line 98
    :cond_ae
    sget-object v1, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actuall maxPhraseLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tm:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    invoke-virtual {v3}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->maxPhraseLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->logger:Ljava/util/logging/Logger;

    const-string v2, "Finished reading rapid response phrase table!"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 102
    .end local v0           #rapidPT:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    :cond_d3
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->lmFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    move-result-object v7

    .line 103
    .local v7, lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->maxNumCachedNgrams()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->setMaxNumCachedNgrams(I)V

    .line 106
    if-eqz v9, :cond_eb

    .line 107
    invoke-virtual {v7, v8}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->setUnkId(I)V

    .line 108
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->setSimulateProdlm(Z)V

    .line 111
    :cond_eb
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->oovLmCost()D

    move-result-wide v1

    cmpl-double v1, v1, v10

    if-lez v1, :cond_fa

    .line 112
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->oovLmCost()D

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->setOovCost(D)V

    .line 114
    :cond_fa
    invoke-virtual {v7}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->lmOrder()I

    move-result v6

    .line 115
    .local v6, acturalLmOrder:I
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->lmOrder()I

    move-result v1

    if-lez v1, :cond_115

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->lmOrder()I

    move-result v1

    invoke-virtual {v7}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->lmOrder()I

    move-result v2

    if-ge v1, v2, :cond_115

    .line 116
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->lmOrder()I

    move-result v6

    .line 117
    invoke-virtual {v7, v6}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->setLmOrder(I)V

    .line 119
    :cond_115
    new-instance v1, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->lmSymbolConverter:Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;

    invoke-direct {v1, v6, v7, v2}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;-><init>(ILcom/google/android/apps/translatedecoder/lm/LanguageModel;Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;)V

    iput-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->lmFeature:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->lmFeature:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->relativeLmWeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->setRelativeLmWeight(D)V

    .line 121
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->ngramQueriedFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_132

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->lmFeature:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->setRememberNgrams(Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 124
    :cond_132
    sget-object v1, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->logger:Ljava/util/logging/Logger;

    const-string v2, "Finished reading lm!"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->preprocDataFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tokenizer:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    .line 127
    sget-object v1, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->logger:Ljava/util/logging/Logger;

    const-string v2, "Finished reading tokenizer data!"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 128
    return-void

    .line 65
    .end local v6           #acturalLmOrder:I
    .end local v7           #lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    :cond_14b
    sget-object v1, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->logger:Ljava/util/logging/Logger;

    const-string v2, "lm symbol tbl does not have <UNK>"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 70
    :cond_154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->lmSymbolConverter:Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;

    goto/16 :goto_37
.end method

.method public static main([Ljava/lang/String;)V
    .registers 10
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    .line 218
    array-length v6, p0

    if-ge v6, v8, :cond_e

    .line 219
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Usage: java Decoder configFile [--option_key=option_value]+"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 225
    :cond_e
    new-instance v0, Lcom/google/android/apps/translatedecoder/util/Config;

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-direct {v0, v6}, Lcom/google/android/apps/translatedecoder/util/Config;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, config:Lcom/google/android/apps/translatedecoder/util/Config;
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    new-array v2, v6, [Ljava/lang/String;

    .line 230
    .local v2, flagsArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1c
    array-length v6, v2

    if-ge v3, v6, :cond_28

    .line 231
    add-int/lit8 v6, v3, 0x1

    aget-object v6, p0, v6

    aput-object v6, v2, v3

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 233
    :cond_28
    invoke-virtual {v0, v2}, Lcom/google/android/apps/translatedecoder/util/Config;->setParametersFromArgs([Ljava/lang/String;)V

    .line 236
    new-instance v5, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-direct {v5}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>()V

    .line 237
    .local v5, ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    new-instance v4, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-direct {v4}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>()V

    .line 238
    .local v4, lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->readSymbolFromFile()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 239
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->ptSymbolTblFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v5

    .line 240
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->lmSymbolTblFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v4

    .line 242
    :cond_4b
    new-instance v1, Lcom/google/android/apps/translatedecoder/decoder/Decoder;

    invoke-direct {v1, v0, v5, v4}, Lcom/google/android/apps/translatedecoder/decoder/Decoder;-><init>(Lcom/google/android/apps/translatedecoder/util/Config;Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 243
    .local v1, decoder:Lcom/google/android/apps/translatedecoder/decoder/Decoder;
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->inputFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->outputFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->batchDecoding(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method


# virtual methods
.method public batchDecoding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "inputFile"
    .parameter "outputFIle"

    .prologue
    .line 194
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 195
    .local v3, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 197
    .local v5, out:Ljava/io/DataOutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 200
    .local v1, bw:Ljava/io/BufferedWriter;
    :goto_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_79

    .line 201
    sget-object v6, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->decoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_60} :catch_61
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_83

    goto :goto_28

    .line 207
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #out:Ljava/io/DataOutputStream;
    :catch_61
    move-exception v2

    .line 208
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 212
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :goto_65
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v6}, Lcom/google/android/apps/translatedecoder/util/Config;->ngramQueriedFile()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 213
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->lmFeature:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    iget-object v7, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v7}, Lcom/google/android/apps/translatedecoder/util/Config;->ngramQueriedFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->saveNgramsQueried(Ljava/lang/String;)V

    .line 215
    :cond_78
    return-void

    .line 204
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    :cond_79
    :try_start_79
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 205
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 206
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_82} :catch_61
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_82} :catch_83

    goto :goto_65

    .line 209
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #out:Ljava/io/DataOutputStream;
    :catch_83
    move-exception v2

    .line 210
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65
.end method

.method public decoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "sentence"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->runPreprocess()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tokenizer:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/util/Config;->srcLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->tokenizeWithJoin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->decoding([I)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_22
    return-object v0

    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->decoding([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method public decoding([I)Ljava/lang/String;
    .registers 10
    .parameter "inputWords"

    .prologue
    .line 178
    new-instance v0, Lcom/google/android/apps/translatedecoder/decoder/Search;

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tm:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->rapidRespTbl:Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;

    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->lmFeature:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/translatedecoder/decoder/Search;-><init>(Lcom/google/android/apps/translatedecoder/pt/PhraseTable;Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;Lcom/google/android/apps/translatedecoder/util/Config;Lcom/google/android/apps/translatedecoder/util/SymbolTable;[I)V

    .line 179
    .local v0, searcher:Lcom/google/android/apps/translatedecoder/decoder/Search;
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/decoder/Search;->search()Lcom/google/android/apps/translatedecoder/decoder/Lattice;

    move-result-object v7

    .line 180
    .local v7, lattice:Lcom/google/android/apps/translatedecoder/decoder/Lattice;
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/util/Config;->runPostprocess()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 181
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tokenizer:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/util/Config;->tgtLang()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v3}, Lcom/google/android/apps/translatedecoder/util/Config;->printBracket()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v7, v3, v4}, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->extractViterbi(ZLcom/google/android/apps/translatedecoder/util/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->deTokenize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    :goto_34
    return-object v1

    :cond_35
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/util/Config;->printBracket()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v7, v1, v2}, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->extractViterbi(ZLcom/google/android/apps/translatedecoder/util/SymbolTable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_34
.end method

.method public decodingWithStatInfo(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;
    .registers 14
    .parameter "rawInput"

    .prologue
    .line 135
    new-instance v9, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;

    invoke-direct {v9}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;-><init>()V

    .line 136
    .local v9, res:Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;
    invoke-virtual {v9, p1}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->setRawInput(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, tokenizedInput:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/util/Config;->runPreprocess()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 139
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tokenizer:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/util/Config;->srcLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->tokenizeWithJoin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 141
    :cond_24
    invoke-virtual {v9, v10}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->setTokenizedInput(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v1, v10}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v6

    .line 145
    .local v6, inputWords:[I
    new-instance v0, Lcom/google/android/apps/translatedecoder/decoder/Search;

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tm:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->rapidRespTbl:Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;

    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->lmFeature:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/translatedecoder/decoder/Search;-><init>(Lcom/google/android/apps/translatedecoder/pt/PhraseTable;Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;Lcom/google/android/apps/translatedecoder/util/Config;Lcom/google/android/apps/translatedecoder/util/SymbolTable;[I)V

    .line 146
    .local v0, searcher:Lcom/google/android/apps/translatedecoder/decoder/Search;
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/decoder/Search;->search()Lcom/google/android/apps/translatedecoder/decoder/Lattice;

    move-result-object v8

    .line 147
    .local v8, lattice:Lcom/google/android/apps/translatedecoder/decoder/Lattice;
    invoke-virtual {v8}, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->goalNode()Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->insideViterbiCost()D

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->setCost(D)V

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/util/Config;->printBracket()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v8, v1, v2}, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->extractViterbi(ZLcom/google/android/apps/translatedecoder/util/SymbolTable;)Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, tokenizedOutput:Ljava/lang/String;
    invoke-virtual {v9, v11}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->setTokenizedOutput(Ljava/lang/String;)V

    .line 151
    move-object v7, v11

    .line 152
    .local v7, deTokenizedOutput:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/util/Config;->runPostprocess()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 153
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->tokenizer:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/util/Config;->tgtLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->deTokenize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    :cond_6f
    invoke-virtual {v9, v7}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->setDetokenizedOutput(Ljava/lang/String;)V

    .line 157
    return-object v9
.end method
