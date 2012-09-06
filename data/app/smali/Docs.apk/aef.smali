.class public final Laef;
.super Ljava/lang/Object;
.source "ClassInfo.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Laef;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Laef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/String;",
            "Laen;",
            ">;"
        }
    .end annotation
.end field

.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Laef;->a:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Laef;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Z)V
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Laef;->a:Ljava/util/IdentityHashMap;

    .line 162
    iput-object p1, p0, Laef;->a:Ljava/lang/Class;

    .line 163
    iput-boolean p2, p0, Laef;->a:Z

    .line 164
    if-eqz p2, :cond_16

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_62

    :cond_16
    const/4 v0, 0x1

    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot ignore case on an enum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 167
    new-instance v5, Ljava/util/TreeSet;

    new-instance v0, Laeg;

    invoke-direct {v0, p0}, Laeg;-><init>(Laef;)V

    invoke-direct {v5, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 173
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_4d

    .line 175
    invoke-static {v0, p2}, Laef;->a(Ljava/lang/Class;Z)Laef;

    move-result-object v0

    .line 176
    iget-object v1, p0, Laef;->a:Ljava/util/IdentityHashMap;

    iget-object v2, v0, Laef;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 177
    iget-object v0, v0, Laef;->a:Ljava/util/List;

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 180
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v4, v0

    :goto_54
    if-ge v4, v7, :cond_ac

    aget-object v8, v6, v4

    .line 181
    invoke-static {v8}, Laen;->a(Ljava/lang/reflect/Field;)Laen;

    move-result-object v9

    .line 182
    if-nez v9, :cond_64

    .line 180
    :goto_5e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_54

    .line 164
    :cond_62
    const/4 v0, 0x0

    goto :goto_17

    .line 185
    :cond_64
    invoke-virtual {v9}, Laen;->a()Ljava/lang/String;

    move-result-object v0

    .line 186
    if-eqz p2, :cond_c3

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 189
    :goto_73
    iget-object v0, p0, Laef;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laen;

    .line 190
    if-nez v0, :cond_a2

    const/4 v2, 0x1

    :goto_7e
    const-string v10, "two fields have the same %sname <%s>: %s and %s"

    const/4 v3, 0x4

    new-array v11, v3, [Ljava/lang/Object;

    const/4 v12, 0x0

    if-eqz p2, :cond_a4

    const-string v3, "case-insensitive "

    :goto_88
    aput-object v3, v11, v12

    const/4 v3, 0x1

    aput-object v1, v11, v3

    const/4 v3, 0x2

    aput-object v8, v11, v3

    const/4 v3, 0x3

    if-nez v0, :cond_a7

    const/4 v0, 0x0

    :goto_94
    aput-object v0, v11, v3

    invoke-static {v2, v10, v11}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Laef;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v1, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v5, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 190
    :cond_a2
    const/4 v2, 0x0

    goto :goto_7e

    :cond_a4
    const-string v3, ""

    goto :goto_88

    :cond_a7
    invoke-virtual {v0}, Laen;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_94

    .line 199
    :cond_ac
    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_b6
    iput-object v0, p0, Laef;->a:Ljava/util/List;

    .line 201
    return-void

    .line 199
    :cond_b9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_b6

    :cond_c3
    move-object v1, v0

    goto :goto_73
.end method

.method public static a(Ljava/lang/Class;)Laef;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Laef;"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Laef;->a(Ljava/lang/Class;Z)Laef;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Z)Laef;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Laef;"
        }
    .end annotation

    .prologue
    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    .line 96
    :goto_3
    return-object v0

    .line 87
    :cond_4
    if-eqz p1, :cond_1f

    sget-object v0, Laef;->b:Ljava/util/Map;

    move-object v1, v0

    .line 89
    :goto_9
    monitor-enter v1

    .line 90
    :try_start_a
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef;

    .line 91
    if-nez v0, :cond_1a

    .line 92
    new-instance v0, Laef;

    invoke-direct {v0, p0, p1}, Laef;-><init>(Ljava/lang/Class;Z)V

    .line 93
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1a
    monitor-exit v1

    goto :goto_3

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v0

    .line 87
    :cond_1f
    sget-object v0, Laef;->a:Ljava/util/Map;

    move-object v1, v0

    goto :goto_9
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laen;
    .registers 3
    .parameter

    .prologue
    .line 124
    if-eqz p1, :cond_e

    .line 125
    iget-boolean v0, p0, Laef;->a:Z

    if-eqz v0, :cond_a

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_e
    iget-object v0, p0, Laef;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laen;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .parameter

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v0

    .line 141
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Laen;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_7
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Laef;->a:Z

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Laef;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method
