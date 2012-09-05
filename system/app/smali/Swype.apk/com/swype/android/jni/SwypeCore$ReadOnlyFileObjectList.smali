.class Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;
.super Ljava/lang/Object;
.source "SwypeCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadOnlyFileObjectList"
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/swype/android/jni/SwypeCore;


# direct methods
.method constructor <init>(Lcom/swype/android/jni/SwypeCore;)V
    .registers 3
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->this$0:Lcom/swype/android/jni/SwypeCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method declared-synchronized addObject(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 900
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->map:Ljava/util/Map;

    new-instance v1, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;

    iget-object v2, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->this$0:Lcom/swype/android/jni/SwypeCore;

    invoke-direct {v1, v2, p2, p3}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;-><init>(Lcom/swype/android/jni/SwypeCore;Landroid/content/res/AssetFileDescriptor;I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 901
    monitor-exit p0

    return-void

    .line 900
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addObject(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 904
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->map:Ljava/util/Map;

    new-instance v1, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectInputStream;

    invoke-direct {v1, p2}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 905
    monitor-exit p0

    return-void

    .line 904
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addObject(Ljava/lang/String;Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 908
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->map:Ljava/util/Map;

    new-instance v1, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;

    invoke-direct {v1, p2, p3}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;-><init>(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 909
    monitor-exit p0

    return-void

    .line 908
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized cleanup()V
    .registers 5

    .prologue
    .line 922
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_24

    .line 924
    :try_start_17
    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_b

    .line 925
    :catch_1b
    move-exception v0

    .line 926
    :try_start_1c
    const-string v2, "Swype"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_b

    .line 922
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 929
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    .line 930
    monitor-exit p0

    return-void
.end method

.method declared-synchronized get(Ljava/lang/String;)Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;
    .registers 3
    .parameter "filename"

    .prologue
    .line 893
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized remove(Ljava/lang/String;)Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;
    .registers 3
    .parameter "fileName"

    .prologue
    .line 915
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
