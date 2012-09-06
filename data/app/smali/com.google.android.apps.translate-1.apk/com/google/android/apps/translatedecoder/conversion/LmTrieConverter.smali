.class public Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;
.super Ljava/lang/Object;
.source "LmTrieConverter.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

.field private final lmOrder:I

.field private final noBackoff:Z

.field private final oovCost:D

.field private final prefixTrue:Z

.field private final stupidBackoffCost:D

.field private final symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;IDDZLcom/google/android/apps/translatedecoder/succinct/Quantizer;Z)V
    .registers 10
    .parameter "symbol"
    .parameter "lmOrder"
    .parameter "oovCost"
    .parameter "stupidBackoffCost"
    .parameter "noBackoff"
    .parameter "costQuantizer"
    .parameter "prefixTrue"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 41
    iput p2, p0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->lmOrder:I

    .line 42
    iput-wide p3, p0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->oovCost:D

    .line 43
    iput-wide p5, p0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->stupidBackoffCost:D

    .line 44
    iput-boolean p7, p0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->noBackoff:Z

    .line 45
    iput-object p8, p0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    .line 46
    iput-boolean p9, p0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->prefixTrue:Z

    .line 47
    return-void
.end method

.method private convert(Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;IIII)Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;
    .registers 24
    .parameter "trieRoot"
    .parameter "wordIdLen"
    .parameter "offSetLen"
    .parameter "valueLen"
    .parameter "actualMaxSrcLen"

    .prologue
    .line 64
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v16, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children()Ljava/util/List;

    move-result-object v11

    .line 66
    .local v11, curList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;>;"
    const/4 v13, 0x0

    .line 67
    .local v13, curOrder:I
    :goto_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e7

    .line 68
    add-int/lit8 v13, v13, 0x1

    .line 69
    move/from16 v0, p5

    if-le v13, v0, :cond_3b

    .line 70
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of layers in trie is greater than actualMaxSrcLen, wherecurorder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; and actualMaxSrcLen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_3b
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v15, nextList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;>;"
    const/16 v17, 0x0

    .line 76
    .local v17, offSet:I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 77
    .local v2, data:Ljava/util/BitSet;
    const/4 v1, 0x0

    .line 78
    .local v1, list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    move/from16 v0, p5

    if-ne v13, v0, :cond_9f

    .line 80
    new-instance v1, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    .end local v1           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 84
    .restart local v1       #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    :goto_5b
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_64
    :goto_64
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;

    .line 86
    .local v12, curNode:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    invoke-virtual {v12}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->value()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c8

    .line 90
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->prefixTrue:Z

    if-eqz v3, :cond_b0

    .line 91
    sget-object v3, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->logger:Ljava/util/logging/Logger;

    const-string v4, "Prefix node do not have value, must be wrong, try to set --prefixTrue=false if you know this is ok!"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 93
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 103
    :goto_87
    invoke-virtual {v12}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 104
    invoke-virtual {v12}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int v17, v17, v3

    .line 105
    invoke-virtual {v12}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children()Ljava/util/List;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_64

    .line 82
    .end local v12           #curNode:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_9f
    new-instance v1, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    .end local v1           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .restart local v1       #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    goto :goto_5b

    .line 97
    .restart local v12       #curNode:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_b0
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    invoke-virtual {v12}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->wordId()I

    move-result v4

    const-wide/16 v5, 0x0

    move/from16 v0, v17

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 98
    sget-object v3, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->logger:Ljava/util/logging/Logger;

    const-string v4, "The trieNode has null value!"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_87

    .line 101
    :cond_c8
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    invoke-virtual {v12}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->wordId()I

    move-result v4

    new-instance v5, Ljava/lang/Double;

    invoke-virtual {v12}, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->value()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move/from16 v0, v17

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    goto :goto_87

    .line 108
    .end local v12           #curNode:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    :cond_e4
    move-object v11, v15

    .line 109
    goto/16 :goto_a

    .line 110
    .end local v1           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    .end local v2           #data:Ljava/util/BitSet;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #nextList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;>;"
    .end local v17           #offSet:I
    :cond_e7
    sget-object v3, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "actualMaxSrcLen is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 111
    new-instance v3, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->oovCost:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->stupidBackoffCost:D

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->noBackoff:Z

    new-instance v10, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v16

    invoke-direct {v10, v4, v0}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;-><init>(ILjava/util/List;)V

    move/from16 v4, p5

    invoke-direct/range {v3 .. v10}, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;-><init>(IDDZLcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;)V

    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .registers 18
    .parameter "args"

    .prologue
    .line 116
    move-object/from16 v0, p0

    array-length v3, v0

    if-gtz v3, :cond_10

    .line 117
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Usage: java LmTrieConverter --symbolFile=file --quantizerFile=file --lmFile=file --lmOrder=order --oovCost=oovCost --stupidBackoffCost=cost --wordIdLen=len --offsetLen=len --outFile=file --prefixTrue=flag --mmapFormat=flag"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 124
    :cond_10
    new-instance v11, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 126
    .local v11, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/16 v3, 0xa

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "symbolFile"

    aput-object v4, v13, v3

    const/4 v3, 0x1

    const-string v4, "quantizerFile"

    aput-object v4, v13, v3

    const/4 v3, 0x2

    const-string v4, "lmFile"

    aput-object v4, v13, v3

    const/4 v3, 0x3

    const-string v4, "lmOrder"

    aput-object v4, v13, v3

    const/4 v3, 0x4

    const-string v4, "oovCost"

    aput-object v4, v13, v3

    const/4 v3, 0x5

    const-string v4, "stupidBackoffCost"

    aput-object v4, v13, v3

    const/4 v3, 0x6

    const-string v4, "noBackoff"

    aput-object v4, v13, v3

    const/4 v3, 0x7

    const-string v4, "wordIdLen"

    aput-object v4, v13, v3

    const/16 v3, 0x8

    const-string v4, "offsetLen"

    aput-object v4, v13, v3

    const/16 v3, 0x9

    const-string v4, "outFile"

    aput-object v4, v13, v3

    .line 128
    .local v13, requiredProperties:[Ljava/lang/String;
    invoke-virtual {v11, v13}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 130
    const-string v3, "symbolFile"

    invoke-virtual {v11, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v2

    .line 131
    .local v2, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    const-string v3, "quantizerFile"

    invoke-virtual {v11, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move-result-object v9

    .line 132
    .local v9, costQuantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    new-instance v1, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;

    const-string v3, "lmOrder"

    invoke-virtual {v11, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/Double;

    const-string v5, "oovCost"

    invoke-virtual {v11, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    new-instance v6, Ljava/lang/Double;

    const-string v7, "stupidBackoffCost"

    invoke-virtual {v11, v7}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    new-instance v8, Ljava/lang/Boolean;

    const-string v10, "noBackoff"

    const-string v15, "false"

    invoke-virtual {v11, v10, v15}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    new-instance v10, Ljava/lang/Boolean;

    const-string v15, "prefixTrue"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct/range {v1 .. v10}, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;-><init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;IDDZLcom/google/android/apps/translatedecoder/succinct/Quantizer;Z)V

    .line 140
    .local v1, converter:Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;
    invoke-virtual {v9}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->numBitsRequired()I

    move-result v14

    .line 141
    .local v14, valLen:I
    const-string v3, "lmFile"

    invoke-virtual {v11, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wordIdLen"

    invoke-virtual {v11, v4}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "offsetLen"

    invoke-virtual {v11, v5}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v14}, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->convertToImplicitTrie(Ljava/lang/String;III)Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;

    move-result-object v12

    .line 147
    .local v12, lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    const-string v3, "outFile"

    invoke-virtual {v11, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Boolean;

    const-string v5, "mmapFormat"

    const-string v6, "true"

    invoke-virtual {v11, v5, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v12, v3, v4}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->writeToFile(Ljava/lang/String;Z)V

    .line 149
    return-void
.end method


# virtual methods
.method public convertToImplicitTrie(Ljava/lang/String;III)Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;
    .registers 12
    .parameter "inputLmFile"
    .parameter "wordIdLen"
    .parameter "offSetLen"
    .parameter "valueLen"

    .prologue
    const/4 v3, 0x1

    .line 53
    new-array v6, v3, [I

    .line 54
    .local v6, actualMaxSrcLen:[I
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    iget v2, p0, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->lmOrder:I

    invoke-static {p1, v0, v2, v3, v6}, Lcom/google/android/apps/translatedecoder/conversion/TrieModelReader;->readIntoInternalTrie(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/util/SymbolTable;IZ[I)Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;

    move-result-object v1

    .line 56
    .local v1, trieRoot:Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
    const/4 v0, 0x0

    aget v5, v6, v0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/conversion/LmTrieConverter;->convert(Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;IIII)Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;

    move-result-object v0

    return-object v0
.end method
