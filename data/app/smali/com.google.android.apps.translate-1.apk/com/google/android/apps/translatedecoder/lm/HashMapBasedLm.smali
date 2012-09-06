.class public Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;
.super Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
.source "HashMapBasedLm.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x606c5aa51e33f5fdL


# instance fields
.field private final lmModel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final transient symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IDLjava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V
    .registers 8
    .parameter "lmOrder"
    .parameter "oovCost"
    .parameter "lmFile"
    .parameter "symbol"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->lmOrder:I

    .line 35
    iput-wide p2, p0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->oovCost:D

    .line 36
    iput-object p5, p0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->lmModel:Ljava/util/Map;

    .line 38
    if-nez p4, :cond_1d

    .line 39
    sget-object v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->logger:Ljava/util/logging/Logger;

    const-string v1, "lm file is empty!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 43
    :goto_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->noBackoff:Z

    .line 44
    return-void

    .line 41
    :cond_1d
    invoke-direct {p0, p4}, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->loadFromFile(Ljava/lang/String;)V

    goto :goto_19
.end method

.method private loadFromFile(Ljava/lang/String;)V
    .registers 18
    .parameter "file"

    .prologue
    .line 67
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->noBackoff:Z

    .line 68
    const/4 v9, 0x0

    .line 70
    .local v9, maxOrder:I
    :try_start_6
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v7, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .local v2, count:I
    move v3, v2

    .line 74
    .end local v2           #count:I
    .local v3, count:I
    :goto_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, line:Ljava/lang/String;
    if-eqz v8, :cond_92

    .line 75
    add-int/lit8 v2, v3, 0x1

    .end local v3           #count:I
    .restart local v2       #count:I
    rem-int/lit16 v12, v3, 0x3e8

    if-nez v12, :cond_45

    const/4 v12, 0x1

    if-eq v2, v12, :cond_45

    .line 76
    sget-object v12, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# of ngrams read: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 78
    :cond_45
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\s+\\|{3}\\s+"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, fds:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    const/4 v13, 0x0

    aget-object v13, v5, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v11

    .line 80
    .local v11, wordIds:[I
    array-length v12, v11

    if-le v12, v9, :cond_62

    .line 81
    array-length v9, v11

    .line 83
    :cond_62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v10, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_68
    array-length v12, v11

    if-ge v6, v12, :cond_7d

    .line 85
    aget v12, v11, v6

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    if-ge v6, v12, :cond_7a

    .line 87
    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_7a
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 90
    :cond_7d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->lmModel:Ljava/util/Map;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/Double;

    const/4 v15, 0x1

    aget-object v15, v5, v15

    invoke-direct {v14, v15}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    .line 91
    .end local v2           #count:I
    .restart local v3       #count:I
    goto :goto_1e

    .line 92
    .end local v5           #fds:[Ljava/lang/String;
    .end local v6           #i:I
    .end local v10           #sb:Ljava/lang/StringBuilder;
    .end local v11           #wordIds:[I
    :cond_92
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_95} :catch_cd
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_95} :catch_d2

    .line 98
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #count:I
    .end local v7           #in:Ljava/io/DataInputStream;
    .end local v8           #line:Ljava/lang/String;
    :goto_95
    sget-object v12, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->logger:Ljava/util/logging/Logger;

    const-string v13, "Finished reading lm table."

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->lmOrder:I

    if-eq v9, v12, :cond_cc

    .line 100
    sget-object v12, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "maxOrder != lmOrder, that is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " != "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->lmOrder:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->lmOrder:I

    .line 103
    :cond_cc
    return-void

    .line 93
    :catch_cd
    move-exception v4

    .line 94
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_95

    .line 95
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_d2
    move-exception v4

    .line 96
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95
.end method


# virtual methods
.method public ngramCost(Ljava/util/List;)D
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_20

    .line 52
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 55
    :cond_23
    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->lmModel:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 56
    .local v2, score:Ljava/lang/Double;
    if-nez v2, :cond_37

    .line 57
    iget-wide v3, p0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->oovCost:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 59
    :cond_37
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    return-wide v3
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/apps/translatedecoder/lm/HashMapBasedLm;->logger:Ljava/util/logging/Logger;

    const-string v1, "calling unimplement function"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 109
    return-void
.end method
