.class public Ld/ai;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static c:Ld/ai;


# instance fields
.field private b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ld/ai;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ld/ai;->a:Ljava/util/logging/Logger;

    new-instance v0, Ld/ai;

    invoke-direct {v0}, Ld/ai;-><init>()V

    sput-object v0, Ld/ai;->c:Ld/ai;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ld/ai;->b:Ljava/util/Set;

    return-void
.end method

.method public static a()Ld/ai;
    .registers 1

    sget-object v0, Ld/ai;->c:Ld/ai;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Ljava/io/File;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v0, ".lck"

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_19
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    :cond_1d
    if-eqz v0, :cond_24

    iget-object v2, p0, Ld/ai;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_24} :catch_26

    :cond_24
    :goto_24
    monitor-exit p0

    return v0

    :catch_26
    move-exception v0

    const/4 v0, 0x0

    goto :goto_24

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ld/ai;->a(Ljava/io/File;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/io/File;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, ".lck"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_15
    iget-object v1, p0, Ld/ai;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1c

    :goto_1a
    monitor-exit p0

    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    sget-object v0, Ld/ai;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unlock directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_3a

    goto :goto_1a

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ld/ai;->b(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, ".lck"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ld/ai;->b:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1e} :catch_28

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    :goto_21
    monitor-exit p0

    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_21

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_28
    move-exception v1

    goto :goto_21
.end method
