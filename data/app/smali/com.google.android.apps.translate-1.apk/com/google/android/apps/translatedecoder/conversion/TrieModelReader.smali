.class public Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;
.super Ljava/lang/Object;
.source "TrieModelReader.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTrieNode(Ljava/util/List;I)Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .registers 11
    .parameter
    .parameter "wordId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;",
            ">;I)",
            "Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;"
        }
    .end annotation

    .prologue
    .local p0, sortedNodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;>;"
    const/4 v8, 0x0

    .line 130
    const/4 v6, 0x0

    .line 131
    .local v6, start:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 132
    .local v0, end:I
    const/4 v2, -0x1

    .line 133
    .local v2, middle:I
    const/4 v1, 0x0

    .line 135
    .local v1, i:I
    :goto_a
    if-gt v6, v0, :cond_27

    .line 136
    add-int v7, v6, v0

    div-int/lit8 v2, v7, 0x2

    .line 137
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;

    .line 138
    .local v4, node:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    invoke-virtual {v4}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->wordId()I

    move-result v3

    .line 139
    .local v3, middleWordId:I
    if-ne p1, v3, :cond_1d

    .line 151
    .end local v3           #middleWordId:I
    .end local v4           #node:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    :goto_1c
    return-object v4

    .line 141
    .restart local v3       #middleWordId:I
    .restart local v4       #node:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    :cond_1d
    if-le p1, v3, :cond_23

    .line 142
    add-int/lit8 v6, v2, 0x1

    .line 143
    move v1, v6

    goto :goto_a

    .line 145
    :cond_23
    add-int/lit8 v0, v2, -0x1

    .line 146
    move v1, v2

    goto :goto_a

    .line 149
    .end local v3           #middleWordId:I
    .end local v4           #node:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    :cond_27
    new-instance v5, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;

    invoke-direct {v5, p1, v8, v8}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;-><init>(ILjava/util/List;Ljava/lang/String;)V

    .line 150
    .local v5, res:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    invoke-interface {p0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v4, v5

    .line 151
    goto :goto_1c
.end method

.method public static readIntoInternalTrie(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;IZ)Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .registers 5
    .parameter "file"
    .parameter "symbol"
    .parameter "maxSrcLen"
    .parameter "skipDupVal"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->readIntoInternalTrie(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;IZ[I)Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public static readIntoInternalTrie(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;IZ[I)Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .registers 25
    .parameter "file"
    .parameter "symbol"
    .parameter "maxSrcLen"
    .parameter "skipDupVal"
    .parameter "actualMaxSrcLen"

    .prologue
    .line 43
    :try_start_0
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    .local v11, in:Ljava/io/DataInputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 45
    .local v4, br:Ljava/io/BufferedReader;
    new-instance v14, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;-><init>(ILjava/util/List;Ljava/lang/String;)V

    .line 46
    .local v14, root:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    const/4 v5, 0x0

    .line 49
    .local v5, count:I
    const/4 v3, 0x0

    .local v3, actualMaxSrcLen0:I
    move v6, v5

    .line 50
    .end local v5           #count:I
    .local v6, count:I
    :goto_32
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, line:Ljava/lang/String;
    if-eqz v12, :cond_1d0

    .line 51
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    const v17, 0xf4240

    rem-int v17, v6, v17

    if-nez v17, :cond_61

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_61

    .line 52
    sget-object v17, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "# of ngrams read: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 54
    :cond_61
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "\\s+\\|{3}\\s+"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 55
    .local v9, fds:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_92

    .line 56
    sget-object v17, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Has one or zero field, line="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move v6, v5

    .line 57
    .end local v5           #count:I
    .restart local v6       #count:I
    goto :goto_32

    .line 59
    .end local v6           #count:I
    .restart local v5       #count:I
    :cond_92
    const/16 v17, 0x0

    aget-object v17, v9, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v16

    .line 62
    .local v16, wordIds:[I
    if-lez p2, :cond_e9

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_e9

    .line 64
    sget-object v17, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "wordIds.length > maxSrcLen, where wordIds.length="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; maxSrcLen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\nline="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move v6, v5

    .line 66
    .end local v5           #count:I
    .restart local v6       #count:I
    goto/16 :goto_32

    .line 68
    .end local v6           #count:I
    .restart local v5       #count:I
    :cond_e9
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-gtz v17, :cond_fc

    .line 69
    sget-object v17, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->logger:Ljava/util/logging/Logger;

    const-string v18, "no words"

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 70
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V

    .line 72
    :cond_fc
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v3, :cond_108

    move-object/from16 v0, v16

    array-length v3, v0

    .line 75
    :cond_108
    move-object v13, v14

    .line 76
    .local v13, parent:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    const/4 v7, 0x0

    .line 77
    .local v7, cur:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_10b
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_132

    .line 78
    invoke-virtual {v13}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children()Ljava/util/List;

    move-result-object v17

    if-nez v17, :cond_124

    .line 79
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->setChildren(Ljava/util/List;)V

    .line 81
    :cond_124
    invoke-virtual {v13}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children()Ljava/util/List;

    move-result-object v17

    aget v18, v16, v10

    invoke-static/range {v17 .. v18}, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->getTrieNode(Ljava/util/List;I)Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;

    move-result-object v7

    .line 82
    move-object v13, v7

    .line 77
    add-int/lit8 v10, v10, 0x1

    goto :goto_10b

    .line 86
    :cond_132
    const-string v15, ""

    .line 87
    .local v15, value:Ljava/lang/String;
    const/4 v10, 0x1

    :goto_135
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_172

    .line 88
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v10

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 89
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v10, v0, :cond_16f

    .line 90
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ||| "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 87
    :cond_16f
    add-int/lit8 v10, v10, 0x1

    goto :goto_135

    .line 94
    :cond_172
    invoke-virtual {v7}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->value()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_17e

    .line 95
    invoke-virtual {v7, v15}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->setValue(Ljava/lang/String;)V

    :goto_17b
    move v6, v5

    .line 105
    .end local v5           #count:I
    .restart local v6       #count:I
    goto/16 :goto_32

    .line 97
    .end local v6           #count:I
    .restart local v5       #count:I
    :cond_17e
    if-eqz p3, :cond_1a8

    .line 98
    sget-object v17, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Duplicate value, line="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_19a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_19a} :catch_19b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19a} :catch_1cb

    goto :goto_17b

    .line 112
    .end local v3           #actualMaxSrcLen0:I
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v5           #count:I
    .end local v7           #cur:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .end local v9           #fds:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #in:Ljava/io/DataInputStream;
    .end local v12           #line:Ljava/lang/String;
    .end local v13           #parent:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .end local v14           #root:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .end local v15           #value:Ljava/lang/String;
    .end local v16           #wordIds:[I
    :catch_19b
    move-exception v8

    .line 113
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 117
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :goto_19f
    sget-object v17, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->logger:Ljava/util/logging/Logger;

    const-string v18, "Finished reading the model."

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 118
    const/4 v14, 0x0

    :goto_1a7
    return-object v14

    .line 102
    .restart local v3       #actualMaxSrcLen0:I
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v5       #count:I
    .restart local v7       #cur:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .restart local v9       #fds:[Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v11       #in:Ljava/io/DataInputStream;
    .restart local v12       #line:Ljava/lang/String;
    .restart local v13       #parent:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .restart local v14       #root:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .restart local v15       #value:Ljava/lang/String;
    .restart local v16       #wordIds:[I
    :cond_1a8
    :try_start_1a8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->value()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " || "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->setValue(Ljava/lang/String;)V
    :try_end_1ca
    .catch Ljava/io/FileNotFoundException; {:try_start_1a8 .. :try_end_1ca} :catch_19b
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ca} :catch_1cb

    goto :goto_17b

    .line 114
    .end local v3           #actualMaxSrcLen0:I
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v5           #count:I
    .end local v7           #cur:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .end local v9           #fds:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #in:Ljava/io/DataInputStream;
    .end local v12           #line:Ljava/lang/String;
    .end local v13           #parent:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .end local v14           #root:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .end local v15           #value:Ljava/lang/String;
    .end local v16           #wordIds:[I
    :catch_1cb
    move-exception v8

    .line 115
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19f

    .line 106
    .end local v8           #e:Ljava/io/IOException;
    .restart local v3       #actualMaxSrcLen0:I
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v6       #count:I
    .restart local v11       #in:Ljava/io/DataInputStream;
    .restart local v12       #line:Ljava/lang/String;
    .restart local v14       #root:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    :cond_1d0
    :try_start_1d0
    sget-object v17, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "actualMaxSrcLen0="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 107
    if-eqz p4, :cond_1f0

    .line 108
    const/16 v17, 0x0

    aput v3, p4, v17

    .line 110
    :cond_1f0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_1f3
    .catch Ljava/io/FileNotFoundException; {:try_start_1d0 .. :try_end_1f3} :catch_19b
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1f3} :catch_1cb

    goto :goto_1a7
.end method
