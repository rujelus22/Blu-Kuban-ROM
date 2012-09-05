.class public Lcom/google/android/apps/books/sync/StatesServerSynchronizable;
.super Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;
.source "StatesServerSynchronizable.java"


# static fields
.field private static final sEmptyValues:Landroid/content/ContentValues;


# instance fields
.field private final mLocalSynchronizable:Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->sEmptyValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 46
    new-instance v0, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->mLocalSynchronizable:Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;

    .line 47
    return-void
.end method


# virtual methods
.method public extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 11
    .parameter "oldValues"
    .parameter "newValues"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->checkValues(Landroid/content/ContentValues;)V

    .line 68
    const-string v3, "last_action"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, newAction:Ljava/lang/String;
    if-nez v0, :cond_80

    move v3, v4

    :goto_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action not allowed in server-side update: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 72
    const-string v3, "position"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 73
    const-string v3, "last_access"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 74
    .local v2, oldTime:Ljava/lang/Long;
    const-string v3, "last_access"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 75
    .local v1, newTime:Ljava/lang/Long;
    if-eqz v2, :cond_82

    move v3, v4

    :goto_3b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oldValues missing last_access: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    if-eqz v1, :cond_84

    :goto_57
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newValues missing last_access: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_86

    .line 81
    sget-object v3, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->sEmptyValues:Landroid/content/ContentValues;

    .line 84
    .end local v1           #newTime:Ljava/lang/Long;
    .end local v2           #oldTime:Ljava/lang/Long;
    :goto_7f
    return-object v3

    :cond_80
    move v3, v5

    .line 69
    goto :goto_e

    .restart local v1       #newTime:Ljava/lang/Long;
    .restart local v2       #oldTime:Ljava/lang/Long;
    :cond_82
    move v3, v5

    .line 75
    goto :goto_3b

    :cond_84
    move v4, v5

    .line 77
    goto :goto_57

    .line 84
    .end local v1           #newTime:Ljava/lang/Long;
    .end local v2           #oldTime:Ljava/lang/Long;
    :cond_86
    invoke-static {p1, p2}, Lcom/google/android/apps/books/sync/SyncUtil;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    goto :goto_7f
.end method

.method public queryAllForUpsync()Landroid/database/Cursor;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 91
    const-string v6, "last_action IS NOT NULL"

    .line 92
    .local v6, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getDirUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_action IS NOT NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .registers 8
    .parameter "oldValues"
    .parameter "updateValues"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 52
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "last_access"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, oldTime:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 54
    .local v1, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "last_access=? AND last_action IS NULL"

    invoke-virtual {v3, v2, p2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateAfterUpsync(Landroid/content/ContentValues;)I
    .registers 4
    .parameter "oldValues"

    .prologue
    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v0, updateValues:Landroid/content/ContentValues;
    const-string v1, "last_action"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->mLocalSynchronizable:Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;->update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method
