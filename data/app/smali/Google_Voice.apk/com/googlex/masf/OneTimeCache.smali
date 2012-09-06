.class public Lcom/googlex/masf/OneTimeCache;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x8


# instance fields
.field private final capacity:I

.field private final table:Ljava/util/Hashtable;

.field private final urls:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/googlex/masf/OneTimeCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/googlex/masf/OneTimeCache;->capacity:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/googlex/masf/OneTimeCache;->table:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/googlex/masf/OneTimeCache;->urls:Ljava/util/Vector;

    return-void
.end method

.method private evictOldest()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/googlex/masf/OneTimeCache;->urls:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/googlex/masf/OneTimeCache;->urls:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v1, p0, Lcom/googlex/masf/OneTimeCache;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/masf/OneTimeCache;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/googlex/masf/OneTimeCache;->urls:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/masf/OneTimeCache;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget v1, p0, Lcom/googlex/masf/OneTimeCache;->capacity:I

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lcom/googlex/masf/OneTimeCache;->evictOldest()V

    :cond_e
    iget-object v0, p0, Lcom/googlex/masf/OneTimeCache;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/googlex/masf/OneTimeCache;->urls:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v0, p0, Lcom/googlex/masf/OneTimeCache;->urls:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
