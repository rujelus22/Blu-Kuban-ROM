.class public abstract Lcom/vlingo/client/core/util/CompressUtils;
.super Ljava/lang/Object;
.source "CompressUtils.java"


# static fields
.field private static ImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/vlingo/client/android/core/util/AndroidCompressUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/vlingo/client/core/util/CompressUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/util/CompressUtils;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getInstance()Lcom/vlingo/client/core/util/CompressUtils;
    .registers 5

    .prologue
    .line 37
    const-class v2, Lcom/vlingo/client/core/util/CompressUtils;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/vlingo/client/core/util/CompressUtils;->instance:Lcom/vlingo/client/core/util/CompressUtils;

    if-nez v1, :cond_20

    .line 38
    sget-object v1, Lcom/vlingo/client/core/util/CompressUtils;->ImplClass:Ljava/lang/Class;

    if-nez v1, :cond_16

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "CompressUtils implementation class is not set"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 37
    .local v0, ex:Ljava/lang/InstantiationException;
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1

    .line 41
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :cond_16
    :try_start_16
    sget-object v1, Lcom/vlingo/client/core/util/CompressUtils;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/util/CompressUtils;

    sput-object v1, Lcom/vlingo/client/core/util/CompressUtils;->instance:Lcom/vlingo/client/core/util/CompressUtils;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_20} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_20} :catch_41

    .line 50
    :cond_20
    :try_start_20
    sget-object v1, Lcom/vlingo/client/core/util/CompressUtils;->instance:Lcom/vlingo/client/core/util/CompressUtils;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_13

    monitor-exit v2

    return-object v1

    .line 42
    :catch_24
    move-exception v0

    .line 43
    .restart local v0       #ex:Ljava/lang/InstantiationException;
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CompressUtils InstantiationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_41
    move-exception v0

    .line 46
    .local v0, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CompressUtils IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_13
.end method

.method public static gzip([B)[B
    .registers 2
    .parameter "dataToCompress"

    .prologue
    .line 55
    invoke-static {}, Lcom/vlingo/client/core/util/CompressUtils;->getInstance()Lcom/vlingo/client/core/util/CompressUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/util/CompressUtils;->_gzip([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setCompressUtilsImpl(Ljava/lang/Class;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/vlingo/client/android/core/util/AndroidCompressUtils;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/vlingo/client/android/core/util/AndroidCompressUtils;>;"
    const-class v1, Lcom/vlingo/client/core/util/CompressUtils;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 30
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "CompressUtils clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 29
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 31
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/util/CompressUtils;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CompressUtils invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/util/CompressUtils;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 34
    monitor-exit v1

    return-void
.end method


# virtual methods
.method protected _gzip([B)[B
    .registers 8
    .parameter "dataToCompress"

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, zlos:Ljava/util/zip/DeflaterOutputStream;
    const/4 v1, 0x0

    .line 61
    .local v1, result:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, p1

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 65
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_8
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_23

    .line 66
    .end local v2           #zlos:Ljava/util/zip/DeflaterOutputStream;
    .local v3, zlos:Ljava/util/zip/DeflaterOutputStream;
    :try_start_d
    invoke-virtual {v3, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 67
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_4a

    .line 68
    const/4 v2, 0x0

    .line 69
    .end local v3           #zlos:Ljava/util/zip/DeflaterOutputStream;
    .restart local v2       #zlos:Ljava/util/zip/DeflaterOutputStream;
    :try_start_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_31
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_23

    move-result-object v1

    .line 79
    if-eqz v2, :cond_1d

    :try_start_1a
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_3d

    .line 80
    :cond_1d
    :goto_1d
    if-eqz v0, :cond_22

    :try_start_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_3f

    .line 82
    :cond_22
    :goto_22
    return-object v1

    .line 75
    :catch_23
    move-exception v4

    .line 79
    :goto_24
    if-eqz v2, :cond_29

    :try_start_26
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_41

    .line 80
    :cond_29
    :goto_29
    if-eqz v0, :cond_22

    :try_start_2b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_22

    :catch_2f
    move-exception v4

    goto :goto_22

    .line 79
    :catchall_31
    move-exception v4

    :goto_32
    if-eqz v2, :cond_37

    :try_start_34
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_43

    .line 80
    :cond_37
    :goto_37
    if-eqz v0, :cond_3c

    :try_start_39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_45

    :cond_3c
    :goto_3c
    throw v4

    .line 79
    :catch_3d
    move-exception v4

    goto :goto_1d

    .line 80
    :catch_3f
    move-exception v4

    goto :goto_22

    .line 79
    :catch_41
    move-exception v4

    goto :goto_29

    :catch_43
    move-exception v5

    goto :goto_37

    .line 80
    :catch_45
    move-exception v5

    goto :goto_3c

    .line 79
    .end local v2           #zlos:Ljava/util/zip/DeflaterOutputStream;
    .restart local v3       #zlos:Ljava/util/zip/DeflaterOutputStream;
    :catchall_47
    move-exception v4

    move-object v2, v3

    .end local v3           #zlos:Ljava/util/zip/DeflaterOutputStream;
    .restart local v2       #zlos:Ljava/util/zip/DeflaterOutputStream;
    goto :goto_32

    .line 75
    .end local v2           #zlos:Ljava/util/zip/DeflaterOutputStream;
    .restart local v3       #zlos:Ljava/util/zip/DeflaterOutputStream;
    :catch_4a
    move-exception v4

    move-object v2, v3

    .end local v3           #zlos:Ljava/util/zip/DeflaterOutputStream;
    .restart local v2       #zlos:Ljava/util/zip/DeflaterOutputStream;
    goto :goto_24
.end method
