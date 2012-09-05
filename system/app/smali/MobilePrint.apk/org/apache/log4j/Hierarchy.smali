.class public Lorg/apache/log4j/Hierarchy;
.super Ljava/lang/Object;
.source "Hierarchy.java"

# interfaces
.implements Lorg/apache/log4j/spi/LoggerRepository;
.implements Lorg/apache/log4j/spi/RendererSupport;


# instance fields
.field private defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

.field emittedNoAppenderWarning:Z

.field emittedNoResourceBundleWarning:Z

.field ht:Ljava/util/Hashtable;

.field private listeners:Ljava/util/Vector;

.field rendererMap:Lorg/apache/log4j/or/RendererMap;

.field root:Lorg/apache/log4j/Logger;

.field threshold:Lorg/apache/log4j/Level;

.field thresholdInt:I


# direct methods
.method public constructor <init>(Lorg/apache/log4j/Logger;)V
    .registers 4
    .parameter "root"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    .line 77
    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoResourceBundleWarning:Z

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    .line 88
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    .line 89
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    .line 91
    sget-object v0, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 92
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Category;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 93
    new-instance v0, Lorg/apache/log4j/or/RendererMap;

    invoke-direct {v0}, Lorg/apache/log4j/or/RendererMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    .line 94
    new-instance v0, Lorg/apache/log4j/DefaultCategoryFactory;

    invoke-direct {v0}, Lorg/apache/log4j/DefaultCategoryFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 95
    return-void
.end method

.method private final updateChildren(Lorg/apache/log4j/ProvisionNode;Lorg/apache/log4j/Logger;)V
    .registers 8
    .parameter "pn"
    .parameter "logger"

    .prologue
    .line 540
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 542
    .local v2, last:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-lt v0, v2, :cond_8

    .line 553
    return-void

    .line 543
    :cond_8
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Logger;

    .line 548
    .local v1, l:Lorg/apache/log4j/Logger;
    iget-object v3, v1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    iget-object v3, v3, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    iget-object v4, p2, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 549
    iget-object v3, v1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    iput-object v3, p2, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 550
    iput-object p2, v1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 542
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private final updateParents(Lorg/apache/log4j/Logger;)V
    .registers 14
    .parameter "cat"

    .prologue
    const/16 v11, 0x2e

    .line 484
    iget-object v4, p1, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    .line 485
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 486
    .local v3, length:I
    const/4 v6, 0x0

    .line 491
    .local v6, parentFound:Z
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v4, v11, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .local v1, i:I
    :goto_f
    if-gez v1, :cond_18

    .line 517
    :goto_11
    if-nez v6, :cond_17

    .line 518
    iget-object v9, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    iput-object v9, p1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 519
    :cond_17
    return-void

    .line 493
    :cond_18
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 496
    .local v8, substr:Ljava/lang/String;
    new-instance v2, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v2, v8}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    .line 497
    .local v2, key:Lorg/apache/log4j/CategoryKey;
    iget-object v9, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 499
    .local v5, o:Ljava/lang/Object;
    if-nez v5, :cond_3b

    .line 501
    new-instance v7, Lorg/apache/log4j/ProvisionNode;

    invoke-direct {v7, p1}, Lorg/apache/log4j/ProvisionNode;-><init>(Lorg/apache/log4j/Logger;)V

    .line 502
    .local v7, pn:Lorg/apache/log4j/ProvisionNode;
    iget-object v9, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v9, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .end local v5           #o:Ljava/lang/Object;
    .end local v7           #pn:Lorg/apache/log4j/ProvisionNode;
    :goto_34
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v4, v11, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    goto :goto_f

    .line 503
    .restart local v5       #o:Ljava/lang/Object;
    :cond_3b
    instance-of v9, v5, Lorg/apache/log4j/Category;

    if-eqz v9, :cond_45

    .line 504
    const/4 v6, 0x1

    .line 505
    check-cast v5, Lorg/apache/log4j/Category;

    .end local v5           #o:Ljava/lang/Object;
    iput-object v5, p1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    goto :goto_11

    .line 508
    .restart local v5       #o:Ljava/lang/Object;
    :cond_45
    instance-of v9, v5, Lorg/apache/log4j/ProvisionNode;

    if-eqz v9, :cond_4f

    .line 509
    check-cast v5, Lorg/apache/log4j/ProvisionNode;

    .end local v5           #o:Ljava/lang/Object;
    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_34

    .line 511
    .restart local v5       #o:Ljava/lang/Object;
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "unexpected object type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " in ht."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method


# virtual methods
.method public addHierarchyEventListener(Lorg/apache/log4j/spi/HierarchyEventListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 108
    const-string v0, "Ignoring attempt to add an existent listener."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 112
    :goto_d
    return-void

    .line 110
    :cond_e
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public addRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .registers 4
    .parameter "classToRender"
    .parameter "or"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/or/RendererMap;->put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V

    .line 103
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 127
    return-void
.end method

.method public emitNoAppenderWarning(Lorg/apache/log4j/Category;)V
    .registers 4
    .parameter "cat"

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    if-nez v0, :cond_2c

    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No appenders could be found for logger ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 135
    const-string v0, "Please initialize the log4j system properly."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    .line 138
    :cond_2c
    return-void
.end method

.method public exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .registers 5
    .parameter "name"

    .prologue
    .line 149
    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    new-instance v2, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v2, p1}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/log4j/Logger;

    if-eqz v1, :cond_12

    .line 151
    check-cast v0, Lorg/apache/log4j/Logger;

    .line 153
    .end local v0           #o:Ljava/lang/Object;
    :goto_11
    return-object v0

    .restart local v0       #o:Ljava/lang/Object;
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public fireAddAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .registers 7
    .parameter "logger"
    .parameter "appender"

    .prologue
    .line 187
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    if-eqz v3, :cond_d

    .line 188
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 190
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-lt v0, v2, :cond_e

    .line 195
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_d
    return-void

    .line 191
    .restart local v0       #i:I
    .restart local v2       #size:I
    :cond_e
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 192
    .local v1, listener:Lorg/apache/log4j/spi/HierarchyEventListener;
    invoke-interface {v1, p1, p2}, Lorg/apache/log4j/spi/HierarchyEventListener;->addAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method fireRemoveAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .registers 7
    .parameter "logger"
    .parameter "appender"

    .prologue
    .line 198
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    if-eqz v3, :cond_d

    .line 199
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 201
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-lt v0, v2, :cond_e

    .line 206
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_d
    return-void

    .line 202
    .restart local v0       #i:I
    .restart local v2       #size:I
    :cond_e
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 203
    .local v1, listener:Lorg/apache/log4j/spi/HierarchyEventListener;
    invoke-interface {v1, p1, p2}, Lorg/apache/log4j/spi/HierarchyEventListener;->removeAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public getCurrentCategories()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLoggers()Ljava/util/Enumeration;
    .registers 5

    .prologue
    .line 304
    new-instance v2, Ljava/util/Vector;

    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 306
    .local v2, v:Ljava/util/Vector;
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 307
    .local v0, elems:Ljava/util/Enumeration;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 313
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3

    .line 308
    :cond_1c
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 309
    .local v1, o:Ljava/lang/Object;
    instance-of v3, v1, Lorg/apache/log4j/Logger;

    if-eqz v3, :cond_11

    .line 310
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .registers 3
    .parameter "name"

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/Hierarchy;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .registers 8
    .parameter "name"
    .parameter "factory"

    .prologue
    .line 261
    new-instance v0, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v0, p1}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, key:Lorg/apache/log4j/CategoryKey;
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v4

    .line 268
    :try_start_8
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 269
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_21

    .line 270
    invoke-interface {p2, p1}, Lorg/apache/log4j/spi/LoggerFactory;->makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    .line 271
    .local v1, logger:Lorg/apache/log4j/Logger;
    invoke-virtual {v1, p0}, Lorg/apache/log4j/Category;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 272
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0, v1}, Lorg/apache/log4j/Hierarchy;->updateParents(Lorg/apache/log4j/Logger;)V

    .line 274
    monitor-exit v4

    .line 288
    .end local v1           #logger:Lorg/apache/log4j/Logger;
    .end local v2           #o:Ljava/lang/Object;
    :goto_20
    return-object v1

    .line 275
    .restart local v2       #o:Ljava/lang/Object;
    :cond_21
    instance-of v3, v2, Lorg/apache/log4j/Logger;

    if-eqz v3, :cond_2a

    .line 276
    check-cast v2, Lorg/apache/log4j/Logger;

    .end local v2           #o:Ljava/lang/Object;
    monitor-exit v4

    move-object v1, v2

    goto :goto_20

    .line 277
    .restart local v2       #o:Ljava/lang/Object;
    :cond_2a
    instance-of v3, v2, Lorg/apache/log4j/ProvisionNode;

    if-eqz v3, :cond_47

    .line 279
    invoke-interface {p2, p1}, Lorg/apache/log4j/spi/LoggerFactory;->makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    .line 280
    .restart local v1       #logger:Lorg/apache/log4j/Logger;
    invoke-virtual {v1, p0}, Lorg/apache/log4j/Category;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 281
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    check-cast v2, Lorg/apache/log4j/ProvisionNode;

    .end local v2           #o:Ljava/lang/Object;
    invoke-direct {p0, v2, v1}, Lorg/apache/log4j/Hierarchy;->updateChildren(Lorg/apache/log4j/ProvisionNode;Lorg/apache/log4j/Logger;)V

    .line 283
    invoke-direct {p0, v1}, Lorg/apache/log4j/Hierarchy;->updateParents(Lorg/apache/log4j/Logger;)V

    .line 284
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_44

    goto :goto_20

    .line 290
    .end local v1           #logger:Lorg/apache/log4j/Logger;
    :catchall_44
    move-exception v3

    monitor-exit v4

    throw v3

    .line 288
    .restart local v2       #o:Ljava/lang/Object;
    :cond_47
    const/4 v1, 0x0

    :try_start_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_44

    goto :goto_20
.end method

.method public getRendererMap()Lorg/apache/log4j/or/RendererMap;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    return-object v0
.end method

.method public getRootLogger()Lorg/apache/log4j/Logger;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public getThreshold()Lorg/apache/log4j/Level;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->threshold:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public isDisabled(I)Z
    .registers 3
    .parameter "level"

    .prologue
    .line 351
    iget v0, p0, Lorg/apache/log4j/Hierarchy;->thresholdInt:I

    if-le v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public overrideAsNeeded(Ljava/lang/String;)V
    .registers 3
    .parameter "override"

    .prologue
    .line 359
    const-string v0, "The Hiearchy.overrideAsNeeded method has been deprecated."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public resetConfiguration()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 379
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    .line 380
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    invoke-virtual {v2, v4}, Lorg/apache/log4j/Category;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 381
    sget-object v2, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 385
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v3

    .line 386
    :try_start_17
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->shutdown()V

    .line 388
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v1

    .line 389
    .local v1, cats:Ljava/util/Enumeration;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 395
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_3e

    .line 396
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v2}, Lorg/apache/log4j/or/RendererMap;->clear()V

    .line 397
    return-void

    .line 390
    :cond_2b
    :try_start_2b
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Logger;

    .line 391
    .local v0, c:Lorg/apache/log4j/Logger;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    .line 392
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/log4j/Category;->setAdditivity(Z)V

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/log4j/Category;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3e

    goto :goto_1e

    .line 395
    .end local v0           #c:Lorg/apache/log4j/Logger;
    .end local v1           #cats:Ljava/util/Enumeration;
    :catchall_3e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDisableOverride(Ljava/lang/String;)V
    .registers 3
    .parameter "override"

    .prologue
    .line 406
    const-string v0, "The Hiearchy.setDisableOverride method has been deprecated."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public setRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .registers 4
    .parameter "renderedClass"
    .parameter "renderer"

    .prologue
    .line 416
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/or/RendererMap;->put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V

    .line 417
    return-void
.end method

.method public setThreshold(Ljava/lang/String;)V
    .registers 5
    .parameter "levelStr"

    .prologue
    .line 162
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    .line 163
    .local v0, l:Lorg/apache/log4j/Level;
    if-eqz v0, :cond_b

    .line 164
    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 168
    :goto_a
    return-void

    .line 166
    :cond_b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not convert ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] to Level."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public setThreshold(Lorg/apache/log4j/Level;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 179
    if-eqz p1, :cond_8

    .line 180
    iget v0, p1, Lorg/apache/log4j/Priority;->level:I

    iput v0, p0, Lorg/apache/log4j/Hierarchy;->thresholdInt:I

    .line 181
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->threshold:Lorg/apache/log4j/Level;

    .line 183
    :cond_8
    return-void
.end method

.method public shutdown()V
    .registers 6

    .prologue
    .line 438
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    .line 441
    .local v2, root:Lorg/apache/log4j/Logger;
    invoke-virtual {v2}, Lorg/apache/log4j/Category;->closeNestedAppenders()V

    .line 443
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v4

    .line 444
    :try_start_a
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v1

    .line 445
    .local v1, cats:Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_23

    .line 451
    invoke-virtual {v2}, Lorg/apache/log4j/Category;->removeAllAppenders()V

    .line 452
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v1

    .line 453
    :goto_1b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_30

    .line 457
    monitor-exit v4

    .line 458
    return-void

    .line 446
    :cond_23
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Logger;

    .line 447
    .local v0, c:Lorg/apache/log4j/Logger;
    invoke-virtual {v0}, Lorg/apache/log4j/Category;->closeNestedAppenders()V
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_2d

    goto :goto_e

    .line 457
    .end local v0           #c:Lorg/apache/log4j/Logger;
    .end local v1           #cats:Ljava/util/Enumeration;
    :catchall_2d
    move-exception v3

    monitor-exit v4

    throw v3

    .line 454
    .restart local v1       #cats:Ljava/util/Enumeration;
    :cond_30
    :try_start_30
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Logger;

    .line 455
    .restart local v0       #c:Lorg/apache/log4j/Logger;
    invoke-virtual {v0}, Lorg/apache/log4j/Category;->removeAllAppenders()V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2d

    goto :goto_1b
.end method
