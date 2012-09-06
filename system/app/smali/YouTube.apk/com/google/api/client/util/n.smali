.class public final Lcom/google/api/client/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Z

.field private final c:Ljava/lang/reflect/Field;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/n;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/google/api/client/util/n;->c:Ljava/lang/reflect/Field;

    .line 130
    if-nez p2, :cond_17

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lcom/google/api/client/util/n;->d:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/google/api/client/util/n;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/i;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/api/client/util/n;->b:Z

    .line 132
    return-void

    .line 130
    :cond_17
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static a(Ljava/lang/Enum;)Lcom/google/api/client/util/n;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/n;->a(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/n;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_20

    :goto_14
    const-string v1, "enum constant missing @Value or @NullValue annotation: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_1f} :catch_22

    .line 53
    return-object v2

    :cond_20
    move v0, v1

    .line 51
    goto :goto_14

    .line 54
    :catch_22
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/n;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    if-nez p0, :cond_5

    move-object v0, v1

    .line 107
    :goto_4
    return-object v0

    .line 71
    :cond_5
    sget-object v2, Lcom/google/api/client/util/n;->a:Ljava/util/Map;

    monitor-enter v2

    .line 72
    :try_start_8
    sget-object v0, Lcom/google/api/client/util/n;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/n;

    .line 73
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v3

    .line 74
    if-nez v0, :cond_49

    if-nez v3, :cond_22

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_49

    .line 76
    :cond_22
    if-eqz v3, :cond_5d

    .line 78
    const-class v0, Lcom/google/api/client/util/x;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/x;

    .line 79
    if-eqz v0, :cond_4e

    .line 80
    invoke-interface {v0}, Lcom/google/api/client/util/x;->a()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_32
    const-string v1, "##default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 102
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 104
    :goto_3f
    new-instance v0, Lcom/google/api/client/util/n;

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/util/n;-><init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/google/api/client/util/n;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_4b

    goto :goto_4

    .line 108
    :catchall_4b
    move-exception v0

    monitor-exit v2

    throw v0

    .line 83
    :cond_4e
    :try_start_4e
    const-class v0, Lcom/google/api/client/util/s;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/s;

    .line 84
    if-eqz v0, :cond_5a

    move-object v0, v1

    .line 85
    goto :goto_32

    .line 88
    :cond_5a
    monitor-exit v2

    move-object v0, v1

    goto :goto_4

    .line 91
    :cond_5d
    const-class v0, Lcom/google/api/client/util/r;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/r;

    .line 94
    if-nez v0, :cond_6a

    .line 96
    monitor-exit v2

    move-object v0, v1

    goto :goto_4

    .line 98
    :cond_6a
    invoke-interface {v0}, Lcom/google/api/client/util/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_72
    .catchall {:try_start_4e .. :try_end_72} :catchall_4b

    goto :goto_32

    :cond_73
    move-object v1, v0

    goto :goto_3f
.end method

.method private static a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 227
    :catch_5
    move-exception v0

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 239
    invoke-static {p0, p1}, Lcom/google/api/client/util/n;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    if-nez p2, :cond_51

    if-eqz v0, :cond_57

    .line 241
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected final value <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "> but was <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "> on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " field in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_51
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 252
    :cond_57
    :goto_57
    return-void

    .line 247
    :cond_58
    :try_start_58
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_58 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_58 .. :try_end_5b} :catch_63

    goto :goto_57

    .line 248
    :catch_5c
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :catch_63
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/api/client/util/n;->c:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Lcom/google/api/client/util/n;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/api/client/util/n;->c:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/api/client/util/n;->c:Ljava/lang/reflect/Field;

    invoke-static {v0, p1, p2}, Lcom/google/api/client/util/n;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/api/client/util/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/api/client/util/n;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/api/client/util/n;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/api/client/util/n;->b:Z

    return v0
.end method

.method public final f()Ljava/lang/Enum;
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/api/client/util/n;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/util/n;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
