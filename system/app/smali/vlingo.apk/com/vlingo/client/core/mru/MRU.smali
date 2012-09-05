.class public Lcom/vlingo/client/core/mru/MRU;
.super Ljava/lang/Object;
.source "MRU.java"


# static fields
.field private static final APPLICATION_NAMES:[Ljava/lang/String; = null

.field public static final APP_CALL:Ljava/lang/String; = "call"

.field public static final APP_EMAIL:Ljava/lang/String; = "email"

.field public static final APP_SMS:Ljava/lang/String; = "sms"

.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final COUNT_INCREMENT_FOR_RESCALE:I = 0x5

.field private static ImplClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MRU_MAX_SIZE:I = 0x32

.field private static final RESCALE_FACTOR:F = 0.98f

.field private static log:Lcom/vlingo/client/core/logging/Logger;

.field private static m_instance:Lcom/vlingo/client/core/mru/MRU;


# instance fields
.field private m_store:Lcom/vlingo/client/core/mru/MRUStore;

.field m_tables:[Lcom/vlingo/client/core/mru/MRUTable;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    const-class v0, Lcom/vlingo/client/core/mru/MRU;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/mru/MRU;->log:Lcom/vlingo/client/core/logging/Logger;

    .line 28
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sms"

    aput-object v1, v0, v2

    const-string v1, "call"

    aput-object v1, v0, v3

    const-string v1, "email"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vlingo/client/core/mru/MRU;->APPLICATION_NAMES:[Ljava/lang/String;

    .line 33
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "contactID"

    aput-object v1, v0, v2

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "count"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vlingo/client/core/mru/MRU;->COLUMNS:[Ljava/lang/String;

    .line 38
    sput-object v6, Lcom/vlingo/client/core/mru/MRU;->m_instance:Lcom/vlingo/client/core/mru/MRU;

    .line 41
    sput-object v6, Lcom/vlingo/client/core/mru/MRU;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0}, Lcom/vlingo/client/core/mru/MRU;->createMRUStore()Lcom/vlingo/client/core/mru/MRUStore;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/mru/MRU;->m_store:Lcom/vlingo/client/core/mru/MRUStore;

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/core/mru/MRU;->m_store:Lcom/vlingo/client/core/mru/MRUStore;

    invoke-interface {v0}, Lcom/vlingo/client/core/mru/MRUStore;->loadMRUTables()[Lcom/vlingo/client/core/mru/MRUTable;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/mru/MRU;->m_tables:[Lcom/vlingo/client/core/mru/MRUTable;

    .line 61
    return-void
.end method

.method private createMRUStore()Lcom/vlingo/client/core/mru/MRUStore;
    .registers 6

    .prologue
    .line 64
    sget-object v2, Lcom/vlingo/client/core/mru/MRU;->ImplClass:Ljava/lang/Class;

    if-nez v2, :cond_c

    .line 65
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "MRUStore implementation class is not set"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_c
    :try_start_c
    sget-object v2, Lcom/vlingo/client/core/mru/MRU;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/mru/MRUStore;

    .line 68
    .local v1, store:Lcom/vlingo/client/core/mru/MRUStore;
    sget-object v2, Lcom/vlingo/client/core/mru/MRU;->APPLICATION_NAMES:[Ljava/lang/String;

    sget-object v3, Lcom/vlingo/client/core/mru/MRU;->COLUMNS:[Ljava/lang/String;

    const/16 v4, 0x32

    invoke-interface {v1, v2, v3, v4}, Lcom/vlingo/client/core/mru/MRUStore;->init([Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_1d
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1d} :catch_38

    .line 69
    return-object v1

    .line 70
    .end local v1           #store:Lcom/vlingo/client/core/mru/MRUStore;
    :catch_1e
    move-exception v0

    .line 73
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MRUStore InstantiationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_38
    move-exception v0

    .line 77
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MRUStore IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static declared-synchronized getMRU()Lcom/vlingo/client/core/mru/MRU;
    .registers 2

    .prologue
    .line 52
    const-class v1, Lcom/vlingo/client/core/mru/MRU;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/core/mru/MRU;->m_instance:Lcom/vlingo/client/core/mru/MRU;

    if-nez v0, :cond_e

    .line 53
    new-instance v0, Lcom/vlingo/client/core/mru/MRU;

    invoke-direct {v0}, Lcom/vlingo/client/core/mru/MRU;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/mru/MRU;->m_instance:Lcom/vlingo/client/core/mru/MRU;

    .line 55
    :cond_e
    sget-object v0, Lcom/vlingo/client/core/mru/MRU;->m_instance:Lcom/vlingo/client/core/mru/MRU;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private pruneTable(Ljava/lang/String;Lcom/vlingo/client/core/mru/MRUTable;)V
    .registers 6
    .parameter "applicationName"
    .parameter "table"

    .prologue
    .line 140
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/vlingo/client/core/mru/MRUTable;->getNumItems()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_18

    .line 141
    invoke-virtual {p2}, Lcom/vlingo/client/core/mru/MRUTable;->removeLowestScoringContact()Ljava/lang/Integer;

    move-result-object v0

    .line 142
    .local v0, contactToRemove:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/vlingo/client/core/mru/MRU;->m_store:Lcom/vlingo/client/core/mru/MRUStore;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/vlingo/client/core/mru/MRUStore;->removeEntry(Ljava/lang/String;I)V

    goto :goto_0

    .line 146
    .end local v0           #contactToRemove:Ljava/lang/Integer;
    :cond_18
    return-void
.end method

.method private rescaleCounts(Ljava/lang/String;Lcom/vlingo/client/core/mru/MRUTable;)V
    .registers 5
    .parameter "applicationName"
    .parameter "table"

    .prologue
    const v1, 0x3f7ae148

    .line 150
    iget-object v0, p0, Lcom/vlingo/client/core/mru/MRU;->m_store:Lcom/vlingo/client/core/mru/MRUStore;

    invoke-interface {v0, p1, v1}, Lcom/vlingo/client/core/mru/MRUStore;->rescaleAllCounts(Ljava/lang/String;F)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 151
    invoke-virtual {p2, v1}, Lcom/vlingo/client/core/mru/MRUTable;->scaleValues(F)V

    .line 153
    :cond_e
    return-void
.end method

.method public static declared-synchronized setMRUStoreImpl(Ljava/lang/Class;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/mru/MRU;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 45
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "MRUStore class null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 44
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 46
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/mru/MRUStore;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MRUStore invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/mru/MRU;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 49
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public getNormalizedCount(Ljava/lang/String;I)F
    .registers 7
    .parameter "applicationName"
    .parameter "contactID"

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/vlingo/client/core/mru/MRU;->APPLICATION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 106
    sget-object v1, Lcom/vlingo/client/core/mru/MRU;->APPLICATION_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 107
    iget-object v1, p0, Lcom/vlingo/client/core/mru/MRU;->m_tables:[Lcom/vlingo/client/core/mru/MRUTable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/vlingo/client/core/mru/MRUTable;->getNormalizedCount(I)F

    move-result v1

    .line 111
    :goto_18
    return v1

    .line 105
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_1c
    sget-object v1, Lcom/vlingo/client/core/mru/MRU;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asking for MRU for missing app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returning 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getNormalizedCount(Ljava/lang/String;ILjava/lang/String;)F
    .registers 8
    .parameter "applicationName"
    .parameter "contactID"
    .parameter "address"

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/vlingo/client/core/mru/MRU;->APPLICATION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 93
    sget-object v1, Lcom/vlingo/client/core/mru/MRU;->APPLICATION_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 94
    iget-object v1, p0, Lcom/vlingo/client/core/mru/MRU;->m_tables:[Lcom/vlingo/client/core/mru/MRUTable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Lcom/vlingo/client/core/mru/MRUTable;->getNormalizedCount(ILjava/lang/String;)F

    move-result v1

    .line 98
    :goto_18
    return v1

    .line 92
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_1c
    sget-object v1, Lcom/vlingo/client/core/mru/MRU;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asking for MRU for missing app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returning 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public incrementCount(Ljava/lang/String;ILjava/lang/String;)F
    .registers 9
    .parameter "applicationName"
    .parameter "contactID"
    .parameter "address"

    .prologue
    .line 115
    sget-object v2, Lcom/vlingo/client/core/mru/MRU;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in increment count.  ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    sget-object v2, Lcom/vlingo/client/core/mru/MRU;->APPLICATION_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_7e

    .line 117
    sget-object v2, Lcom/vlingo/client/core/mru/MRU;->APPLICATION_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 118
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRU;->m_tables:[Lcom/vlingo/client/core/mru/MRUTable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2, p3}, Lcom/vlingo/client/core/mru/MRUTable;->incrementCount(ILjava/lang/String;)F

    move-result v1

    .line 119
    .local v1, newCount:F
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRU;->m_store:Lcom/vlingo/client/core/mru/MRUStore;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/vlingo/client/core/mru/MRUStore;->setEntryCount(Ljava/lang/String;ILjava/lang/String;F)V

    .line 121
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRU;->m_tables:[Lcom/vlingo/client/core/mru/MRUTable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/vlingo/client/core/mru/MRUTable;->getCountSinceLastUdate()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_47

    .line 122
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRU;->m_tables:[Lcom/vlingo/client/core/mru/MRUTable;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/vlingo/client/core/mru/MRU;->rescaleCounts(Ljava/lang/String;Lcom/vlingo/client/core/mru/MRUTable;)V

    .line 124
    :cond_47
    sget-object v2, Lcom/vlingo/client/core/mru/MRU;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/core/mru/MRU;->m_tables:[Lcom/vlingo/client/core/mru/MRUTable;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/vlingo/client/core/mru/MRUTable;->getNumItems()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRU;->m_tables:[Lcom/vlingo/client/core/mru/MRUTable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/vlingo/client/core/mru/MRUTable;->getNumItems()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_7a

    .line 126
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRU;->m_tables:[Lcom/vlingo/client/core/mru/MRUTable;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/vlingo/client/core/mru/MRU;->pruneTable(Ljava/lang/String;Lcom/vlingo/client/core/mru/MRUTable;)V

    .line 134
    .end local v1           #newCount:F
    :cond_7a
    :goto_7a
    return v1

    .line 116
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 133
    :cond_7e
    sget-object v2, Lcom/vlingo/client/core/mru/MRU;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incrementing count for unknown application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    goto :goto_7a
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "applicationName"

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/vlingo/client/core/mru/MRU;->APPLICATION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 83
    sget-object v1, Lcom/vlingo/client/core/mru/MRU;->APPLICATION_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRU for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRU;->m_tables:[Lcom/vlingo/client/core/mru/MRUTable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/vlingo/client/core/mru/MRUTable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    :goto_35
    return-object v1

    .line 82
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No MRU Table for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_35
.end method
