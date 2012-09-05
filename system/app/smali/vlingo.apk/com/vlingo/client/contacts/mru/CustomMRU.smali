.class public Lcom/vlingo/client/contacts/mru/CustomMRU;
.super Ljava/lang/Object;
.source "CustomMRU.java"


# static fields
.field private static final COUNT_INCREMENT_FOR_RESCALE:I = 0x5

.field private static final MRU_MAX_SIZE:I = 0x32

.field private static final RESCALE_FACTOR:F = 0.98f


# instance fields
.field private final name:Ljava/lang/String;

.field private final store:Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;

.field private final table:Lcom/vlingo/client/core/mru/MRUTable;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "max"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->name:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;

    invoke-direct {v0}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->store:Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;

    .line 27
    iget-object v0, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->store:Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;

    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->init(Ljava/lang/String;I)V

    .line 28
    iget-object v0, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->store:Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->loadMRUTable()Lcom/vlingo/client/core/mru/MRUTable;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->table:Lcom/vlingo/client/core/mru/MRUTable;

    .line 29
    return-void
.end method

.method private pruneTable(Lcom/vlingo/client/core/mru/MRUTable;)V
    .registers 5
    .parameter "table"

    .prologue
    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/vlingo/client/core/mru/MRUTable;->getNumItems()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_18

    .line 69
    invoke-virtual {p1}, Lcom/vlingo/client/core/mru/MRUTable;->removeLowestScoringContact()Ljava/lang/Integer;

    move-result-object v0

    .line 70
    .local v0, contactToRemove:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->store:Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->removeEntry(I)V

    goto :goto_0

    .line 74
    .end local v0           #contactToRemove:Ljava/lang/Integer;
    :cond_18
    return-void
.end method

.method private rescaleCounts(Lcom/vlingo/client/core/mru/MRUTable;)V
    .registers 4
    .parameter "table"

    .prologue
    const v1, 0x3f7ae148

    .line 78
    iget-object v0, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->store:Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->rescaleAllCounts(F)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 79
    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/mru/MRUTable;->scaleValues(F)V

    .line 81
    :cond_e
    return-void
.end method


# virtual methods
.method public getNormalizedCount(I)F
    .registers 3
    .parameter "contactID"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->table:Lcom/vlingo/client/core/mru/MRUTable;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/mru/MRUTable;->getNormalizedCount(I)F

    move-result v0

    return v0
.end method

.method public getNormalizedCount(ILjava/lang/String;)F
    .registers 4
    .parameter "contactID"
    .parameter "address"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->table:Lcom/vlingo/client/core/mru/MRUTable;

    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/core/mru/MRUTable;->getNormalizedCount(ILjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public incrementCount(ILjava/lang/String;)F
    .registers 6
    .parameter "contactID"
    .parameter "address"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->table:Lcom/vlingo/client/core/mru/MRUTable;

    invoke-virtual {v1, p1, p2}, Lcom/vlingo/client/core/mru/MRUTable;->incrementCount(ILjava/lang/String;)F

    move-result v0

    .line 50
    .local v0, newCount:F
    iget-object v1, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->store:Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;

    invoke-virtual {v1, p1, p2, v0}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->setEntryCount(ILjava/lang/String;F)V

    .line 52
    iget-object v1, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->table:Lcom/vlingo/client/core/mru/MRUTable;

    invoke-virtual {v1}, Lcom/vlingo/client/core/mru/MRUTable;->getCountSinceLastUdate()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_19

    .line 53
    iget-object v1, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->table:Lcom/vlingo/client/core/mru/MRUTable;

    invoke-direct {p0, v1}, Lcom/vlingo/client/contacts/mru/CustomMRU;->rescaleCounts(Lcom/vlingo/client/core/mru/MRUTable;)V

    .line 57
    :cond_19
    iget-object v1, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->table:Lcom/vlingo/client/core/mru/MRUTable;

    invoke-virtual {v1}, Lcom/vlingo/client/core/mru/MRUTable;->getNumItems()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_28

    .line 58
    iget-object v1, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->table:Lcom/vlingo/client/core/mru/MRUTable;

    invoke-direct {p0, v1}, Lcom/vlingo/client/contacts/mru/CustomMRU;->pruneTable(Lcom/vlingo/client/core/mru/MRUTable;)V

    .line 62
    :cond_28
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRU for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/contacts/mru/CustomMRU;->table:Lcom/vlingo/client/core/mru/MRUTable;

    invoke-virtual {v1}, Lcom/vlingo/client/core/mru/MRUTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
