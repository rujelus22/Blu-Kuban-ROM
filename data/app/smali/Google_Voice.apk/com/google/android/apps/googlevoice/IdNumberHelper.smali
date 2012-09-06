.class public Lcom/google/android/apps/googlevoice/IdNumberHelper;
.super Ljava/lang/Object;
.source "IdNumberHelper.java"


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private final mapIdToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/log/GLog;Ljava/lang/Class;)V
    .registers 4
    .parameter "log"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/log/GLog;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->mapIdToName:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->log:Lcom/google/android/apps/common/log/GLog;

    .line 30
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->clazz:Ljava/lang/Class;

    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/IdNumberHelper;->fillIdMap()V

    .line 32
    return-void
.end method

.method private fillIdMap()V
    .registers 11

    .prologue
    .line 48
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 49
    .local v3, fields:[Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_9
    if-ge v4, v5, :cond_86

    aget-object v2, v0, v4

    .line 50
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ID_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 53
    const/4 v7, 0x0

    :try_start_1a
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 54
    .local v6, value:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->mapIdToName:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mapping already contains "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/apps/googlevoice/IdNumberHelper;->logProblem(Ljava/lang/String;)V

    .line 57
    :cond_3e
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->mapIdToName:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_47} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_47} :catch_68

    .line 49
    .end local v6           #value:Ljava/lang/Integer;
    :cond_47
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 58
    :catch_4a
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t access field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_47

    .line 60
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_68
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/IllegalAccessException;
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t access field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_47

    .line 65
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .end local v2           #field:Ljava/lang/reflect/Field;
    :cond_86
    return-void
.end method

.method private logProblem(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->log:Lcom/google/android/apps/common/log/GLog;

    invoke-interface {v0, p1}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getNameForValue(I)Ljava/lang/String;
    .registers 5
    .parameter "value"

    .prologue
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 36
    .local v0, intValue:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->mapIdToName:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 37
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->mapIdToName:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    :goto_14
    return-object v1

    .line 39
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no name for value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/IdNumberHelper;->logProblem(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method

.method public hasNameForValue(I)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/IdNumberHelper;->mapIdToName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
