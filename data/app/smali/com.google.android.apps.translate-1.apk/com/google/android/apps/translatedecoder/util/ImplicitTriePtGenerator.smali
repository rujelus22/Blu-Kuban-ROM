.class public Lcom/google/android/apps/translatedecoder/util/ImplicitTriePtGenerator;
.super Ljava/lang/Object;
.source "ImplicitTriePtGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructImplicitTriePt(Lcom/google/android/apps/translatedecoder/util/SymbolTable;)Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;
    .registers 23
    .parameter "symbol"

    .prologue
    .line 32
    new-instance v2, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    const-wide/16 v3, 0x0

    const-wide v5, 0x3fa999999999999aL

    const/16 v7, 0x2710

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;-><init>(DDI)V

    .line 33
    .local v2, costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    new-instance v18, Ljava/util/BitSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/BitSet;-><init>()V

    .line 34
    .local v18, targetData:Ljava/util/BitSet;
    new-instance v11, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;

    const/16 v6, 0x20

    const/16 v7, 0x20

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v6, v7, v2}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;-><init>(Ljava/util/BitSet;IILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 37
    .local v11, container:Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;
    const/16 v6, 0xa

    new-array v14, v6, [I

    .line 38
    .local v14, offSets:[I
    const/4 v13, 0x0

    .line 39
    .local v13, offSet:I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v15, phrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    const/16 v16, 0x0

    .line 43
    .local v16, srcId:I
    add-int/lit8 v17, v16, 0x1

    .end local v16           #srcId:I
    .local v17, srcId:I
    aput v13, v14, v16

    .line 44
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "a"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "A"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x3ff0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "a"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "AA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x4000

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v11, v15, v13}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v13

    .line 49
    add-int/lit8 v16, v17, 0x1

    .end local v17           #srcId:I
    .restart local v16       #srcId:I
    aput v13, v14, v17

    .line 50
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 51
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "b"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "B"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x3ff0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v11, v15, v13}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v13

    .line 55
    add-int/lit8 v17, v16, 0x1

    .end local v16           #srcId:I
    .restart local v17       #srcId:I
    aput v13, v14, v16

    .line 56
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 57
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "C"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x3ff0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v11, v15, v13}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v13

    .line 61
    add-int/lit8 v16, v17, 0x1

    .end local v17           #srcId:I
    .restart local v16       #srcId:I
    aput v13, v14, v17

    .line 62
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 63
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "D"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x3ff0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v11, v15, v13}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v13

    .line 67
    add-int/lit8 v17, v16, 0x1

    .end local v16           #srcId:I
    .restart local v17       #srcId:I
    aput v13, v14, v16

    .line 68
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 69
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "a b"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "A B"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide v20, 0x3ff199999999999aL

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "a b"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "AA BB"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x4000

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v11, v15, v13}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v13

    .line 74
    add-int/lit8 v16, v17, 0x1

    .end local v17           #srcId:I
    .restart local v16       #srcId:I
    aput v13, v14, v17

    .line 75
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 76
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "b c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "B C"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x3ff0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v11, v15, v13}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v13

    .line 80
    add-int/lit8 v17, v16, 0x1

    .end local v16           #srcId:I
    .restart local v17       #srcId:I
    aput v13, v14, v16

    .line 81
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 82
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "c d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "C E"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x4008

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v11, v15, v13}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v13

    .line 86
    add-int/lit8 v16, v17, 0x1

    .end local v17           #srcId:I
    .restart local v16       #srcId:I
    aput v13, v14, v17

    .line 87
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 88
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "a b c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "A BB C"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x4024

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "a b c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "A BB CC"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x4010

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v11, v15, v13}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v13

    .line 93
    add-int/lit8 v17, v16, 0x1

    .end local v16           #srcId:I
    .restart local v17       #srcId:I
    aput v13, v14, v16

    .line 94
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 95
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "b c d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "B C D"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide v20, 0x3feccccccccccccdL

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v11, v15, v13}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v13

    .line 99
    add-int/lit8 v16, v17, 0x1

    .end local v17           #srcId:I
    .restart local v16       #srcId:I
    aput v13, v14, v17

    .line 100
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 101
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "a b c d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "A B C D"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide v20, 0x4007333333333333L

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const-string v7, "a b c d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "A B C DD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    const-wide/high16 v20, 0x4014

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v11, v15, v13}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v13

    .line 106
    const/16 v16, 0x0

    .line 107
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v12, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;>;"
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    const-wide/high16 v4, -0x4010

    const-wide/high16 v6, 0x3ff0

    const/16 v8, 0x2710

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;-><init>(DDI)V

    .line 111
    .local v3, offSetQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 112
    .local v5, data:Ljava/util/BitSet;
    new-instance v4, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/16 v8, 0x20

    const/16 v9, 0x20

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 114
    .local v4, list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v7, "a"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #srcId:I
    .restart local v17       #srcId:I
    aget v9, v14, v16

    int-to-double v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 115
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v7, "b"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v16, v17, 0x1

    .end local v17           #srcId:I
    .restart local v16       #srcId:I
    aget v9, v14, v17

    int-to-double v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 116
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v7, "c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    add-int/lit8 v17, v16, 0x1

    .end local v16           #srcId:I
    .restart local v17       #srcId:I
    aget v9, v14, v16

    int-to-double v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 119
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v7, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    add-int/lit8 v16, v17, 0x1

    .end local v17           #srcId:I
    .restart local v16       #srcId:I
    aget v9, v14, v17

    int-to-double v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 120
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v5, Ljava/util/BitSet;

    .end local v5           #data:Ljava/util/BitSet;
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 124
    .restart local v5       #data:Ljava/util/BitSet;
    new-instance v4, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    .end local v4           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/16 v8, 0x20

    const/16 v9, 0x20

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 126
    .restart local v4       #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v7, "b"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #srcId:I
    .restart local v17       #srcId:I
    aget v9, v14, v16

    int-to-double v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 127
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v7, "c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v16, v17, 0x1

    .end local v17           #srcId:I
    .restart local v16       #srcId:I
    aget v9, v14, v17

    int-to-double v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 128
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v7, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    add-int/lit8 v17, v16, 0x1

    .end local v16           #srcId:I
    .restart local v17       #srcId:I
    aget v9, v14, v16

    int-to-double v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 129
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v5, Ljava/util/BitSet;

    .end local v5           #data:Ljava/util/BitSet;
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 133
    .restart local v5       #data:Ljava/util/BitSet;
    new-instance v4, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    .end local v4           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/16 v8, 0x20

    const/16 v9, 0x20

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 135
    .restart local v4       #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v7, "c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    add-int/lit8 v16, v17, 0x1

    .end local v17           #srcId:I
    .restart local v16       #srcId:I
    aget v9, v14, v17

    int-to-double v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 136
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v7, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v17, v16, 0x1

    .end local v16           #srcId:I
    .restart local v17       #srcId:I
    aget v9, v14, v16

    int-to-double v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 137
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v5, Ljava/util/BitSet;

    .end local v5           #data:Ljava/util/BitSet;
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 141
    .restart local v5       #data:Ljava/util/BitSet;
    new-instance v4, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    .end local v4           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/16 v8, 0x20

    const/16 v9, 0x20

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 143
    .restart local v4       #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v7, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    add-int/lit8 v16, v17, 0x1

    .end local v17           #srcId:I
    .restart local v16       #srcId:I
    aget v9, v14, v17

    int-to-double v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 144
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v10, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    const/4 v6, 0x4

    invoke-direct {v10, v6, v12}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;-><init>(ILjava/util/List;)V

    .line 148
    .local v10, trie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    const-string v6, "a b c d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->lookup([I)Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    move-result-object v19

    .line 149
    .local v19, trieNode:Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trieNode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;

    const/4 v7, 0x4

    const-wide/high16 v8, 0x4059

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;-><init>(IDLcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;)V

    return-object v6
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
    .parameter "args"

    .prologue
    .line 155
    const-string v4, "/home/zfli/git_android/google3/java/com/google/android/apps/translatedecoder/tests/src/testdata/symbol.txt"

    .line 157
    .local v4, symbolFile:Ljava/lang/String;
    const-string v2, "/home/zfli/git_android/google3/java/com/google/android/apps/translatedecoder/tests/src/testdata/implicit_trie_pt.mmap"

    .line 159
    .local v2, ptFile:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v3

    .line 160
    .local v3, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    invoke-static {v3}, Lcom/google/android/apps/translatedecoder/util/ImplicitTriePtGenerator;->constructImplicitTriePt(Lcom/google/android/apps/translatedecoder/util/SymbolTable;)Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;

    move-result-object v0

    .line 161
    .local v0, pt:Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;
    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->writeToFile(Ljava/lang/String;Z)V

    .line 164
    invoke-static {v2}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    move-result-object v1

    .line 165
    .local v1, pt2:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pt2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->maxPhraseLen()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    return-void
.end method
