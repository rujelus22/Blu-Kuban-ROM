.class public Lcom/google/android/apps/books/provider/database/ContentAccountFinder;
.super Ljava/lang/Object;
.source "ContentAccountFinder.java"


# instance fields
.field private final mBadVolumeIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mKeyIdToAccount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeIdToAccount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeIdToAccounts:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mKeyIdToAccount:Ljava/util/Map;

    .line 52
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mVolumeIdToAccounts:Lcom/google/common/collect/Multimap;

    .line 57
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mVolumeIdToAccount:Ljava/util/Map;

    .line 62
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mBadVolumeIds:Ljava/util/Set;

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->initKeyIdToAccount()V

    .line 70
    const-string v0, "sections"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->processContentTable(Ljava/lang/String;Z)V

    .line 71
    const-string v0, "pages"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->processContentTable(Ljava/lang/String;Z)V

    .line 72
    const-string v0, "resources"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->processContentTable(Ljava/lang/String;Z)V

    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->processVolumesTable()V

    .line 74
    return-void
.end method

.method private initKeyIdToAccount()V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 108
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "account_name"

    aput-object v0, v2, v4

    .line 109
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "session_keys"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 111
    .local v9, cursor:Landroid/database/Cursor;
    :goto_1a
    :try_start_1a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 112
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 113
    .local v10, id:I
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, accountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mKeyIdToAccount:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_34

    goto :goto_1a

    .line 117
    .end local v8           #accountName:Ljava/lang/String;
    .end local v10           #id:I
    :catchall_34
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_39
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 119
    return-void
.end method

.method public static newInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/books/provider/database/ContentAccountFinder;
    .registers 2
    .parameter "db"

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    .local v0, finder:Lcom/google/android/apps/books/provider/database/ContentAccountFinder;
    invoke-direct {v0}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->init()V

    .line 79
    return-object v0
.end method

.method private processContentTable(Ljava/lang/String;Z)V
    .registers 17
    .parameter "table"
    .parameter "requireSessionKeyId"

    .prologue
    .line 130
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "volume_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "session_key_id"

    aput-object v1, v2, v0

    .line 131
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "content_status=?"

    .line 132
    .local v11, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 133
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v10, "volume_id, session_key_id"

    .line 134
    .local v10, groupBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "content_status=?"

    const-string v5, "volume_id, session_key_id"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 137
    .local v9, cursor:Landroid/database/Cursor;
    :cond_29
    :goto_29
    :try_start_29
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 138
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, volumeId:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 141
    if-eqz p2, :cond_29

    .line 142
    const-string v0, "ContentAccountFinder"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 143
    const-string v0, "ContentAccountFinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " no session key for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_62
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mBadVolumeIds:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catchall {:try_start_29 .. :try_end_67} :catchall_68

    goto :goto_29

    .line 162
    .end local v13           #volumeId:Ljava/lang/String;
    :catchall_68
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 148
    .restart local v13       #volumeId:Ljava/lang/String;
    :cond_6d
    const/4 v0, 0x1

    :try_start_6e
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 149
    .local v12, sessionKeyId:I
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mKeyIdToAccount:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 150
    .local v8, accountName:Ljava/lang/String;
    if-nez v8, :cond_b6

    .line 151
    const-string v0, "ContentAccountFinder"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 152
    const-string v0, "ContentAccountFinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " no session key entry for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_af
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mBadVolumeIds:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    .line 157
    :cond_b6
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mVolumeIdToAccounts:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, v13, v8}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_bb
    .catchall {:try_start_6e .. :try_end_bb} :catchall_68

    goto/16 :goto_29

    .line 162
    .end local v8           #accountName:Ljava/lang/String;
    .end local v12           #sessionKeyId:I
    .end local v13           #volumeId:Ljava/lang/String;
    :cond_bd
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 164
    return-void
.end method

.method private processVolumesTable()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 171
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "volume_id"

    aput-object v0, v2, v1

    .line 172
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "volumes"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 174
    .local v9, cursor:Landroid/database/Cursor;
    :cond_15
    :goto_15
    :try_start_15
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 175
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 176
    .local v10, volumeId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mBadVolumeIds:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mVolumeIdToAccounts:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, v10}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v8

    .line 178
    .local v8, accounts:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 179
    const-string v0, "ContentAccountFinder"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 180
    const-string v0, "ContentAccountFinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content for volume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_15 .. :try_end_55} :catchall_56

    goto :goto_15

    .line 196
    .end local v8           #accounts:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v10           #volumeId:Ljava/lang/String;
    :catchall_56
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 182
    .restart local v8       #accounts:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v10       #volumeId:Ljava/lang/String;
    :cond_5b
    :try_start_5b
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v11, :cond_6f

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mVolumeIdToAccount:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 186
    :cond_6f
    const-string v0, "ContentAccountFinder"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 189
    const-string v0, "ContentAccountFinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong # accounts found for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_90
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mBadVolumeIds:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catchall {:try_start_5b .. :try_end_95} :catchall_56

    goto :goto_15

    .line 196
    .end local v8           #accounts:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v10           #volumeId:Ljava/lang/String;
    :cond_96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 198
    return-void
.end method


# virtual methods
.method public getAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "volumeId"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mVolumeIdToAccount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBadVolumeIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mBadVolumeIds:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getVolumeIdToAccount()Ljava/util/Map;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->mVolumeIdToAccount:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
