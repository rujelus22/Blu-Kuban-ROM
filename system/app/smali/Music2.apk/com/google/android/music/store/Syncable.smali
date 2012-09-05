.class public abstract Lcom/google/android/music/store/Syncable;
.super Ljava/lang/Object;
.source "Syncable.java"


# instance fields
.field protected mNeedsSync:Z

.field protected mSourceAccount:I

.field protected mSourceId:Ljava/lang/String;

.field protected mSourceVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected createTombstoneIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 9
    .parameter "db"
    .parameter "tombstoneTable"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, created:Z
    iget v4, p0, Lcom/google/android/music/store/Syncable;->mSourceAccount:I

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/google/android/music/store/Syncable;->mSourceId:Ljava/lang/String;

    if-eqz v4, :cond_3e

    .line 75
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "SourceAccount"

    iget v5, p0, Lcom/google/android/music/store/Syncable;->mSourceAccount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v4, "SourceId"

    iget-object v5, p0, Lcom/google/android/music/store/Syncable;->mSourceId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Lcom/google/android/music/store/Syncable;->mSourceVersion:Ljava/lang/String;

    if-eqz v4, :cond_2b

    .line 79
    const-string v4, "_sync_version"

    iget-object v5, p0, Lcom/google/android/music/store/Syncable;->mSourceVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_2b
    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, p2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 84
    .local v1, tombstoneId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_3f

    .line 85
    const-string v4, "Syncable"

    const-string v5, "Failed to created a tombstone"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v1           #tombstoneId:J
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_3e
    :goto_3e
    return v0

    .line 87
    .restart local v1       #tombstoneId:J
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_3f
    const/4 v0, 0x1

    goto :goto_3e
.end method

.method public final getSourceAccount()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/music/store/Syncable;->mSourceAccount:I

    return v0
.end method

.method public final getSourceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/store/Syncable;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/music/store/Syncable;->mSourceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/google/android/music/store/Syncable;->mSourceAccount:I

    .line 24
    iput-object v1, p0, Lcom/google/android/music/store/Syncable;->mSourceVersion:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/google/android/music/store/Syncable;->mSourceId:Ljava/lang/String;

    .line 26
    iput-boolean v0, p0, Lcom/google/android/music/store/Syncable;->mNeedsSync:Z

    .line 27
    return-void
.end method

.method public final setNeedsSync(Z)V
    .registers 2
    .parameter "needsSync"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/music/store/Syncable;->mNeedsSync:Z

    .line 59
    return-void
.end method

.method public final setSourceAccount(I)V
    .registers 2
    .parameter "sourceAccount"

    .prologue
    .line 50
    iput p1, p0, Lcom/google/android/music/store/Syncable;->mSourceAccount:I

    .line 51
    return-void
.end method

.method public final setSourceId(Ljava/lang/String;)V
    .registers 2
    .parameter "sourceId"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/music/store/Syncable;->mSourceId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public final setSourceVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "sourceVersion"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/music/store/Syncable;->mSourceVersion:Ljava/lang/String;

    .line 43
    return-void
.end method
