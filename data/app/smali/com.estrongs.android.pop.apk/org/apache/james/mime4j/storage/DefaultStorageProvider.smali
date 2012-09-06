.class public Lorg/apache/james/mime4j/storage/DefaultStorageProvider;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_STORAGE_PROVIDER_PROPERTY:Ljava/lang/String; = "org.apache.james.mime4j.defaultStorageProvider"

.field private static volatile instance:Lorg/apache/james/mime4j/storage/StorageProvider;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->log:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->initialize()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;
    .registers 1

    sget-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-object v0
.end method

.method private static initialize()V
    .registers 5

    const-string v0, "org.apache.james.mime4j.defaultStorageProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    :try_start_8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/storage/StorageProvider;

    sput-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_27

    :cond_14
    :goto_14
    sget-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    if-nez v0, :cond_26

    new-instance v0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;

    invoke-direct {v0}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;-><init>()V

    new-instance v1, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    const/16 v2, 0x400

    invoke-direct {v1, v0, v2}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;-><init>(Lorg/apache/james/mime4j/storage/StorageProvider;I)V

    sput-object v1, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    :cond_26
    return-void

    :catch_27
    move-exception v0

    sget-object v2, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create or instantiate StorageProvider class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'. Using default instead."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method static reset()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->initialize()V

    return-void
.end method

.method public static setInstance(Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .registers 2

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    sput-object p0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-void
.end method
