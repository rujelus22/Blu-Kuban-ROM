.class public Lcom/google/android/apps/translatedecoder/decoder/Search;
.super Ljava/lang/Object;
.source "Search.java"


# static fields
.field private static final BOS:Ljava/lang/String; = "<S>"

.field private static final EOS:Ljava/lang/String; = "</S>"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

.field private final combiner:Lcom/google/android/apps/translatedecoder/decoder/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/translatedecoder/decoder/Combiner",
            "<",
            "Lcom/google/android/apps/translatedecoder/pt/PhrasePair;",
            ">;"
        }
    .end annotation
.end field

.field private inputWords:[I

.field private final lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

.field private final phraseTable:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

.field private final rapidRespTbl:Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;

.field private final wordIdForBOS:I

.field private final wordIdForEOS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/google/android/apps/translatedecoder/decoder/Search;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/decoder/Search;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/pt/PhraseTable;Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;Lcom/google/android/apps/translatedecoder/util/Config;Lcom/google/android/apps/translatedecoder/util/SymbolTable;[I)V
    .registers 13
    .parameter "phraseTable"
    .parameter "lm"
    .parameter "config"
    .parameter "symbol"
    .parameter "inputWords"

    .prologue
    .line 65
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/translatedecoder/decoder/Search;-><init>(Lcom/google/android/apps/translatedecoder/pt/PhraseTable;Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;Lcom/google/android/apps/translatedecoder/util/Config;Lcom/google/android/apps/translatedecoder/util/SymbolTable;[I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/pt/PhraseTable;Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;Lcom/google/android/apps/translatedecoder/util/Config;Lcom/google/android/apps/translatedecoder/util/SymbolTable;[I)V
    .registers 10
    .parameter "phraseTable"
    .parameter "rapidRespTbl"
    .parameter "lm"
    .parameter "config"
    .parameter "symbol"
    .parameter "inputWords"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->phraseTable:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    .line 50
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->rapidRespTbl:Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;

    .line 51
    iput-object p3, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    .line 52
    iput-object p6, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    .line 53
    const-string v0, "<S>"

    invoke-virtual {p5, v0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->wordIdForBOS:I

    .line 54
    const-string v0, "</S>"

    invoke-virtual {p5, v0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->wordIdForEOS:I

    .line 55
    invoke-virtual {p4}, Lcom/google/android/apps/translatedecoder/util/Config;->beamSize()I

    move-result v0

    if-gtz v0, :cond_32

    .line 56
    new-instance v0, Lcom/google/android/apps/translatedecoder/decoder/Chart;

    invoke-direct {v0}, Lcom/google/android/apps/translatedecoder/decoder/Chart;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    .line 60
    :goto_28
    new-instance v0, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    invoke-direct {v0, p3, v1}, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;-><init>(Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;Lcom/google/android/apps/translatedecoder/decoder/Chart;)V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->combiner:Lcom/google/android/apps/translatedecoder/decoder/Combiner;

    .line 61
    return-void

    .line 58
    :cond_32
    new-instance v0, Lcom/google/android/apps/translatedecoder/decoder/Chart;

    new-instance v1, Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;

    invoke-virtual {p4}, Lcom/google/android/apps/translatedecoder/util/Config;->beamSize()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/translatedecoder/decoder/Chart;-><init>(Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;)V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    goto :goto_28
.end method

.method private processEndPos(I)V
    .registers 13
    .parameter "endPos"

    .prologue
    const/4 v10, 0x0

    .line 123
    if-nez p1, :cond_1c

    .line 125
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [I

    iget v9, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->wordIdForBOS:I

    aput v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->state([I[I)[I

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Lcom/google/android/apps/translatedecoder/decoder/Chart;->getNode(I[I)Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .line 164
    :cond_16
    :goto_16
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    invoke-virtual {v5, p1}, Lcom/google/android/apps/translatedecoder/decoder/Chart;->finishProcess(I)V

    .line 165
    return-void

    .line 126
    :cond_1c
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    array-length v5, v5

    if-gt p1, v5, :cond_85

    .line 127
    const/4 v4, 0x0

    .local v4, startPos:I
    :goto_22
    if-ge v4, p1, :cond_59

    .line 132
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    invoke-virtual {v5, v4}, Lcom/google/android/apps/translatedecoder/decoder/Chart;->nodes(I)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_35

    .line 127
    :cond_32
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 136
    :cond_35
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    invoke-static {v5, v4, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v3

    .line 138
    .local v3, srcWords:[I
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->phraseTable:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    invoke-virtual {v5, v3}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->getPhrases([I)Ljava/util/List;

    move-result-object v2

    .line 140
    .local v2, phrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->rapidRespTbl:Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;

    if-eqz v5, :cond_4b

    .line 141
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->rapidRespTbl:Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;

    invoke-virtual {v5, v3, v2}, Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;->filterPhrases([ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 144
    :cond_4b
    if-eqz v2, :cond_32

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_32

    .line 147
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->combiner:Lcom/google/android/apps/translatedecoder/decoder/Combiner;

    invoke-interface {v5, v0, v2, p1}, Lcom/google/android/apps/translatedecoder/decoder/Combiner;->combine(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_32

    .line 151
    .end local v0           #nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    .end local v2           #phrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    .end local v3           #srcWords:[I
    :cond_59
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    invoke-virtual {v5, p1}, Lcom/google/android/apps/translatedecoder/decoder/Chart;->hasNode(I)Z

    move-result v5

    if-nez v5, :cond_16

    .line 152
    add-int/lit8 v4, p1, -0x1

    .line 153
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    invoke-virtual {v5, v4}, Lcom/google/android/apps/translatedecoder/decoder/Chart;->nodes(I)Ljava/util/List;

    move-result-object v0

    .line 154
    .restart local v0       #nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->phraseTable:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->createOOVPhrase(I)Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    move-result-object v1

    .line 155
    .local v1, phrase:Lcom/google/android/apps/translatedecoder/pt/PhrasePair;
    if-eqz v1, :cond_7d

    if-eqz v0, :cond_7d

    .line 156
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->combiner:Lcom/google/android/apps/translatedecoder/decoder/Combiner;

    invoke-interface {v5, v0, v1, p1}, Lcom/google/android/apps/translatedecoder/decoder/Combiner;->combine(Ljava/util/List;Lcom/google/android/apps/translatedecoder/decoder/Transition;I)V

    goto :goto_16

    .line 158
    :cond_7d
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Either phrase or nodes are null."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    .end local v0           #nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    .end local v1           #phrase:Lcom/google/android/apps/translatedecoder/pt/PhrasePair;
    .end local v4           #startPos:I
    :cond_85
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong endPos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public chart()Lcom/google/android/apps/translatedecoder/decoder/Chart;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    return-object v0
.end method

.method public createLattice(I)Lcom/google/android/apps/translatedecoder/decoder/Lattice;
    .registers 9
    .parameter "endPos"

    .prologue
    .line 105
    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/google/android/apps/translatedecoder/decoder/Chart;->nodes(I)Ljava/util/List;

    move-result-object v2

    .line 106
    .local v2, srcNodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2b

    .line 107
    :cond_10
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No src nodes for end postion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_2b
    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->phraseTable:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    iget v4, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->wordIdForEOS:I

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->createIdentityPhrase(ID)Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    move-result-object v1

    .line 111
    .local v1, phrase:Lcom/google/android/apps/translatedecoder/pt/PhrasePair;
    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->combiner:Lcom/google/android/apps/translatedecoder/decoder/Combiner;

    invoke-interface {v3, v2, v1, p1}, Lcom/google/android/apps/translatedecoder/decoder/Combiner;->createGoalNode(Ljava/util/List;Lcom/google/android/apps/translatedecoder/decoder/Transition;I)Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    move-result-object v0

    .line 112
    .local v0, goalNode:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge()Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    move-result-object v3

    if-nez v3, :cond_4b

    .line 113
    :cond_43
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "No goal node, must be wrong!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_4b
    new-instance v3, Lcom/google/android/apps/translatedecoder/decoder/Lattice;

    invoke-direct {v3, v0}, Lcom/google/android/apps/translatedecoder/decoder/Lattice;-><init>(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;)V

    return-object v3
.end method

.method public decodeAdditionalWords([I)Lcom/google/android/apps/translatedecoder/decoder/Lattice;
    .registers 8
    .parameter "additionalWords"

    .prologue
    .line 90
    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    if-nez v3, :cond_19

    const/4 v1, 0x0

    .line 91
    .local v1, prevEndPos:I
    :goto_5
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    .line 92
    .local v2, prevWords:[I
    array-length v3, p1

    add-int/2addr v3, v1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    .line 93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_1d

    .line 94
    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    aget v4, v2, v0

    aput v4, v3, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 90
    .end local v0           #i:I
    .end local v1           #prevEndPos:I
    .end local v2           #prevWords:[I
    :cond_19
    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    array-length v1, v3

    goto :goto_5

    .line 96
    .restart local v0       #i:I
    .restart local v1       #prevEndPos:I
    .restart local v2       #prevWords:[I
    :cond_1d
    move v0, v1

    :goto_1e
    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2e

    .line 97
    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    sub-int v4, v0, v1

    aget v4, p1, v4

    aput v4, v3, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 99
    :cond_2e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevEndPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translatedecoder/decoder/Search;->search(I)Lcom/google/android/apps/translatedecoder/decoder/Lattice;

    move-result-object v3

    return-object v3
.end method

.method public search()Lcom/google/android/apps/translatedecoder/decoder/Lattice;
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translatedecoder/decoder/Search;->search(I)Lcom/google/android/apps/translatedecoder/decoder/Lattice;

    move-result-object v0

    return-object v0
.end method

.method public search(I)Lcom/google/android/apps/translatedecoder/decoder/Lattice;
    .registers 4
    .parameter "startPos"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    array-length v1, v1

    if-gt v1, p1, :cond_b

    .line 75
    :cond_9
    const/4 v1, 0x0

    .line 83
    :goto_a
    return-object v1

    .line 79
    :cond_b
    if-nez p1, :cond_1b

    const/4 v0, 0x0

    .line 80
    .local v0, i:I
    :goto_e
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1e

    .line 81
    invoke-direct {p0, v0}, Lcom/google/android/apps/translatedecoder/decoder/Search;->processEndPos(I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 79
    .end local v0           #i:I
    :cond_1b
    add-int/lit8 v0, p1, 0x1

    goto :goto_e

    .line 83
    .restart local v0       #i:I
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Search;->inputWords:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translatedecoder/decoder/Search;->createLattice(I)Lcom/google/android/apps/translatedecoder/decoder/Lattice;

    move-result-object v1

    goto :goto_a
.end method
