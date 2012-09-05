.class public Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;
.super Ljava/lang/Object;
.source "BaseBoxFactory.java"


# static fields
.field private static final CONFIG:Ljava/util/Properties; = null

.field private static defaultConfig:Ljava/util/Properties; = null

.field protected static final logTag:Ljava/lang/String; = "BoxExternalAPI"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->getBoxHTTPManager()Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->getConfig()Ljava/util/Properties;

    move-result-object v0

    .line 29
    sput-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->CONFIG:Ljava/util/Properties;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultImpl(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .parameter "interfaceKey"

    .prologue
    .line 69
    const/4 v4, 0x0

    .line 70
    .local v4, obj:Ljava/lang/Object;
    sget-object v5, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->defaultConfig:Ljava/util/Properties;

    if-nez v5, :cond_19

    .line 71
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    sput-object v5, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->defaultConfig:Ljava/util/Properties;

    .line 72
    const-class v5, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    .line 73
    const-string v6, "box4j-config-default.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 75
    .local v3, in:Ljava/io/InputStream;
    :try_start_14
    sget-object v5, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->defaultConfig:Ljava/util/Properties;

    invoke-virtual {v5, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_2a

    .line 81
    .end local v3           #in:Ljava/io/InputStream;
    :cond_19
    :goto_19
    sget-object v5, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->defaultConfig:Ljava/util/Properties;

    invoke-virtual {v5, p0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, implString:Ljava/lang/String;
    :try_start_21
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, clazz:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_28} :catch_2f
    .catch Ljava/lang/InstantiationException; {:try_start_21 .. :try_end_28} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_28} :catch_41

    move-result-object v4

    .line 93
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v4           #obj:Ljava/lang/Object;
    :goto_29
    return-object v4

    .line 76
    .end local v2           #implString:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #obj:Ljava/lang/Object;
    :catch_2a
    move-exception v1

    .line 77
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 86
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #implString:Ljava/lang/String;
    :catch_2f
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "error!!! "

    invoke-static {v5, v6, v1}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 88
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_38
    move-exception v1

    .line 89
    .local v1, e:Ljava/lang/InstantiationException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "error!!! "

    invoke-static {v5, v6, v1}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 90
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_41
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "error!!! "

    invoke-static {v5, v6, v1}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method protected static newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .parameter "interfaceKey"

    .prologue
    .line 42
    const/4 v3, 0x0

    .line 43
    .local v3, obj:Ljava/lang/Object;
    sget-object v4, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->CONFIG:Ljava/util/Properties;

    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, className:Ljava/lang/String;
    :try_start_7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 46
    .local v1, clazz:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_e} :catch_16
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_e} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_e} :catch_4e

    move-result-object v3

    .line 57
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v3           #obj:Ljava/lang/Object;
    :goto_f
    if-nez v3, :cond_15

    .line 58
    invoke-static {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->getDefaultImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    :cond_15
    return-object v3

    .line 47
    .restart local v3       #obj:Ljava/lang/Object;
    :catch_16
    move-exception v2

    .line 48
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "BoxExternalAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ClassNotFoundException, will use default implementation. (interfaceKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 50
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_32
    move-exception v2

    .line 51
    .local v2, e:Ljava/lang/InstantiationException;
    const-string v4, "BoxExternalAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InstantiationException, will use default implementation. (interfaceKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 53
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_4e
    move-exception v2

    .line 54
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "BoxExternalAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IllegalAccessException, will use default implementation. (interfaceKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method
