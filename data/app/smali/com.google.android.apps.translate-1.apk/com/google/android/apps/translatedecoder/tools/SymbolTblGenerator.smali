.class public Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;
.super Ljava/lang/Object;
.source "SymbolTblGenerator.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToHashMapBasedSymbol(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;
    .registers 10
    .parameter "symbolFile"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v3

    .line 38
    .local v3, oldSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    new-instance v4, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    const/4 v6, -0x1

    invoke-direct {v4, v6}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>(I)V

    .line 39
    .local v4, res:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;
    invoke-virtual {v3}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->allWords()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v2, :cond_59

    aget-object v5, v0, v1

    .line 40
    .local v5, word:Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->addWord(Ljava/lang/String;)I

    .line 42
    invoke-virtual {v4, v5}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->getId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v7

    if-eq v6, v7, :cond_56

    .line 43
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Different id for word "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v5}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 47
    .end local v5           #word:Ljava/lang/String;
    :cond_59
    return-object v4
.end method

.method public static generatePTWrapperTbl(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 23
    .parameter "inFile"
    .parameter "lmSymbol"
    .parameter "symbolFile"
    .parameter "compactFormat"
    .parameter "plainSymbolFile"
    .parameter "mmapFormat"

    .prologue
    .line 96
    const/4 v14, 0x1

    move/from16 v0, p3

    if-eq v0, v14, :cond_d

    .line 97
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    const-string v15, "compactFormat has to be true"

    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 100
    :cond_d
    :try_start_d
    new-instance v9, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-direct {v9}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>()V

    .line 101
    .local v9, ptAddTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->readModel(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 102
    invoke-virtual {v9}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->allWords()[Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, ptWords:[Ljava/lang/String;
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 104
    new-instance v10, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;

    new-instance v14, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->maximumId()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v12, v15, v0}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;-><init>([Ljava/lang/String;ZI)V

    invoke-direct {v10, v14}, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;-><init>(Lcom/google/android/apps/translatedecoder/util/SortedStringArray;)V

    .line 106
    .local v10, ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    new-instance v11, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v10}, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;-><init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 107
    .local v11, ptSymbolWrapper:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    sget-object v14, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->logger:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "write file to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->writeToFile(Ljava/lang/String;Z)V

    .line 111
    if-eqz p4, :cond_ab

    .line 112
    invoke-virtual {v11}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->allWords()[Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, allWords:[Ljava/lang/String;
    new-instance v8, Ljava/io/DataOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p4

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 114
    .local v8, out:Ljava/io/DataOutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/OutputStreamWriter;

    invoke-direct {v14, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 115
    .local v4, bw:Ljava/io/BufferedWriter;
    move-object v3, v2

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_7a
    if-ge v6, v7, :cond_a5

    aget-object v13, v3, v6

    .line 116
    .local v13, word:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11, v13}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    .line 118
    .end local v13           #word:Ljava/lang/String;
    :cond_a5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 119
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 123
    .end local v2           #allWords:[Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #bw:Ljava/io/BufferedWriter;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #out:Ljava/io/DataOutputStream;
    :cond_ab
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->allWords()[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v7, v3

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_b1
    if-ge v6, v7, :cond_fc

    aget-object v13, v3, v6

    .line 124
    .restart local v13       #word:Ljava/lang/String;
    invoke-virtual {v11, v13}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v15

    if-eq v14, v15, :cond_fd

    .line 125
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Different id for word "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11, v13}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " vs "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_f8
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_f8} :catch_f8
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_f8} :catch_100

    .line 129
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #ptAddTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;
    .end local v10           #ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .end local v11           #ptSymbolWrapper:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .end local v12           #ptWords:[Ljava/lang/String;
    .end local v13           #word:Ljava/lang/String;
    :catch_f8
    move-exception v5

    .line 131
    .local v5, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 135
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :cond_fc
    :goto_fc
    return-void

    .line 123
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #ptAddTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;
    .restart local v10       #ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .restart local v11       #ptSymbolWrapper:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .restart local v12       #ptWords:[Ljava/lang/String;
    .restart local v13       #word:Ljava/lang/String;
    :cond_fd
    add-int/lit8 v6, v6, 0x1

    goto :goto_b1

    .line 132
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #ptAddTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;
    .end local v10           #ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .end local v11           #ptSymbolWrapper:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .end local v12           #ptWords:[Ljava/lang/String;
    .end local v13           #word:Ljava/lang/String;
    :catch_100
    move-exception v5

    .line 133
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fc
.end method

.method public static generateTbl(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 21
    .parameter "inFile"
    .parameter "oldSymbol"
    .parameter "symbolFile"
    .parameter "compactFormat"
    .parameter "plainSymbolFile"
    .parameter "mmapFormat"

    .prologue
    .line 63
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->readModel(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->allWords()[Ljava/lang/String;

    move-result-object v11

    .line 65
    .local v11, words:[Ljava/lang/String;
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 66
    sget-object v12, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "write file to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 67
    move-object/from16 v5, p1

    .line 68
    .local v5, finalSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    if-eqz p3, :cond_33

    .line 69
    new-instance v9, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    const/4 v12, 0x1

    invoke-direct {v9, v11, v12}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;-><init>([Ljava/lang/String;Z)V

    .line 70
    .local v9, sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;
    new-instance v5, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;

    .end local v5           #finalSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    invoke-direct {v5, v9}, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;-><init>(Lcom/google/android/apps/translatedecoder/util/SortedStringArray;)V

    .line 72
    .end local v9           #sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;
    .restart local v5       #finalSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    :cond_33
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->writeToFile(Ljava/lang/String;Z)V

    .line 74
    if-eqz p4, :cond_86

    .line 75
    new-instance v8, Ljava/io/DataOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v8, out:Ljava/io/DataOutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 77
    .local v3, bw:Ljava/io/BufferedWriter;
    move-object v2, v11

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_55
    if-ge v6, v7, :cond_80

    aget-object v10, v2, v6

    .line 78
    .local v10, word:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v10}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 77
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 80
    .end local v10           #word:Ljava/lang/String;
    :cond_80
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 81
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_86} :catch_87
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_86} :catch_8c

    .line 88
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v5           #finalSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #out:Ljava/io/DataOutputStream;
    .end local v11           #words:[Ljava/lang/String;
    :cond_86
    :goto_86
    return-void

    .line 83
    :catch_87
    move-exception v4

    .line 84
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_86

    .line 85
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_8c
    move-exception v4

    .line 86
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_86
.end method

.method public static generateTbl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 11
    .parameter "inFile"
    .parameter "symbolFile"
    .parameter "compactFormat"
    .parameter "plainSymbolFile"
    .parameter "mmapFormat"

    .prologue
    .line 53
    new-instance v1, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-direct {v1}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>()V

    .local v1, symbol:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 54
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->generateTbl(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 55
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 10
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    .line 168
    array-length v2, p0

    if-gtz v2, :cond_e

    .line 169
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Usage: java SymbolTblGenerator --inFile=file --outFile=file --compactFormat=true/false --plainSymbolFile=file --mmapFormat=flag"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 174
    :cond_e
    new-instance v0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 176
    .local v0, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "inFile"

    aput-object v3, v1, v2

    const-string v2, "outFile"

    aput-object v2, v1, v4

    .line 177
    .local v1, requiredProperties:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 179
    const-string v2, "inFile"

    invoke-virtual {v0, v2}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "outFile"

    invoke-virtual {v0, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Boolean;

    const-string v5, "compactFormat"

    const-string v6, "true"

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "plainSymbolFile"

    invoke-virtual {v0, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Boolean;

    const-string v7, "mmapFormat"

    const-string v8, "true"

    invoke-virtual {v0, v7, v8}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->generateTbl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 183
    return-void
.end method

.method private static readModel(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V
    .registers 3
    .parameter "modelFile"
    .parameter "symbol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->readModel(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    .line 140
    return-void
.end method

.method private static readModel(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V
    .registers 16
    .parameter "modelFile"
    .parameter "symbol"
    .parameter "addSymbol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    sget-object v10, Lcom/google/android/apps/translatedecoder/tools/SymbolTblGenerator;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "read file from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 146
    new-instance v5, Ljava/io/DataInputStream;

    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/Utils;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 148
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 149
    .local v7, line:Ljava/lang/String;
    :cond_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_66

    .line 150
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 151
    const-string v10, "\\s+\\|{3}\\s+"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, fds:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3d
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_2c

    .line 154
    aget-object v10, v2, v3

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, wrds:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4d
    if-ge v4, v6, :cond_63

    aget-object v8, v0, v4

    .line 156
    .local v8, wrd:Ljava/lang/String;
    if-eqz p2, :cond_5f

    invoke-virtual {p1, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->hasWord(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5f

    .line 157
    invoke-virtual {p2, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    .line 155
    :goto_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 159
    :cond_5f
    invoke-virtual {p1, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    goto :goto_5c

    .line 153
    .end local v8           #wrd:Ljava/lang/String;
    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 164
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #fds:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #wrds:[Ljava/lang/String;
    :cond_66
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 165
    return-void
.end method
