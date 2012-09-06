.class public Lcom/google/android/apps/translatedecoder/tools/HashMapBasedModelGenerator;
.super Ljava/lang/Object;
.source "HashMapBasedModelGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 15
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    .line 22
    array-length v1, p0

    if-gtz v1, :cond_e

    .line 23
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Usage: java SymbolTblGenerator --symbolFile=file --lmFile=file --lmOrder=order --lmOovCost=cost --lmOutFile=file--ptFile=file --ptOrder=order --ptOovCost=cost --ptOutFile=file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 29
    :cond_e
    new-instance v12, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    invoke-direct {v12, p0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 31
    .local v12, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/4 v1, 0x5

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ptFile"

    aput-object v2, v13, v1

    const-string v1, "lmFile"

    aput-object v1, v13, v3

    const/4 v1, 0x2

    const-string v2, "symbolFile"

    aput-object v2, v13, v1

    const/4 v1, 0x3

    const-string v2, "ptOutFile"

    aput-object v2, v13, v1

    const/4 v1, 0x4

    const-string v2, "lmOutFile"

    aput-object v2, v13, v1

    .line 33
    .local v13, requiredProperties:[Ljava/lang/String;
    invoke-virtual {v12, v13}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 35
    const-string v1, "symbolFile"

    invoke-virtual {v12, v1}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v5

    .line 36
    .local v5, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    new-instance v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;

    const-string v1, "lmOrder"

    const-string v2, "2"

    invoke-virtual {v12, v1, v2}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/Double;

    const-string v3, "lmOovCost"

    const-string v4, "100"

    invoke-virtual {v12, v3, v4}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v4, "lmFile"

    invoke-virtual {v12, v4}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;-><init>(IDLjava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 40
    .local v0, lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    const-string v1, "lmOutFile"

    invoke-virtual {v12, v1}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->writeToFile(Ljava/lang/String;)V

    .line 42
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;

    const-string v1, "ptOrder"

    const-string v2, "2"

    invoke-virtual {v12, v1, v2}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v1, Ljava/lang/Double;

    const-string v2, "ptOovCost"

    const-string v3, "100"

    invoke-virtual {v12, v2, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v1, "ptFile"

    invoke-virtual {v12, v1}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;-><init>(IDLjava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 46
    .local v6, pt:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    const-string v1, "ptOutFile"

    invoke-virtual {v12, v1}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->writeToFile(Ljava/lang/String;)V

    .line 47
    return-void
.end method
