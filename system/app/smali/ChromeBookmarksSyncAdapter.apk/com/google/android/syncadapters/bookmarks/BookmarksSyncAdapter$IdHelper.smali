.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2164
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->getLocalIdFromRemoteId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(JLandroid/content/ContentProviderClient;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2164
    invoke-static {p0, p1, p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->getRemoteIdFromLocalId(JLandroid/content/ContentProviderClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLocalIdFromRemoteId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;
    .registers 12
    .parameter "remoteId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2194
    const/4 v6, 0x0

    .line 2196
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_READ:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "account_name=? AND account_type=? AND sourceid=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    aput-object p0, v4, v0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_43

    move-result v0

    if-eqz v0, :cond_34

    .line 2207
    :cond_2d
    if-eqz v6, :cond_32

    .line 2208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_32
    move-object v0, v7

    :cond_33
    :goto_33
    return-object v0

    .line 2205
    :cond_34
    const/4 v0, 0x0

    :try_start_35
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_43

    move-result-object v0

    .line 2207
    if-eqz v6, :cond_33

    .line 2208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 2207
    :catchall_43
    move-exception v0

    if-eqz v6, :cond_49

    .line 2208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_49
    throw v0
.end method

.method private static getRemoteIdFromLocalId(JLandroid/content/ContentProviderClient;)Ljava/lang/String;
    .registers 11
    .parameter "localId"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2215
    const/4 v6, 0x0

    .line 2217
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_READ:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "sourceid"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_3d

    move-result v0

    if-eqz v0, :cond_32

    .line 2227
    :cond_2b
    if-eqz v6, :cond_30

    .line 2228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_30
    move-object v0, v7

    :cond_31
    :goto_31
    return-object v0

    .line 2225
    :cond_32
    const/4 v0, 0x0

    :try_start_33
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3d

    move-result-object v0

    .line 2227
    if-eqz v6, :cond_31

    .line 2228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_31

    .line 2227
    :catchall_3d
    move-exception v0

    if-eqz v6, :cond_43

    .line 2228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0
.end method
