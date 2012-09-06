.class public Lcom/google/android/apps/translatedecoder/decoder/Lattice;
.super Ljava/lang/Object;
.source "Lattice.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final goalNode:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/apps/translatedecoder/decoder/Lattice;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;)V
    .registers 2
    .parameter "goalNode"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->goalNode:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .line 24
    return-void
.end method

.method private extractViterbi(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;ZLcom/google/android/apps/translatedecoder/util/SymbolTable;Ljava/lang/StringBuilder;)V
    .registers 6
    .parameter "node"
    .parameter "addBracket"
    .parameter "symbol"
    .parameter "res"

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge()Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 47
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge()Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->src()Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->extractViterbi(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;ZLcom/google/android/apps/translatedecoder/util/SymbolTable;Ljava/lang/StringBuilder;)V

    .line 48
    if-eqz p2, :cond_18

    .line 49
    const-string v0, "[ "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge()Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->transition()Lcom/google/android/apps/translatedecoder/decoder/Transition;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/translatedecoder/decoder/Transition;->tgtWords()[I

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getWords([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    if-eqz p2, :cond_37

    .line 54
    const-string v0, "] "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_37
    return-void
.end method


# virtual methods
.method public extractViterbi(ZLcom/google/android/apps/translatedecoder/util/SymbolTable;)Ljava/lang/String;
    .registers 7
    .parameter "addBracket"
    .parameter "symbol"

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, res:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->goalNode:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge()Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->src()Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->extractViterbi(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;ZLcom/google/android/apps/translatedecoder/util/SymbolTable;Ljava/lang/StringBuilder;)V

    .line 40
    sget-object v1, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public goalNode()Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Lattice;->goalNode:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    return-object v0
.end method
