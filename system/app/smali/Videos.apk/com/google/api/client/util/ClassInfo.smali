.class public final Lcom/google/api/client/util/ClassInfo;
.super Ljava/lang/Object;
.source "ClassInfo.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/api/client/util/ClassInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final nameToFieldInfoMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .registers 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, srcClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v12, Ljava/util/IdentityHashMap;

    invoke-direct {v12}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    .line 302
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/util/ClassInfo;->clazz:Ljava/lang/Class;

    .line 304
    new-instance v9, Ljava/util/TreeSet;

    new-instance v12, Lcom/google/api/client/util/ClassInfo$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/google/api/client/util/ClassInfo$1;-><init>(Lcom/google/api/client/util/ClassInfo;)V

    invoke-direct {v9, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 310
    .local v9, nameSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 311
    .local v10, superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v10, :cond_36

    .line 312
    invoke-static {v10}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v11

    .line 313
    .local v11, superClassInfo:Lcom/google/api/client/util/ClassInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    iget-object v13, v11, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v13}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 314
    iget-object v12, v11, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-virtual {v9, v12}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 317
    .end local v11           #superClassInfo:Lcom/google/api/client/util/ClassInfo;
    :cond_36
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/reflect/Field;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3c
    if-ge v7, v8, :cond_81

    aget-object v4, v2, v7

    .line 318
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-static {v4}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v5

    .line 319
    .local v5, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-nez v5, :cond_49

    .line 317
    :goto_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 322
    :cond_49
    invoke-virtual {v5}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, fieldName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v6}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/util/FieldInfo;

    .line 324
    .local v3, conflictingFieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-nez v3, :cond_7a

    const/4 v12, 0x1

    :goto_5a
    const-string v14, "two fields have the same name <%s>: %s and %s"

    const/4 v13, 0x3

    new-array v15, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v15, v13

    const/4 v13, 0x1

    aput-object v4, v15, v13

    const/16 v16, 0x2

    if-nez v3, :cond_7c

    const/4 v13, 0x0

    :goto_6a
    aput-object v13, v15, v16

    invoke-static {v12, v14, v15}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v6, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {v9, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 324
    :cond_7a
    const/4 v12, 0x0

    goto :goto_5a

    :cond_7c
    invoke-virtual {v3}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v13

    goto :goto_6a

    .line 330
    .end local v3           #conflictingFieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v6           #fieldName:Ljava/lang/String;
    :cond_81
    invoke-virtual {v9}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_90

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    :goto_8b
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    .line 332
    return-void

    .line 330
    :cond_90
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    goto :goto_8b
.end method

.method public static of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/api/client/util/ClassInfo;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, underlyingClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    .line 80
    :goto_3
    return-object v0

    .line 74
    :cond_4
    sget-object v2, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/util/Map;

    monitor-enter v2

    .line 75
    :try_start_7
    sget-object v1, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/ClassInfo;

    .line 76
    .local v0, classInfo:Lcom/google/api/client/util/ClassInfo;
    if-nez v0, :cond_1b

    .line 77
    new-instance v0, Lcom/google/api/client/util/ClassInfo;

    .end local v0           #classInfo:Lcom/google/api/client/util/ClassInfo;
    invoke-direct {v0, p0}, Lcom/google/api/client/util/ClassInfo;-><init>(Ljava/lang/Class;)V

    .line 78
    .restart local v0       #classInfo:Lcom/google/api/client/util/ClassInfo;
    sget-object v1, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1b
    monitor-exit v2

    goto :goto_3

    .line 81
    .end local v0           #classInfo:Lcom/google/api/client/util/ClassInfo;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .parameter "name"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 111
    .local v0, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_7
.end method

.method public getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;
    .registers 4
    .parameter "name"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_c

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/FieldInfo;

    return-object v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    return-object v0
.end method

.method public isEnum()Z
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method
