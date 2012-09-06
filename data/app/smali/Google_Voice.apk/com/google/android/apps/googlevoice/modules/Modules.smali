.class public Lcom/google/android/apps/googlevoice/modules/Modules;
.super Ljava/lang/Object;
.source "Modules.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadModuleByName(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/modules/Module;
    .registers 8
    .parameter "className"

    .prologue
    const/4 v4, 0x0

    .line 88
    new-instance v3, Lcom/google/android/apps/common/reflect/ReflectionHelper;

    invoke-direct {v3}, Lcom/google/android/apps/common/reflect/ReflectionHelper;-><init>()V

    .line 91
    .local v3, reflectionHelper:Lcom/google/android/apps/common/reflect/ReflectionHelper;
    :try_start_6
    invoke-virtual {v3, p0}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v5}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/modules/Module;
    :try_end_1a
    .catch Lcom/google/android/apps/common/reflect/ReflectionException; {:try_start_6 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_1a} :catch_1e

    .line 99
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1a
    return-object v2

    .line 94
    :catch_1b
    move-exception v1

    .local v1, e:Lcom/google/android/apps/common/reflect/ReflectionException;
    move-object v2, v4

    .line 96
    goto :goto_1a

    .line 97
    .end local v1           #e:Lcom/google/android/apps/common/reflect/ReflectionException;
    :catch_1e
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move-object v2, v4

    .line 99
    goto :goto_1a
.end method

.method public static loadModules(Landroid/content/res/Resources;)Lcom/google/android/apps/googlevoice/modules/Module;
    .registers 13
    .parameter "resources"

    .prologue
    .line 34
    sget-boolean v10, Lcom/google/android/apps/googlevoice/VoiceApplication;->modulesEnabled:Z

    if-nez v10, :cond_a

    .line 36
    new-instance v10, Lcom/google/android/apps/googlevoice/modules/NullModule;

    invoke-direct {v10}, Lcom/google/android/apps/googlevoice/modules/NullModule;-><init>()V

    .line 78
    :goto_9
    return-object v10

    .line 39
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v7, modules:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/modules/Module;>;"
    new-instance v8, Lcom/google/android/apps/common/reflect/ReflectionHelper;

    invoke-direct {v8}, Lcom/google/android/apps/common/reflect/ReflectionHelper;-><init>()V

    .line 42
    .local v8, reflectionHelper:Lcom/google/android/apps/common/reflect/ReflectionHelper;
    const-class v10, Lcom/google/android/apps/googlevoice/R$string;

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1c
    if-ge v4, v5, :cond_a1

    aget-object v3, v0, v4

    .line 43
    .local v3, field:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_module_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_60

    .line 46
    :try_start_2c
    const-class v10, Lcom/google/android/apps/googlevoice/R$string;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_3b
    .catch Lcom/google/android/apps/common/reflect/ReflectionException; {:try_start_2c .. :try_end_3b} :catch_63

    move-result v9

    .line 54
    .local v9, stringId:I
    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, className:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/modules/Modules;->loadModuleByName(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/modules/Module;

    move-result-object v6

    .line 56
    .local v6, module:Lcom/google/android/apps/googlevoice/modules/Module;
    if-nez v6, :cond_83

    .line 57
    sget-boolean v10, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v10, :cond_60

    .line 58
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not load module class: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 42
    .end local v1           #className:Ljava/lang/String;
    .end local v6           #module:Lcom/google/android/apps/googlevoice/modules/Module;
    .end local v9           #stringId:I
    :cond_60
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 48
    :catch_63
    move-exception v2

    .line 49
    .local v2, e:Lcom/google/android/apps/common/reflect/ReflectionException;
    sget-boolean v10, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v10, :cond_60

    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not load module string: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_60

    .line 61
    .end local v2           #e:Lcom/google/android/apps/common/reflect/ReflectionException;
    .restart local v1       #className:Ljava/lang/String;
    .restart local v6       #module:Lcom/google/android/apps/googlevoice/modules/Module;
    .restart local v9       #stringId:I
    :cond_83
    sget-boolean v10, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v10, :cond_9d

    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Module loaded: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 64
    :cond_9d
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 69
    .end local v1           #className:Ljava/lang/String;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v6           #module:Lcom/google/android/apps/googlevoice/modules/Module;
    .end local v9           #stringId:I
    :cond_a1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_ae

    .line 70
    new-instance v10, Lcom/google/android/apps/googlevoice/modules/NullModule;

    invoke-direct {v10}, Lcom/google/android/apps/googlevoice/modules/NullModule;-><init>()V

    goto/16 :goto_9

    .line 73
    :cond_ae
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_be

    .line 75
    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/googlevoice/modules/Module;

    goto/16 :goto_9

    .line 78
    :cond_be
    new-instance v10, Lcom/google/android/apps/googlevoice/modules/CompositeModule;

    invoke-direct {v10, v7}, Lcom/google/android/apps/googlevoice/modules/CompositeModule;-><init>(Ljava/util/List;)V

    goto/16 :goto_9
.end method
