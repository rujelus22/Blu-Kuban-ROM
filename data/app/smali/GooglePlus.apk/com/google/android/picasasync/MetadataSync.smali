.class Lcom/google/android/picasasync/MetadataSync;
.super Ljava/lang/Object;
.source "MetadataSync.java"

# interfaces
.implements Lcom/google/android/picasasync/SyncTaskProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsManual:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .parameter "context"
    .parameter "manual"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;

    .line 36
    iput-boolean p2, p0, Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/MetadataSync;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public collectTasks(Ljava/util/Collection;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/picasasync/SyncTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/picasasync/SyncTask;>;"
    iget-object v5, p0, Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v3

    .line 52
    .local v3, sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 53
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-boolean v5, p0, Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z

    if-eqz v5, :cond_39

    sget-object v2, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    .line 54
    .local v2, state:Lcom/google/android/picasasync/SyncState;
    :goto_10
    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/picasasync/UserEntry;

    .line 55
    .local v4, user:Lcom/google/android/picasasync/UserEntry;
    iget-object v5, v4, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lcom/google/android/picasasync/SyncState;->isRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 56
    new-instance v5, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;

    iget-object v6, v4, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z

    invoke-direct {v5, p0, v6, v7}, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;-><init>(Lcom/google/android/picasasync/MetadataSync;Ljava/lang/String;Z)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 53
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:Lcom/google/android/picasasync/SyncState;
    .end local v4           #user:Lcom/google/android/picasasync/UserEntry;
    :cond_39
    sget-object v2, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    goto :goto_10

    .line 59
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #state:Lcom/google/android/picasasync/SyncState;
    :cond_3c
    return-void
.end method

.method public resetSyncStates()V
    .registers 7

    .prologue
    .line 41
    iget-object v5, p0, Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v3

    .line 42
    .local v3, sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 43
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-boolean v5, p0, Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z

    if-eqz v5, :cond_2a

    sget-object v2, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    .line 44
    .local v2, state:Lcom/google/android/picasasync/SyncState;
    :goto_10
    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/picasasync/UserEntry;

    .line 45
    .local v4, user:Lcom/google/android/picasasync/UserEntry;
    iget-object v5, v4, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lcom/google/android/picasasync/SyncState;->resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_18

    .line 43
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:Lcom/google/android/picasasync/SyncState;
    .end local v4           #user:Lcom/google/android/picasasync/UserEntry;
    :cond_2a
    sget-object v2, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    goto :goto_10

    .line 47
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #state:Lcom/google/android/picasasync/SyncState;
    :cond_2d
    return-void
.end method
