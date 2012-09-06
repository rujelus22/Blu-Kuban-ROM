.class public Lcom/google/android/apps/translatedecoder/tools/LanguageModelScorer;
.super Ljava/lang/Object;
.source "LanguageModelScorer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIds(Lcom/google/android/apps/translatedecoder/util/SymbolTable;Ljava/lang/String;I)[I
    .registers 8
    .parameter "symbol"
    .parameter "sentence"
    .parameter "unkId"

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, words:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 76
    .local v1, res:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_27

    .line 77
    aget-object v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->hasWord(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 78
    aget-object v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 76
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 80
    :cond_24
    aput p2, v1, v0

    goto :goto_21

    .line 83
    :cond_27
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 18
    .parameter "args"

    .prologue
    .line 29
    move-object/from16 v0, p0

    array-length v15, v0

    if-gtz v15, :cond_10

    .line 30
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Usage: java LanguageModelScorer --symbolFile=file --lmFile=file --inputFile=file --outputFile=file --startIndex=number"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/System;->exit(I)V

    .line 36
    :cond_10
    new-instance v3, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 38
    .local v3, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/4 v15, 0x5

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "symbolFile"

    aput-object v16, v11, v15

    const/4 v15, 0x1

    const-string v16, "lmFile"

    aput-object v16, v11, v15

    const/4 v15, 0x2

    const-string v16, "inputFile"

    aput-object v16, v11, v15

    const/4 v15, 0x3

    const-string v16, "outputFile"

    aput-object v16, v11, v15

    const/4 v15, 0x4

    const-string v16, "startIndex"

    aput-object v16, v11, v15

    .line 40
    .local v11, requiredProperties:[Ljava/lang/String;
    invoke-virtual {v3, v11}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 42
    const-string v15, "symbolFile"

    invoke-virtual {v3, v15}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v13

    .line 43
    .local v13, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    const-string v15, "lmFile"

    invoke-virtual {v3, v15}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    move-result-object v9

    .line 45
    .local v9, lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    const-string v15, "<UNK>"

    invoke-virtual {v13, v15}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v14

    .line 46
    .local v14, unkId:I
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->setSimulateProdlm(Z)V

    .line 47
    invoke-virtual {v9, v14}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->setUnkId(I)V

    .line 48
    const-string v15, "startIndex"

    invoke-virtual {v3, v15}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 50
    .local v12, startIndex:I
    :try_start_65
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    const-string v16, "inputFile"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    .local v7, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    .local v1, br:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/DataOutputStream;

    new-instance v15, Ljava/io/FileOutputStream;

    const-string v16, "outputFile"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    .local v10, out:Ljava/io/DataOutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v15, Ljava/io/OutputStreamWriter;

    invoke-direct {v15, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 58
    .local v2, bw:Ljava/io/BufferedWriter;
    :goto_9d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, line:Ljava/lang/String;
    if-eqz v8, :cond_d9

    .line 59
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15, v14}, Lcom/google/android/apps/translatedecoder/tools/LanguageModelScorer;->getIds(Lcom/google/android/apps/translatedecoder/util/SymbolTable;Ljava/lang/String;I)[I

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/apps/translatedecoder/util/Utils;->intArrayToList([I)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v9, v15, v12}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->sentenceCost(Ljava/util/List;I)D

    move-result-wide v4

    .line 61
    .local v4, cost:D
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ||| "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_d3} :catch_d4
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_d3} :catch_e3

    goto :goto_9d

    .line 66
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #cost:D
    .end local v7           #in:Ljava/io/DataInputStream;
    .end local v8           #line:Ljava/lang/String;
    .end local v10           #out:Ljava/io/DataOutputStream;
    :catch_d4
    move-exception v6

    .line 67
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 71
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :goto_d8
    return-void

    .line 63
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v7       #in:Ljava/io/DataInputStream;
    .restart local v8       #line:Ljava/lang/String;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    :cond_d9
    :try_start_d9
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 64
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 65
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_e2
    .catch Ljava/io/FileNotFoundException; {:try_start_d9 .. :try_end_e2} :catch_d4
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_e2} :catch_e3

    goto :goto_d8

    .line 68
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v7           #in:Ljava/io/DataInputStream;
    .end local v8           #line:Ljava/lang/String;
    .end local v10           #out:Ljava/io/DataOutputStream;
    :catch_e3
    move-exception v6

    .line 69
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d8
.end method
