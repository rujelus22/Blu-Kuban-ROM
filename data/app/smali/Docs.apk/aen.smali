.class public Laen;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Laen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Ljava/lang/reflect/Field;

.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Laen;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Laen;->a:Ljava/lang/reflect/Field;

    .line 130
    if-nez p2, :cond_15

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Laen;->a:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Laen;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Laeh;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    iput-boolean v0, p0, Laen;->a:Z

    .line 132
    return-void

    .line 130
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static a(Ljava/lang/Enum;)Laen;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Laen;"
        }
    .end annotation

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

    invoke-static {v2}, Laen;->a(Ljava/lang/reflect/Field;)Laen;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_20

    :goto_14
    const-string v1, "enum constant missing @Value or @NullValue annotation: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v3}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V
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

.method public static a(Ljava/lang/reflect/Field;)Laen;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    if-nez p0, :cond_4

    .line 107
    :goto_3
    return-object v1

    .line 71
    :cond_4
    sget-object v2, Laen;->a:Ljava/util/Map;

    monitor-enter v2

    .line 72
    :try_start_7
    sget-object v0, Laen;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laen;

    .line 73
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v3

    .line 74
    if-nez v0, :cond_73

    if-nez v3, :cond_21

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_73

    .line 76
    :cond_21
    if-eqz v3, :cond_5c

    .line 78
    const-class v0, LaeC;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LaeC;

    .line 79
    if-eqz v0, :cond_4e

    .line 80
    invoke-interface {v0}, LaeC;->a()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_31
    const-string v1, "##default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 102
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 104
    :goto_3e
    new-instance v0, Laen;

    invoke-direct {v0, p0, v1}, Laen;-><init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 105
    sget-object v1, Laen;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 107
    :goto_49
    monitor-exit v2

    goto :goto_3

    .line 108
    :catchall_4b
    move-exception v0

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw v0

    .line 83
    :cond_4e
    :try_start_4e
    const-class v0, Laew;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Laew;

    .line 84
    if-eqz v0, :cond_5a

    move-object v0, v1

    .line 85
    goto :goto_31

    .line 88
    :cond_5a
    monitor-exit v2

    goto :goto_3

    .line 93
    :cond_5c
    const-class v0, Laes;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Laes;

    .line 94
    if-nez v0, :cond_68

    .line 96
    monitor-exit v2

    goto :goto_3

    .line 98
    :cond_68
    invoke-interface {v0}, Laes;->a()Ljava/lang/String;

    move-result-object v0

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_70
    .catchall {:try_start_4e .. :try_end_70} :catchall_4b

    goto :goto_31

    :cond_71
    move-object v1, v0

    goto :goto_3e

    :cond_73
    move-object v1, v0

    goto :goto_49
.end method

.method public static a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
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

    if-eqz v0, :cond_5c

    .line 239
    invoke-static {p0, p1}, Laen;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    if-nez p2, :cond_55

    if-eqz v0, :cond_5b

    .line 241
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected final value <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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
    :cond_55
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 254
    :cond_5b
    :goto_5b
    return-void

    .line 247
    :cond_5c
    :try_start_5c
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_5f} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_5f} :catch_67

    goto :goto_5b

    .line 248
    :catch_60
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :catch_67
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Laen;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>()TT;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Laen;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Laen;->a:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Laen;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Laen;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Laen;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public a()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Laen;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Laen;->a:Ljava/lang/reflect/Field;

    invoke-static {v0, p1, p2}, Laen;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Laen;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Laen;->a:Z

    return v0
.end method
