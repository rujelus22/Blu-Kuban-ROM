.class public Lcom/google/android/apps/translatedecoder/tools/PTGenerator;
.super Ljava/lang/Object;
.source "PTGenerator.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/translatedecoder/tools/PTGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/tools/PTGenerator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 29
    .parameter "args"

    .prologue
    .line 26
    move-object/from16 v0, p0

    array-length v5, v0

    if-gtz v5, :cond_10

    .line 27
    sget-object v5, Lcom/google/android/apps/translatedecoder/tools/PTGenerator;->logger:Ljava/util/logging/Logger;

    const-string v6, "Usage: java PTGenerator --inFile=file --outDir=file --ptOrder=order --oovCost=oovCost --wordIdLen=len --offsetLen=len --valueLen=len --targetBytesLen=len--mmapFormat=flag --lmSymbol=file"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 32
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 35
    :cond_10
    new-instance v20, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 37
    .local v20, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/16 v5, 0x8

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v5, 0x0

    const-string v6, "inFile"

    aput-object v6, v26, v5

    const/4 v5, 0x1

    const-string v6, "outDir"

    aput-object v6, v26, v5

    const/4 v5, 0x2

    const-string v6, "ptOrder"

    aput-object v6, v26, v5

    const/4 v5, 0x3

    const-string v6, "oovCost"

    aput-object v6, v26, v5

    const/4 v5, 0x4

    const-string v6, "wordIdLen"

    aput-object v6, v26, v5

    const/4 v5, 0x5

    const-string v6, "offsetLen"

    aput-object v6, v26, v5

    const/4 v5, 0x6

    const-string v6, "valueLen"

    aput-object v6, v26, v5

    const/4 v5, 0x7

    const-string v6, "targetBytesLen"

    aput-object v6, v26, v5

    .line 39
    .local v26, requiredProperties:[Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 41
    const-string v5, "inFile"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, input:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outDir"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/pt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 43
    .local v22, outputPrefix:Ljava/lang/String;
    new-instance v5, Ljava/lang/Boolean;

    const-string v6, "mmapFormat"

    const-string v10, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v10}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 46
    .local v7, mmapFormat:Z
    sget-object v5, Lcom/google/android/apps/translatedecoder/tools/PTGenerator;->logger:Ljava/util/logging/Logger;

    const-string v6, "Generate a symbol table."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".symbol"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, symbolFile:Ljava/lang/String;
    const-string v5, "lmSymbol"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1cc

    .line 50
    const-string v5, "lmSymbol"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v3

    .line 51
    .local v3, lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    new-instance v5, Ljava/lang/Boolean;

    const-string v6, "compactFormat"

    const-string v10, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v10}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "plainSymbolFile"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->generatePTWrapperTbl(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 63
    .end local v3           #lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    :goto_d4
    sget-object v5, Lcom/google/android/apps/translatedecoder/tools/PTGenerator;->logger:Ljava/util/logging/Logger;

    const-string v6, "Generate a quantizer."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 64
    new-instance v5, Ljava/lang/Integer;

    const-string v6, "valueLen"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 65
    .local v21, numBits:I
    const-wide/high16 v5, 0x4000

    move/from16 v0, v21

    int-to-double v10, v0

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v2}, Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;->generateQuantizer(ILjava/lang/String;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move-result-object v24

    .line 66
    .local v24, quant:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    sget-object v5, Lcom/google/android/apps/translatedecoder/tools/PTGenerator;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "input numBits="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "; out numBits="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->numBitsRequired()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".quantizer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 68
    .local v25, quantFile:Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->writeToFile(Ljava/lang/String;)V

    .line 71
    sget-object v5, Lcom/google/android/apps/translatedecoder/tools/PTGenerator;->logger:Ljava/util/logging/Logger;

    const-string v6, "Generate a bit-based trie file."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 72
    invoke-static {v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v9

    .line 73
    .local v9, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    invoke-static/range {v25 .. v25}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move-result-object v13

    .line 75
    .local v13, costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    new-instance v8, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;

    new-instance v5, Ljava/lang/Integer;

    const-string v6, "ptOrder"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance v5, Ljava/lang/Double;

    const-string v6, "oovCost"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;-><init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;IDLcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 79
    .local v8, converter:Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;
    new-instance v5, Ljava/lang/Integer;

    const-string v6, "wordIdLen"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    new-instance v5, Ljava/lang/Integer;

    const-string v6, "offsetLen"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    new-instance v5, Ljava/lang/Integer;

    const-string v6, "targetBytesLen"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v13}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->numBitsRequired()I

    move-result v19

    move-object v14, v8

    move-object v15, v2

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->convertToImplicitTrie(Ljava/lang/String;IIII)Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;

    move-result-object v23

    .line 86
    .local v23, pt:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".bit.trie"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 87
    .local v27, triePtFile:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->writeToFile(Ljava/lang/String;Z)V

    .line 88
    return-void

    .line 56
    .end local v8           #converter:Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;
    .end local v9           #symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .end local v13           #costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    .end local v21           #numBits:I
    .end local v23           #pt:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    .end local v24           #quant:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    .end local v25           #quantFile:Ljava/lang/String;
    .end local v27           #triePtFile:Ljava/lang/String;
    :cond_1cc
    new-instance v5, Ljava/lang/Boolean;

    const-string v6, "compactFormat"

    const-string v10, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v10}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "plainSymbolFile"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->generateTbl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto/16 :goto_d4
.end method
