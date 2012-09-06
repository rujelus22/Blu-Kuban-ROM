.class public Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;
.super Ljava/lang/Object;
.source "QuantizerGenerator.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateQuantizer(ILjava/lang/String;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    .registers 13
    .parameter "maxUnitValue"
    .parameter "modelFile"

    .prologue
    .line 30
    const/4 v6, 0x0

    .line 32
    .local v6, line:Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 34
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v7, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .local v1, count:I
    move v2, v1

    .line 36
    .end local v1           #count:I
    .local v2, count:I
    :goto_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5f

    .line 37
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    const v8, 0xf4240

    rem-int v8, v2, v8

    if-nez v8, :cond_46

    const/4 v8, 0x1

    if-eq v1, v8, :cond_46

    .line 38
    sget-object v8, Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# of ngrams read: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 40
    :cond_46
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s+\\|{3}\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, fds:[Ljava/lang/String;
    new-instance v8, Ljava/lang/Double;

    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v4, v9

    invoke-direct {v8, v9}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 43
    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_1c

    .line 44
    .end local v4           #fds:[Ljava/lang/String;
    :cond_5f
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 45
    sget-object v8, Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;->logger:Ljava/util/logging/Logger;

    const-string v9, "Finished reading the model."

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 46
    invoke-static {p0, v7}, Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;->generateQuantizer(ILjava/util/List;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6c} :catch_6e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6c} :catch_74
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_6c} :catch_79

    move-result-object v8

    .line 55
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #count:I
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v7           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    :goto_6d
    return-object v8

    .line 47
    :catch_6e
    move-exception v3

    .line 48
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 55
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_72
    const/4 v8, 0x0

    goto :goto_6d

    .line 49
    :catch_74
    move-exception v3

    .line 50
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_72

    .line 51
    .end local v3           #e:Ljava/io/IOException;
    :catch_79
    move-exception v3

    .line 52
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "line="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_72
.end method

.method public static generateQuantizer(ILjava/util/List;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    .registers 17
    .parameter "maxUnitValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/android/apps/translatedecoder/succinct/Quantizer;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    const-wide v1, 0x7fefffffffffffffL

    .line 61
    .local v1, minValue:D
    const-wide/16 v7, 0x1

    .line 62
    .local v7, maxValue:D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 63
    .local v9, val:D
    cmpg-double v0, v9, v1

    if-gez v0, :cond_20

    .line 64
    move-wide v1, v9

    .line 66
    :cond_20
    cmpl-double v0, v9, v7

    if-lez v0, :cond_b

    .line 67
    move-wide v7, v9

    goto :goto_b

    .line 71
    .end local v9           #val:D
    :cond_26
    sub-double v11, v7, v1

    int-to-double v13, p0

    div-double v3, v11, v13

    .line 72
    .local v3, valPerUnit:D
    sget-object v0, Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "minValue="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "; maxValue="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "; valPerUnit="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "; maxUnitValue="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;-><init>(DDI)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    .line 79
    array-length v4, p0

    if-gtz v4, :cond_e

    .line 80
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Usage: java QuantizerGenerator --modelFile=file --numBits=num --outFile=file"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 85
    :cond_e
    new-instance v0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 87
    .local v0, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "modelFile"

    aput-object v5, v3, v4

    const-string v4, "numBits"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "outFile"

    aput-object v5, v3, v4

    .line 88
    .local v3, requiredProperties:[Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 90
    const-string v4, "numBits"

    invoke-virtual {v0, v4}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 91
    .local v1, numBits:I
    const-wide/high16 v4, 0x4000

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    const-string v5, "modelFile"

    invoke-virtual {v0, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translatedecoder/tools/QuantizerGenerator;->generateQuantizer(ILjava/lang/String;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move-result-object v2

    .line 93
    .local v2, quan:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input numBits="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; out numBits="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->numBitsRequired()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    const-string v4, "outFile"

    invoke-virtual {v0, v4}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->writeToFile(Ljava/lang/String;)V

    .line 95
    return-void
.end method
