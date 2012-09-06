.class public Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;
.super Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
.source "HashMapBasedPt.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x2c43815cd41de026L


# instance fields
.field private final transient symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

.field private final table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/pt/PhrasePair;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IDLjava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V
    .registers 7
    .parameter "maxPhraseLen"
    .parameter "oovCost"
    .parameter "ptFile"
    .parameter "symbol"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->maxPhraseLen:I

    .line 38
    iput-wide p2, p0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->oovCost:D

    .line 39
    iput-object p5, p0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->table:Ljava/util/Map;

    .line 41
    invoke-direct {p0, p4}, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->loadFromFile(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private joinWords([I)Ljava/lang/String;
    .registers 5
    .parameter "srcWords"

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v1, res:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_1b

    .line 99
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_18

    .line 101
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 104
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadFromFile(Ljava/lang/String;)V
    .registers 18
    .parameter "file"

    .prologue
    .line 58
    const/4 v8, -0x1

    .line 60
    .local v8, maxNumSrcWords:I
    :try_start_1
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    .local v6, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 62
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .local v2, count:I
    move v3, v2

    .line 64
    .end local v2           #count:I
    .local v3, count:I
    :goto_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_98

    .line 65
    add-int/lit8 v2, v3, 0x1

    .end local v3           #count:I
    .restart local v2       #count:I
    const v12, 0xf4240

    rem-int v12, v3, v12

    if-nez v12, :cond_40

    .line 66
    sget-object v12, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# of phrases readed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 68
    :cond_40
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\s+\\|{3}\\s+"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, fds:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    const/4 v13, 0x0

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v11

    .line 70
    .local v11, srcWords:[I
    array-length v12, v11

    if-le v12, v8, :cond_59

    .line 71
    array-length v8, v11

    .line 73
    :cond_59
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->joinWords([I)Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, srcString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->table:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 75
    .local v9, phrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    if-nez v9, :cond_77

    .line 76
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #phrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .restart local v9       #phrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->table:Ljava/util/Map;

    invoke-interface {v12, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_77
    new-instance v12, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    const/4 v14, 0x1

    aget-object v14, v5, v14

    invoke-virtual {v13, v14}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v13

    new-instance v14, Ljava/lang/Double;

    const/4 v15, 0x2

    aget-object v15, v5, v15

    invoke-direct {v14, v15}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-direct {v12, v11, v13, v14, v15}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 80
    .end local v2           #count:I
    .restart local v3       #count:I
    goto :goto_19

    .line 81
    .end local v5           #fds:[Ljava/lang/String;
    .end local v9           #phrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    .end local v10           #srcString:Ljava/lang/String;
    .end local v11           #srcWords:[I
    :cond_98
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9b} :catch_d3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9b} :catch_d8

    .line 87
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #count:I
    .end local v6           #in:Ljava/io/DataInputStream;
    .end local v7           #line:Ljava/lang/String;
    :goto_9b
    sget-object v12, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->logger:Ljava/util/logging/Logger;

    const-string v13, "Finished reading phrase table."

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 89
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->maxPhraseLen:I

    if-eq v8, v12, :cond_d2

    .line 90
    sget-object v12, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "maxNumSrcWords != maxPhraseLen, that is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " != "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->maxPhraseLen:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 92
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->maxPhraseLen:I

    .line 94
    :cond_d2
    return-void

    .line 82
    :catch_d3
    move-exception v4

    .line 83
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_9b

    .line 84
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_d8
    move-exception v4

    .line 85
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b
.end method


# virtual methods
.method public getPhrases([I)Ljava/util/List;
    .registers 4
    .parameter "srcWords"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/pt/PhrasePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    array-length v0, p1

    iget v1, p0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->maxPhraseLen:I

    if-le v0, v1, :cond_7

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->table:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->joinWords([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_6
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/apps/translatedecoder/pt/HashMapBasedPt;->logger:Ljava/util/logging/Logger;

    const-string v1, "calling unimplement function"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 111
    return-void
.end method
