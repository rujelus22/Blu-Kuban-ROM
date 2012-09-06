.class public Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;
.super Ljava/lang/Object;
.source "PtTrieConverter.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

.field private final maxPhraseLen:I

.field private final oovCost:D

.field private final symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;IDLcom/google/android/apps/translatedecoder/succinct/Quantizer;)V
    .registers 6
    .parameter "symbol"
    .parameter "maxPhraseLen"
    .parameter "oovCost"
    .parameter "costQuantizer"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 41
    iput p2, p0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->maxPhraseLen:I

    .line 42
    iput-wide p3, p0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->oovCost:D

    .line 43
    iput-object p5, p0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    .line 44
    return-void
.end method

.method private convert(Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;IIIII)Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;
    .registers 41
    .parameter "trieRoot"
    .parameter "wordIdLen"
    .parameter "offSetLen"
    .parameter "targetContainerBytesLen"
    .parameter "valueLen"
    .parameter "actualMaxSrcLen"

    .prologue
    .line 61
    new-instance v27, Ljava/util/BitSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/BitSet;-><init>()V

    .line 62
    .local v27, targetData:Ljava/util/BitSet;
    new-instance v28, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;-><init>(Ljava/util/BitSet;IILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 64
    .local v28, tgtContainer:Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;
    const/16 v26, 0x0

    .line 65
    .local v26, targetByteOffSet:I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v29, tgtPhrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v25, srcTrieNodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children()Ljava/util/List;

    move-result-object v13

    .line 69
    .local v13, curList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;>;"
    const/4 v15, 0x0

    .line 70
    .local v15, curOrder:I
    :goto_27
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_172

    .line 71
    add-int/lit8 v15, v15, 0x1

    .line 72
    move/from16 v0, p6

    if-le v15, v0, :cond_58

    .line 73
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number of layers in trie is greater than actualMaxSrcLen, wherecurorder="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; and actualMaxSrcLen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    :cond_58
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v23, nextList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;>;"
    const/16 v24, 0x0

    .line 79
    .local v24, srcOffSet:I
    new-instance v16, Ljava/util/BitSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/BitSet;-><init>()V

    .line 80
    .local v16, data:Ljava/util/BitSet;
    new-instance v4, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    const-wide/high16 v5, -0x4010

    const-wide/high16 v7, 0x3ff0

    const-wide/high16 v30, 0x4000

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v9, v0

    add-int/lit8 v9, v9, -0x1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;-><init>(DDI)V

    .line 83
    .local v4, offSetQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    const/4 v5, 0x0

    .line 84
    .local v5, list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    move/from16 v0, p6

    if-ne v15, v0, :cond_d5

    .line 86
    new-instance v5, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    .end local v5           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, v16

    move/from16 v8, p2

    move/from16 v10, p4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 93
    .restart local v5       #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    :goto_90
    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_99
    :goto_99
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;

    .line 95
    .local v14, curNode:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    invoke-virtual {v14}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->value()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e5

    .line 98
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    invoke-virtual {v14}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->wordId()I

    move-result v7

    const-wide/high16 v8, -0x4010

    move/from16 v0, v24

    invoke-direct {v6, v7, v0, v8, v9}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v5, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 126
    :goto_bb
    invoke-virtual {v14}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_99

    .line 127
    invoke-virtual {v14}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int v24, v24, v6

    .line 128
    invoke-virtual {v14}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_99

    .line 89
    .end local v14           #curNode:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    :cond_d5
    new-instance v5, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    .end local v5           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    const/4 v7, 0x0

    move-object/from16 v6, v16

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .restart local v5       #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    goto :goto_90

    .line 101
    .restart local v14       #curNode:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    :cond_e5
    new-instance v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    invoke-virtual {v14}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->wordId()I

    move-result v7

    move/from16 v0, v26

    int-to-double v8, v0

    move/from16 v0, v24

    invoke-direct {v6, v7, v0, v8, v9}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v5, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 104
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 108
    invoke-virtual {v14}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->value()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+\\|{2}\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 109
    .local v18, fds:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v6, v0

    if-gtz v6, :cond_113

    .line 110
    sget-object v6, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->logger:Ljava/util/logging/Logger;

    const-string v7, "no target phrases!"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 111
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 113
    :cond_113
    move-object/from16 v12, v18

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_11a
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_162

    aget-object v17, v12, v21

    .line 114
    .local v17, fd:Ljava/lang/String;
    const-string v6, "\\s+\\|{3}\\s+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 115
    .local v19, fds2:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_13b

    .line 116
    sget-object v6, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->logger:Ljava/util/logging/Logger;

    const-string v7, "target phrase format error!"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 117
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 120
    :cond_13b
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    const/4 v9, 0x0

    aget-object v9, v19, v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords(Ljava/lang/String;)[I

    move-result-object v8

    new-instance v9, Ljava/lang/Double;

    const/4 v11, 0x1

    aget-object v11, v19, v11

    invoke-direct {v9, v11}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v21, v21, 0x1

    goto :goto_11a

    .line 124
    .end local v17           #fd:Ljava/lang/String;
    .end local v19           #fds2:[Ljava/lang/String;
    :cond_162
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrases(Ljava/util/List;I)I

    move-result v26

    goto/16 :goto_bb

    .line 131
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v14           #curNode:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .end local v18           #fds:[Ljava/lang/String;
    .end local v21           #i$:I
    .end local v22           #len$:I
    :cond_16e
    move-object/from16 v13, v23

    .line 132
    goto/16 :goto_27

    .line 133
    .end local v4           #offSetQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    .end local v5           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    .end local v16           #data:Ljava/util/BitSet;
    .end local v23           #nextList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;>;"
    .end local v24           #srcOffSet:I
    :cond_172
    new-instance v10, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, v25

    invoke-direct {v10, v6, v0}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;-><init>(ILjava/util/List;)V

    .line 134
    .local v10, srcTrie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    sget-object v6, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "actualMaxSrcLen is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 135
    new-instance v6, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->oovCost:D

    move/from16 v7, p6

    move-object/from16 v11, v28

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;-><init>(IDLcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;)V

    return-object v6
.end method

.method public static main([Ljava/lang/String;)V
    .registers 16
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    .line 139
    array-length v6, p0

    if-gtz v6, :cond_e

    .line 140
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Usage: java PtTrieConverter --symbolFile=file --quantizerFile=file --ptFile=file --ptOrder=order --oovCost=oovCost --wordIdLen=len --offsetLen=len --targetBytesLen=len --outFile=file --mmapFormat=flag"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 147
    :cond_e
    new-instance v12, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    invoke-direct {v12, p0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 149
    .local v12, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/16 v6, 0x9

    new-array v14, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "symbolFile"

    aput-object v7, v14, v6

    const-string v6, "quantizerFile"

    aput-object v6, v14, v8

    const/4 v6, 0x2

    const-string v7, "ptFile"

    aput-object v7, v14, v6

    const/4 v6, 0x3

    const-string v7, "ptOrder"

    aput-object v7, v14, v6

    const/4 v6, 0x4

    const-string v7, "oovCost"

    aput-object v7, v14, v6

    const/4 v6, 0x5

    const-string v7, "wordIdLen"

    aput-object v7, v14, v6

    const/4 v6, 0x6

    const-string v7, "offsetLen"

    aput-object v7, v14, v6

    const/4 v6, 0x7

    const-string v7, "targetBytesLen"

    aput-object v7, v14, v6

    const/16 v6, 0x8

    const-string v7, "outFile"

    aput-object v7, v14, v6

    .line 151
    .local v14, requiredProperties:[Ljava/lang/String;
    invoke-virtual {v12, v14}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 153
    const-string v6, "symbolFile"

    invoke-virtual {v12, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v1

    .line 154
    .local v1, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    const-string v6, "ptOrder"

    invoke-virtual {v12, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 155
    .local v2, order:I
    new-instance v6, Ljava/lang/Double;

    const-string v7, "oovCost"

    invoke-virtual {v12, v7}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 156
    .local v3, oovCost:D
    const-string v6, "quantizerFile"

    invoke-virtual {v12, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move-result-object v5

    .line 157
    .local v5, costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    new-instance v0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;-><init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;IDLcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 158
    .local v0, converter:Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;
    invoke-virtual {v5}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->numBitsRequired()I

    move-result v11

    .line 159
    .local v11, valLen:I
    const-string v6, "ptFile"

    invoke-virtual {v12, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "wordIdLen"

    invoke-virtual {v12, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v6, "offsetLen"

    invoke-virtual {v12, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v6, "targetBytesLen"

    invoke-virtual {v12, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->convertToImplicitTrie(Ljava/lang/String;IIII)Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;

    move-result-object v13

    .line 165
    .local v13, pt:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    const-string v6, "outFile"

    invoke-virtual {v12, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Boolean;

    const-string v8, "mmapFormat"

    const-string v9, "true"

    invoke-virtual {v12, v8, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v13, v6, v7}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->writeToFile(Ljava/lang/String;Z)V

    .line 167
    return-void
.end method


# virtual methods
.method public convertToImplicitTrie(Ljava/lang/String;IIII)Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;
    .registers 14
    .parameter "inputPtFile"
    .parameter "wordIdLen"
    .parameter "offSetLen"
    .parameter "targetContainerBytesLen"
    .parameter "valueLen"

    .prologue
    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 49
    .local v7, actualMaxSrcLen:[I
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    iget v2, p0, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->maxPhraseLen:I

    invoke-static {p1, v0, v2, v3, v7}, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->readIntoInternalTrie(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;IZ[I)Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;

    move-result-object v1

    .line 51
    .local v1, trieRoot:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    aget v6, v7, v3

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/translatedecoder/conversion/PtTrieConverter;->convert(Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;IIIII)Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;

    move-result-object v0

    return-object v0
.end method
