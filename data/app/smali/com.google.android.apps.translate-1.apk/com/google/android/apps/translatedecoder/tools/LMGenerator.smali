.class public Lcom/google/android/apps/translatedecoder/tools/LMGenerator;
.super Ljava/lang/Object;
.source "LMGenerator.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/google/android/apps/translatedecoder/tools/LMGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/tools/LMGenerator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 28
    .parameter "args"

    .prologue
    .line 28
    move-object/from16 v0, p0

    array-length v4, v0

    if-gtz v4, :cond_10

    .line 29
    sget-object v4, Lcom/google/android/apps/translatedecoder/tools/LMGenerator;->logger:Ljava/util/logging/Logger;

    const-string v5, "Usage: java LMGenerator --inFile=file --outDir=file --lmOrder=order --oovCost=oovCost --stupidBackoffCost=cost --wordIdLen=len --offsetLen=len --valueLen=len --mmapFormat=flag --arpaInput=flag"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 34
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 37
    :cond_10
    new-instance v13, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 39
    .local v13, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    const-string v5, "inFile"

    aput-object v5, v22, v4

    const/4 v4, 0x1

    const-string v5, "outDir"

    aput-object v5, v22, v4

    const/4 v4, 0x2

    const-string v5, "lmOrder"

    aput-object v5, v22, v4

    const/4 v4, 0x3

    const-string v5, "oovCost"

    aput-object v5, v22, v4

    const/4 v4, 0x4

    const-string v5, "stupidBackoffCost"

    aput-object v5, v22, v4

    const/4 v4, 0x5

    const-string v5, "wordIdLen"

    aput-object v5, v22, v4

    const/4 v4, 0x6

    const-string v5, "offsetLen"

    aput-object v5, v22, v4

    const/4 v4, 0x7

    const-string v5, "valueLen"

    aput-object v5, v22, v4

    .line 41
    .local v22, requiredProperties:[Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 43
    const-string v4, "inFile"

    invoke-virtual {v13, v4}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 44
    .local v14, input:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outDir"

    invoke-virtual {v13, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/lm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 45
    .local v19, outputPrefix:Ljava/lang/String;
    new-instance v4, Ljava/lang/Boolean;

    const-string v5, "mmapFormat"

    const-string v6, "true"

    invoke-virtual {v13, v5, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 46
    .local v16, mmapFormat:Z
    new-instance v4, Ljava/lang/Boolean;

    const-string v5, "arpaInput"

    const-string v6, "false"

    invoke-virtual {v13, v5, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 49
    .local v12, arpaInput:Z
    if-eqz v12, :cond_bf

    .line 50
    sget-object v4, Lcom/google/android/apps/translatedecoder/tools/LMGenerator;->logger:Ljava/util/logging/Logger;

    const-string v5, "Convert arpa-format lm to text-format."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".text"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 52
    .local v18, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/Integer;

    const-string v5, "lmOrder"

    invoke-virtual {v13, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v18

    invoke-static {v14, v4, v0}, Lcom/google/android/apps/translatedecoder/tools/ArpaLmToInternal;->convert(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    move-object/from16 v14, v18

    .line 58
    .end local v18           #output:Ljava/lang/String;
    :cond_bf
    sget-object v4, Lcom/google/android/apps/translatedecoder/tools/LMGenerator;->logger:Ljava/util/logging/Logger;

    const-string v5, "Generate a symbol table."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".symbol"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 60
    .local v23, symbolFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/Boolean;

    const-string v5, "compactFormat"

    const-string v6, "true"

    invoke-virtual {v13, v5, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "plainSymbolFile"

    invoke-virtual {v13, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v14, v0, v4, v5, v1}, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->generateTbl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 66
    sget-object v4, Lcom/google/android/apps/translatedecoder/tools/LMGenerator;->logger:Ljava/util/logging/Logger;

    const-string v5, "Generate a quantizer."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 67
    new-instance v4, Ljava/lang/Integer;

    const-string v5, "valueLen"

    invoke-virtual {v13, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 68
    .local v17, numBits:I
    const-wide/high16 v4, 0x4000

    move/from16 v0, v17

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v14}, Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;->generateQuantizer(ILjava/lang/String;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move-result-object v20

    .line 69
    .local v20, quant:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    sget-object v4, Lcom/google/android/apps/translatedecoder/tools/LMGenerator;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input numBits="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; out numBits="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->numBitsRequired()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".quantizer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 71
    .local v21, quantFile:Ljava/lang/String;
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->writeToFile(Ljava/lang/String;)V

    .line 74
    sget-object v4, Lcom/google/android/apps/translatedecoder/tools/LMGenerator;->logger:Ljava/util/logging/Logger;

    const-string v5, "Generate a bit-based trie file."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 75
    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v3

    .line 76
    .local v3, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move-result-object v10

    .line 77
    .local v10, costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    new-instance v2, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;

    new-instance v4, Ljava/lang/Integer;

    const-string v5, "lmOrder"

    invoke-virtual {v13, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/Double;

    const-string v6, "oovCost"

    invoke-virtual {v13, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    new-instance v7, Ljava/lang/Double;

    const-string v8, "stupidBackoffCost"

    invoke-virtual {v13, v8}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    new-instance v9, Ljava/lang/Boolean;

    const-string v11, "noBackoff"

    const-string v25, "false"

    move-object/from16 v0, v25

    invoke-virtual {v13, v11, v0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    new-instance v11, Ljava/lang/Boolean;

    const-string v25, "prefixTrue"

    const-string v26, "true"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-direct/range {v2 .. v11}, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;-><init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;IDDZLcom/google/android/apps/translatedecoder/succinct/Quantizer;Z)V

    .line 84
    .local v2, converter:Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;
    new-instance v4, Ljava/lang/Integer;

    const-string v5, "wordIdLen"

    invoke-virtual {v13, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/Integer;

    const-string v6, "offsetLen"

    invoke-virtual {v13, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->numBitsRequired()I

    move-result v6

    invoke-virtual {v2, v14, v4, v5, v6}, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->convertToImplicitTrie(Ljava/lang/String;III)Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;

    move-result-object v15

    .line 90
    .local v15, lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bit.trie"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 91
    .local v24, triePtFile:Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->writeToFile(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method
