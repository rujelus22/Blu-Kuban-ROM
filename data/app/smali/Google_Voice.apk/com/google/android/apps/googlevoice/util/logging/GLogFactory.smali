.class public abstract Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;
.super Ljava/lang/Object;
.source "GLogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/util/logging/GLogFactory$DefaultGLogFactory;
    }
.end annotation


# static fields
.field private static theFactory:Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory$DefaultGLogFactory;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory$DefaultGLogFactory;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->theFactory:Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/apps/common/log/GLog;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;

    monitor-enter v1

    :try_start_3
    const-string v0, "clazz"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->theFactory:Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->createLog(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getVoiceLogFactory()Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;
    .registers 2

    .prologue
    .line 41
    const-class v0, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->theFactory:Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized resetToDefaultLogger()V
    .registers 2

    .prologue
    .line 53
    const-class v1, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory$DefaultGLogFactory;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory$DefaultGLogFactory;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->theFactory:Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 54
    monitor-exit v1

    return-void

    .line 53
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setVoiceLogFactory(Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 48
    const-class v1, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;

    monitor-enter v1

    :try_start_3
    const-string v0, "factory"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sput-object p0, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->theFactory:Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 50
    monitor-exit v1

    return-void

    .line 48
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract createLog(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/apps/common/log/GLog;"
        }
    .end annotation
.end method
