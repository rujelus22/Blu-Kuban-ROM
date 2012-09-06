.class public final Lcom/google/api/client/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Map;


# instance fields
.field final a:Ljava/util/List;

.field private final c:Ljava/lang/Class;

.field private final d:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/g;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .registers 15
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/util/g;->d:Ljava/util/IdentityHashMap;

    .line 126
    iput-object p1, p0, Lcom/google/api/client/util/g;->c:Ljava/lang/Class;

    .line 128
    new-instance v5, Ljava/util/TreeSet;

    new-instance v0, Lcom/google/api/client/util/h;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/h;-><init>(Lcom/google/api/client/util/g;)V

    invoke-direct {v5, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 134
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_2e

    .line 136
    invoke-static {v0}, Lcom/google/api/client/util/g;->a(Ljava/lang/Class;)Lcom/google/api/client/util/g;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/google/api/client/util/g;->d:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lcom/google/api/client/util/g;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v4}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 138
    iget-object v0, v0, Lcom/google/api/client/util/g;->a:Ljava/util/List;

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    move v4, v3

    :goto_34
    if-ge v4, v7, :cond_72

    aget-object v8, v6, v4

    .line 142
    invoke-static {v8}, Lcom/google/api/client/util/n;->a(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/n;

    move-result-object v9

    .line 143
    if-eqz v9, :cond_67

    .line 144
    invoke-virtual {v9}, Lcom/google/api/client/util/n;->b()Ljava/lang/String;

    move-result-object v10

    .line 147
    iget-object v0, p0, Lcom/google/api/client/util/g;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v10}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/n;

    .line 148
    if-nez v0, :cond_6b

    move v1, v2

    :goto_4d
    const-string v11, "two fields have the same name <%s>: %s and %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v10, v12, v3

    aput-object v8, v12, v2

    const/4 v8, 0x2

    if-nez v0, :cond_6d

    const/4 v0, 0x0

    :goto_5a
    aput-object v0, v12, v8

    invoke-static {v1, v11, v12}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/google/api/client/util/g;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v10, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v5, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_67
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_34

    :cond_6b
    move v1, v3

    .line 148
    goto :goto_4d

    :cond_6d
    invoke-virtual {v0}, Lcom/google/api/client/util/n;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_5a

    .line 154
    :cond_72
    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_7c
    iput-object v0, p0, Lcom/google/api/client/util/g;->a:Ljava/util/List;

    .line 156
    return-void

    .line 154
    :cond_7f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_7c
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/api/client/util/g;
    .registers 4
    .parameter

    .prologue
    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    .line 74
    :goto_3
    return-object v0

    .line 68
    :cond_4
    sget-object v1, Lcom/google/api/client/util/g;->b:Ljava/util/Map;

    monitor-enter v1

    .line 69
    :try_start_7
    sget-object v0, Lcom/google/api/client/util/g;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/g;

    .line 70
    if-nez v0, :cond_1b

    .line 71
    new-instance v0, Lcom/google/api/client/util/g;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/g;-><init>(Ljava/lang/Class;)V

    .line 72
    sget-object v2, Lcom/google/api/client/util/g;->b:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_3

    .line 75
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/api/client/util/n;
    .registers 4
    .parameter

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/api/client/util/g;->d:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_c

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/n;

    return-object v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/api/client/util/g;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/g;->a(Ljava/lang/String;)Lcom/google/api/client/util/n;

    move-result-object v0

    .line 105
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/google/api/client/util/n;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_7
.end method

.method public final b()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/api/client/util/g;->a:Ljava/util/List;

    return-object v0
.end method
