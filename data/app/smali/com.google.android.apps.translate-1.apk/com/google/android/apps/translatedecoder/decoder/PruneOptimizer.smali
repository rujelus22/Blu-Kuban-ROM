.class public Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;
.super Ljava/lang/Object;
.source "PruneOptimizer.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final config:Lcom/google/android/apps/translatedecoder/util/Config;

.field private final lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

.field private final ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/Config;)V
    .registers 3
    .parameter "config"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    .line 41
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->readSymbolFromFile()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 42
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->ptSymbolTblFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/Config;->lmSymbolTblFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 48
    :goto_1f
    return-void

    .line 45
    :cond_20
    new-instance v0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-direct {v0}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 46
    new-instance v0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-direct {v0}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    goto :goto_1f
.end method

.method private binarySearch(Ljava/lang/String;)I
    .registers 11
    .parameter "input"

    .prologue
    .line 94
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->decoding(Ljava/lang/String;I)Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;

    move-result-object v1

    .line 95
    .local v1, exactOutput:Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;
    const/4 v4, 0x1

    .line 96
    .local v4, start:I
    const/16 v0, 0x64

    .line 97
    .local v0, end:I
    const/4 v2, -0x1

    .line 98
    .local v2, middle:I
    :goto_9
    if-gt v4, v0, :cond_67

    .line 99
    add-int v5, v4, v0

    div-int/lit8 v2, v5, 0x2

    .line 100
    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->decoding(Ljava/lang/String;I)Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;

    move-result-object v3

    .line 101
    .local v3, output:Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;
    sget-object v5, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "middle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; start="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; exactCost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->getCost()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; Cost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->getCost()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->hasSearchError(Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 104
    add-int/lit8 v4, v2, 0x1

    goto :goto_9

    .line 106
    :cond_64
    add-int/lit8 v0, v2, -0x1

    goto :goto_9

    .line 109
    .end local v3           #output:Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;
    :cond_67
    add-int/lit8 v5, v0, 0x1

    return v5
.end method

.method private decoding(Ljava/lang/String;I)Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;
    .registers 7
    .parameter "input"
    .parameter "beamSize"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/translatedecoder/util/Config;->setBeamSize(I)V

    .line 127
    new-instance v0, Lcom/google/android/apps/translatedecoder/decoder/Decoder;

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translatedecoder/decoder/Decoder;-><init>(Lcom/google/android/apps/translatedecoder/util/Config;Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 128
    .local v0, decoder:Lcom/google/android/apps/translatedecoder/decoder/Decoder;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/decoder/Decoder;->decodingWithStatInfo(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;

    move-result-object v1

    return-object v1
.end method

.method private getOptimalBeam(Ljava/util/List;D)I
    .registers 9
    .parameter
    .parameter "percentageError"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;D)I"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, minBeamSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, p2

    double-to-int v1, v2

    .line 86
    .local v1, numErrors:I
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 87
    .local v0, minBeamSizes2:[Ljava/lang/Integer;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 88
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sorted array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private hasSearchError(Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;)Z
    .registers 8
    .parameter "exactOutput"
    .parameter "output"

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-virtual {p2}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->getCost()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->getCost()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_e

    .line 122
    :cond_d
    :goto_d
    return v0

    .line 115
    :cond_e
    invoke-virtual {p2}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->getCost()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->getCost()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2a

    .line 116
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->getDetokenizedOutput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->getDetokenizedOutput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 122
    const/4 v0, 0x0

    goto :goto_d

    .line 120
    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cost is better, should never happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    .line 132
    array-length v4, p0

    if-ge v4, v6, :cond_e

    .line 133
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Usage: java PruneOptimizer configFile [--option_key=option_value]+"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 139
    :cond_e
    new-instance v0, Lcom/google/android/apps/translatedecoder/util/Config;

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-direct {v0, v4}, Lcom/google/android/apps/translatedecoder/util/Config;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, config:Lcom/google/android/apps/translatedecoder/util/Config;
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 144
    .local v1, flagsArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    array-length v4, v1

    if-ge v2, v4, :cond_28

    .line 145
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    aput-object v4, v1, v2

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 147
    :cond_28
    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/util/Config;->setParametersFromArgs([Ljava/lang/String;)V

    .line 148
    new-instance v3, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;

    invoke-direct {v3, v0}, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;-><init>(Lcom/google/android/apps/translatedecoder/util/Config;)V

    .line 149
    .local v3, optimizer:Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->inputFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/Config;->outputFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->batchSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method


# virtual methods
.method public batchSearch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter "inputFile"
    .parameter "outputFile"

    .prologue
    .line 54
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 56
    .local v1, br:Ljava/io/BufferedReader;
    new-instance v9, Ljava/io/DataOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .local v9, out:Ljava/io/DataOutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    .local v2, bw:Ljava/io/BufferedWriter;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v7, minBeamSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_79

    .line 62
    sget-object v12, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Decoding: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, v5}, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->binarySearch(Ljava/lang/String;)I

    move-result v6

    .line 64
    .local v6, min:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_73} :catch_74
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_73} :catch_b6

    goto :goto_31

    .line 75
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #min:I
    .end local v7           #minBeamSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9           #out:Ljava/io/DataOutputStream;
    :catch_74
    move-exception v3

    .line 76
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 80
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_78
    return-void

    .line 68
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v7       #minBeamSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9       #out:Ljava/io/DataOutputStream;
    :cond_79
    :try_start_79
    iget-object v12, p0, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->config:Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v12}, Lcom/google/android/apps/translatedecoder/util/Config;->maxSearchError()D

    move-result-wide v10

    .line 69
    .local v10, percentageError:D
    invoke-direct {p0, v7, v10, v11}, Lcom/google/android/apps/translatedecoder/decoder/PruneOptimizer;->getOptimalBeam(Ljava/util/List;D)I

    move-result v8

    .line 70
    .local v8, optBeam:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Optimal beam size allows "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " error is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 72
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 73
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 74
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_b5
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_b5} :catch_74
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_b5} :catch_b6

    goto :goto_78

    .line 77
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #minBeamSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8           #optBeam:I
    .end local v9           #out:Ljava/io/DataOutputStream;
    .end local v10           #percentageError:D
    :catch_b6
    move-exception v3

    .line 78
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_78
.end method
