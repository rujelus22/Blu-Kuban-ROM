.class public Lcom/google/android/apps/translate/history/FavoriteDb;
.super Ljava/lang/Object;
.source "FavoriteDb.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "favoritedb"

.field private static final MAX_COUNT:I = 0xc8

.field private static sInstance:Lcom/google/android/apps/translate/history/BaseDb;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static add(Landroid/content/Context;Lcom/google/android/apps/translate/history/Entry;)V
    .registers 4
    .parameter "context"
    .parameter "entry"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    .line 25
    .local v0, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->add(Lcom/google/android/apps/translate/history/Entry;)V

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 27
    return-void
.end method

.method public static contains(Landroid/content/Context;Lcom/google/android/apps/translate/history/Entry;)Z
    .registers 5
    .parameter "context"
    .parameter "entry"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    .line 31
    .local v0, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->exists(Lcom/google/android/apps/translate/history/Entry;)Z

    move-result v1

    .line 32
    .local v1, exists:Z
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 33
    return v1
.end method

.method public static flush(Landroid/content/Context;Z)V
    .registers 3
    .parameter "context"
    .parameter "sync"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->flush(Z)V

    .line 90
    return-void
.end method

.method public static getAll(Landroid/content/Context;I)Ljava/util/List;
    .registers 5
    .parameter "context"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v1

    .line 65
    .local v1, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v1, p1}, Lcom/google/android/apps/translate/history/BaseDb;->getAll(I)Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 67
    return-object v0
.end method

.method public static getAll(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "context"
    .parameter "count"
    .parameter "prefixFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v1

    .line 72
    .local v1, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/translate/history/BaseDb;->getAll(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 74
    return-object v0
.end method

.method public static getAllByATime(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v1

    .line 51
    .local v1, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/BaseDb;->getAllByATime()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 53
    return-object v0
.end method

.method public static getAllByATime(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "context"
    .parameter "count"
    .parameter "prefixFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v1

    .line 58
    .local v1, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/translate/history/BaseDb;->getAllByATime(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 60
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;
    .registers 6
    .parameter "context"

    .prologue
    .line 93
    const-class v1, Lcom/google/android/apps/translate/history/FavoriteDb;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/translate/history/FavoriteDb;->sInstance:Lcom/google/android/apps/translate/history/BaseDb;

    if-nez v0, :cond_13

    .line 94
    new-instance v0, Lcom/google/android/apps/translate/history/BaseDb;

    const-string v2, "favoritedb"

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/google/android/apps/translate/history/BaseDb;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/apps/translate/history/FavoriteDb;->sInstance:Lcom/google/android/apps/translate/history/BaseDb;

    .line 96
    :cond_13
    sget-object v0, Lcom/google/android/apps/translate/history/FavoriteDb;->sInstance:Lcom/google/android/apps/translate/history/BaseDb;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLastModifiedTime(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    .line 79
    .local v0, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseDb;->getLastModifiedTime()J

    move-result-wide v1

    .line 80
    .local v1, time:J
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 81
    return-wide v1
.end method

.method public static getRawCount(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v1

    .line 44
    .local v1, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/BaseDb;->getRawCount()I

    move-result v0

    .line 45
    .local v0, count:I
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 46
    return v0
.end method

.method public static open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;
    .registers 2
    .parameter "context"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseDb;->open()Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Landroid/content/Context;Lcom/google/android/apps/translate/history/Entry;)V
    .registers 4
    .parameter "context"
    .parameter "entry"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    .line 38
    .local v0, db:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->remove(Lcom/google/android/apps/translate/history/Entry;)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 40
    return-void
.end method
