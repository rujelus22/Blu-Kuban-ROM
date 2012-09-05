.class public Ljavax/jmdns/impl/DNSCache;
.super Ljava/util/AbstractMap;
.source "DNSCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSCache$_CacheEntry;,
        Ljavax/jmdns/impl/DNSCache$_EmptyCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<+",
        "Ljavax/jmdns/impl/DNSEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EmptyCache:Ljavax/jmdns/impl/DNSCache;


# instance fields
.field private transient _entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Ljavax/jmdns/impl/DNSCache$_EmptyCache;

    invoke-direct {v0}, Ljavax/jmdns/impl/DNSCache$_EmptyCache;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/DNSCache;->EmptyCache:Ljavax/jmdns/impl/DNSCache;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 257
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    .line 258
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initialCapacity"

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 278
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/DNSCache;)V
    .registers 3
    .parameter "map"

    .prologue
    .line 264
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSCache;->size()I

    move-result v0

    :goto_6
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    .line 265
    if-eqz p1, :cond_e

    .line 266
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->putAll(Ljava/util/Map;)V

    .line 268
    :cond_e
    return-void

    .line 264
    :cond_f
    const/16 v0, 0x400

    goto :goto_6
.end method

.method private _getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public declared-synchronized addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .registers 8
    .parameter "dnsEntry"

    .prologue
    .line 452
    monitor-enter p0

    const/4 v2, 0x0

    .line 453
    .local v2, result:Z
    if-eqz p1, :cond_23

    .line 454
    :try_start_4
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 456
    .local v1, oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    const/4 v0, 0x0

    .line 457
    .local v0, aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_25

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 462
    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_1a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    if-eqz v1, :cond_2b

    .line 465
    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_3c

    .line 470
    :goto_22
    const/4 v2, 0x1

    .line 472
    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1           #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_23
    monitor-exit p0

    return v2

    .line 460
    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v1       #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_25
    :try_start_25
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    goto :goto_1a

    .line 467
    :cond_2b
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_3c

    goto :goto_22

    .line 452
    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1           #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_3c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized allValues()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v0, allValues:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_22

    move-result v3

    if-nez v3, :cond_16

    .line 354
    monitor-exit p0

    return-object v0

    .line 349
    :cond_16
    :try_start_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 350
    .local v1, entry:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_e

    .line 351
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_22

    goto :goto_e

    .line 348
    .end local v0           #allValues:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1           #entry:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    invoke-direct {v0, p0}, Ljavax/jmdns/impl/DNSCache;-><init>(Ljavax/jmdns/impl/DNSCache;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 290
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 292
    :cond_b
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;
    .registers 9
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"

    .prologue
    .line 408
    monitor-enter p0

    const/4 v1, 0x0

    .line 409
    .local v1, result:Ljavax/jmdns/impl/DNSEntry;
    :try_start_2
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 410
    .local v0, entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v0, :cond_12

    .line 411
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_34

    move-result v4

    if-nez v4, :cond_14

    .line 418
    :cond_12
    :goto_12
    monitor-exit p0

    return-object v1

    .line 411
    :cond_14
    :try_start_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 412
    .local v2, testDNSEntry:Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq v4, p3, :cond_32

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_34

    move-result v4

    if-eqz v4, :cond_c

    .line 413
    :cond_32
    move-object v1, v2

    .line 414
    goto :goto_12

    .line 408
    .end local v0           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v2           #testDNSEntry:Ljavax/jmdns/impl/DNSEntry;
    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;
    .registers 7
    .parameter "dnsEntry"

    .prologue
    .line 384
    monitor-enter p0

    const/4 v1, 0x0

    .line 385
    .local v1, result:Ljavax/jmdns/impl/DNSEntry;
    if-eqz p1, :cond_18

    .line 386
    :try_start_4
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 387
    .local v0, entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v0, :cond_18

    .line 388
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_28

    move-result v4

    if-nez v4, :cond_1a

    .line 396
    .end local v0           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_18
    :goto_18
    monitor-exit p0

    return-object v1

    .line 388
    .restart local v0       #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_1a
    :try_start_1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 389
    .local v2, testDNSEntry:Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v2, p1}, Ljavax/jmdns/impl/DNSEntry;->isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_28

    move-result v4

    if-eqz v4, :cond_12

    .line 390
    move-object v1, v2

    .line 391
    goto :goto_18

    .line 384
    .end local v0           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v2           #testDNSEntry:Ljavax/jmdns/impl/DNSEntry;
    :catchall_28
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 365
    .local v0, entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v0, :cond_f

    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    .end local v0           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .local v1, entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    move-object v0, v1

    .line 370
    .end local v1           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v0       #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_d
    monitor-exit p0

    return-object v0

    .line 368
    :cond_f
    :try_start_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14

    move-result-object v0

    goto :goto_d

    .line 364
    .end local v0           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;
    .registers 9
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/constants/DNSRecordType;",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 431
    .local v0, entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v0, :cond_3e

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 433
    .end local v0           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .local v1, entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3b

    move-result v4

    if-nez v4, :cond_19

    move-object v0, v1

    .line 442
    .end local v1           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v0       #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_17
    monitor-exit p0

    return-object v0

    .line 434
    .end local v0           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v1       #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_19
    :try_start_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 435
    .local v3, testDNSEntry:Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq v4, p3, :cond_10

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 436
    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_3b

    goto :goto_10

    .line 430
    .end local v1           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v3           #testDNSEntry:Ljavax/jmdns/impl/DNSEntry;
    :catchall_3b
    move-exception v4

    monitor-exit p0

    throw v4

    .line 440
    .restart local v0       #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_3e
    :try_start_3e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    move-result-object v0

    goto :goto_17
.end method

.method protected getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 300
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, stringKey:Ljava/lang/String;
    :goto_b
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object v0, v2

    .line 312
    :goto_1a
    return-object v0

    .end local v1           #stringKey:Ljava/lang/String;
    :cond_1b
    move-object v1, v2

    .line 300
    goto :goto_b

    .line 301
    .restart local v1       #stringKey:Ljava/lang/String;
    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 302
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    if-eqz v1, :cond_30

    .line 303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_1a

    .line 307
    :cond_30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_13

    goto :goto_1a
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Ljavax/jmdns/impl/DNSCache;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, value:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    monitor-enter p0

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, oldValue:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    :try_start_2
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 323
    .local v1, oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    if-eqz v1, :cond_12

    .line 324
    invoke-interface {v1, p2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 328
    :goto_10
    monitor-exit p0

    return-object v2

    .line 326
    :cond_12
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    invoke-direct {v4, p1, p2}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 320
    .end local v1           #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_1f
    move-exception v3

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public declared-synchronized removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .registers 5
    .parameter "dnsEntry"

    .prologue
    .line 482
    monitor-enter p0

    const/4 v1, 0x0

    .line 483
    .local v1, result:Z
    if-eqz p1, :cond_2b

    .line 484
    :try_start_4
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 485
    .local v0, existingEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    if-eqz v0, :cond_2b

    .line 486
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 488
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 489
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_2d

    .line 493
    .end local v0           #existingEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_2b
    monitor-exit p0

    return v1

    .line 482
    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized replaceDNSEntry(Ljavax/jmdns/impl/DNSEntry;Ljavax/jmdns/impl/DNSEntry;)Z
    .registers 9
    .parameter "newDNSEntry"
    .parameter "existingDNSEntry"

    .prologue
    .line 505
    monitor-enter p0

    const/4 v2, 0x0

    .line 506
    .local v2, result:Z
    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    :try_start_6
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 507
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 509
    .local v1, oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    const/4 v0, 0x0

    .line 510
    .local v0, aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_38

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 515
    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_2a
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 516
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    if-eqz v1, :cond_3e

    .line 519
    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_4f

    .line 524
    :goto_35
    const/4 v2, 0x1

    .line 526
    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1           #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_36
    monitor-exit p0

    return v2

    .line 513
    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v1       #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_38
    :try_start_38
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    goto :goto_2a

    .line 521
    :cond_3e
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_4f

    goto :goto_35

    .line 505
    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1           #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_4f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 534
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x7d0

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 535
    .local v0, aLog:Ljava/lang/StringBuffer;
    const-string v2, "\t---- cache ----"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_21

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_34

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 536
    :cond_21
    :try_start_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 537
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    const-string v3, "\n\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_34

    goto :goto_15

    .line 534
    .end local v0           #aLog:Ljava/lang/StringBuffer;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_34
    move-exception v2

    monitor-exit p0

    throw v2
.end method
