.class public Lcom/google/android/apps/translatedecoder/util/ImplicitTrieLmGenerator;
.super Ljava/lang/Object;
.source "ImplicitTrieLmGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructImplicitTrie(Lcom/google/android/apps/translatedecoder/util/SymbolTable;D)Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    .registers 16
    .parameter "symbol"
    .parameter "oovCost"

    .prologue
    .line 28
    const/16 v3, 0x8

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "<S>"

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string v4, "A"

    aput-object v4, v12, v3

    const/4 v3, 0x2

    const-string v4, "AA"

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string v4, "B"

    aput-object v4, v12, v3

    const/4 v3, 0x4

    const-string v4, "C"

    aput-object v4, v12, v3

    const/4 v3, 0x5

    const-string v4, "D"

    aput-object v4, v12, v3

    const/4 v3, 0x6

    const-string v4, "E"

    aput-object v4, v12, v3

    const/4 v3, 0x7

    const-string v4, "</S>"

    aput-object v4, v12, v3

    .line 29
    .local v12, words:[Ljava/lang/String;
    const/4 v9, 0x1

    .local v9, i:I
    :goto_2d
    array-length v3, v12

    if-gt v9, v3, :cond_3a

    .line 30
    add-int/lit8 v3, v9, -0x1

    aget-object v11, v12, v3

    .line 31
    .local v11, word:Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    .line 29
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 36
    .end local v11           #word:Ljava/lang/String;
    :cond_3a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v10, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;>;"
    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    .line 38
    .local v8, data:Ljava/util/BitSet;
    new-instance v0, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    const-wide/high16 v1, -0x4010

    const-wide v3, 0x3f847ae147ae147bL

    const/16 v5, 0x2710

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;-><init>(DDI)V

    .line 39
    .local v0, quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    new-instance v1, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v6, 0x20

    move-object v2, v8

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 41
    .local v1, list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "<S>"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p1, p2}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 42
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "A"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, p1, p2}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 43
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "B"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5, p1, p2}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 44
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "C"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    invoke-direct {v3, v4, v5, p1, p2}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 45
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "D"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {v3, v4, v5, p1, p2}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 46
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "E"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5, p1, p2}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 47
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 51
    .end local v8           #data:Ljava/util/BitSet;
    .local v2, data:Ljava/util/BitSet;
    new-instance v1, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    .end local v1           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 52
    .restart local v1       #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "A"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 53
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "AA"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4024

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 54
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "B"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-wide v6, 0x3fc0a3d70a3d70a4L

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 55
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "E"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-wide v6, 0x3fd999999999999aL

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 56
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "C"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-wide v6, 0x3fc999999999999aL

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 57
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "E"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3fe0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 58
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "D"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-wide v6, 0x3fd3333333333333L

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 59
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "E"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-wide v6, -0x4037ae147ae147aeL

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 60
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "</S>"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4010

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 61
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-string v4, "</S>"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3ff0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 62
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v10}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;-><init>(ILjava/util/List;)V

    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .registers 13
    .parameter "args"

    .prologue
    const-wide/16 v2, 0x0

    .line 68
    const-string v11, "/home/zfli/git_android/google3/java/com/google/android/apps/translatedecoder/tests/src/testdata/symbol.txt"

    .line 70
    .local v11, symbolFile:Ljava/lang/String;
    invoke-static {v11}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v10

    .line 71
    .local v10, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    invoke-static {v10, v2, v3}, Lcom/google/android/apps/translatedecoder/util/ImplicitTrieLmGenerator;->constructImplicitTrie(Lcom/google/android/apps/translatedecoder/util/SymbolTable;D)Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    move-result-object v7

    .line 72
    .local v7, trie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    new-instance v0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;

    const/4 v1, 0x2

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;-><init>(IDDZLcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;)V

    .line 73
    .local v0, lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    const-string v9, "/home/zfli/git_android/google3/java/com/google/android/apps/translatedecoder/tests/src/testdata/implicit_trie_lm_oovcost_0.mmap"

    .line 75
    .local v9, lmFile:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v9, v1}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->writeToFile(Ljava/lang/String;Z)V

    .line 78
    invoke-static {v9}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    move-result-object v8

    .line 79
    .local v8, lm2:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lm2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->lmOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    return-void
.end method
