.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommitHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;
    }
.end annotation


# instance fields
.field private final mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

.field private final mClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

.field private mClientGuid:Ljava/lang/String;

.field private mConflictCount:I

.field private mMaxCommitBatchSize:I

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private mSoftErrorCount:I

.field private mSuccessCount:I

.field private final mSyncResult:Landroid/content/SyncResult;

.field private mTotalDirtyReadsCount:I


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;Landroid/content/SyncResult;Lcom/google/chrome/bookmarks/sync/api/AuthInfo;ILcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)V
    .registers 8
    .parameter "provider"
    .parameter "client"
    .parameter "syncResult"
    .parameter "authInfo"
    .parameter "maxCommitBatchSize"
    .parameter "syncState"

    .prologue
    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;

    .line 686
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

    .line 687
    iput-object p3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    .line 688
    iput-object p4, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    .line 689
    iput p5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mMaxCommitBatchSize:I

    .line 690
    invoke-virtual {p6}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->getClientGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mClientGuid:Ljava/lang/String;

    .line 691
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/SyncResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/ContentProviderClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method private throwIfError(Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;)V
    .registers 5
    .parameter "commitResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 939
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    invoke-virtual {p1}, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_66

    .line 964
    :pswitch_f
    return-void

    .line 946
    :pswitch_10
    new-instance v0, Lcom/google/wireless/gdata2/client/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit request returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :pswitch_33
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server reports a different identifier (birthday) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;->getStoreBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which does not match the client value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :pswitch_56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The service has rejected our request due to throttling."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :pswitch_5e
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    const-string v1, "Commit request returned USER_NOT_ACTIVATED."

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_33
        :pswitch_56
        :pswitch_5e
    .end packed-switch
.end method

.method private updateCountersOnSuccess(I)V
    .registers 7
    .parameter "type"

    .prologue
    const-wide/16 v3, 0x1

    .line 860
    iget v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSuccessCount:I

    .line 861
    sget v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->INSERT_TYPE:I

    if-ne p1, v0, :cond_16

    .line 862
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numInserts:J

    .line 868
    :cond_15
    :goto_15
    return-void

    .line 863
    :cond_16
    sget v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->MODIFY_TYPE:I

    if-ne p1, v0, :cond_24

    .line 864
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_15

    .line 865
    :cond_24
    sget v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->DELETE_TYPE:I

    if-ne p1, v0, :cond_15

    .line 866
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_15
.end method


# virtual methods
.method public handle()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;,
            Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x32

    const/4 v12, 0x1

    .line 886
    const/4 v7, 0x0

    .line 887
    .local v7, commitQueryCount:I
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    if-gt v7, v13, :cond_46

    .line 888
    const/4 v6, 0x0

    .line 890
    .local v6, c:Landroid/database/Cursor;
    :try_start_9
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_READ:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_BOOKMARKS:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=? AND dirty!=0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    invoke-virtual {v11}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    iget-object v11, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    invoke-virtual {v11}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountType()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 894
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_47

    .line 895
    const-string v0, "BookmarksSync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 896
    const-string v0, "BookmarksSync"

    const-string v1, "No local bookmarks changes found."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_c3

    .line 926
    :cond_41
    if-eqz v6, :cond_46

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 935
    .end local v6           #c:Landroid/database/Cursor;
    :cond_46
    :goto_46
    return-void

    .line 900
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_47
    :try_start_47
    new-instance v9, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;

    invoke-direct {v9, p0, v6}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;Landroid/database/Cursor;)V

    .line 901
    .local v9, parser:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;
    const/4 v10, 0x0

    .line 904
    .local v10, queryDirtyReadsCount:I
    :cond_4d
    :goto_4d
    iget v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mMaxCommitBatchSize:I

    invoke-virtual {v9, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->parseNextNItems(I)V

    .line 905
    invoke-virtual {p0, v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->handleParserPage(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;)I
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_c3

    move-result v8

    .line 906
    .local v8, itemCount:I
    if-nez v8, :cond_60

    .line 919
    if-nez v10, :cond_ca

    .line 926
    if-eqz v6, :cond_46

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .line 909
    :cond_60
    add-int/2addr v10, v8

    .line 910
    :try_start_61
    const-string v0, "BookmarksSync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 911
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit query loop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Total dirty reads:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mTotalDirtyReadsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Successes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSuccessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Parser skips:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numSkippedEntries:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Conflicts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mConflictCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Soft errors:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSoftErrorCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_61 .. :try_end_c2} :catchall_c3

    goto :goto_4d

    .line 926
    .end local v8           #itemCount:I
    .end local v9           #parser:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;
    .end local v10           #queryDirtyReadsCount:I
    :catchall_c3
    move-exception v0

    if-eqz v6, :cond_c9

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c9
    throw v0

    .line 926
    .restart local v8       #itemCount:I
    .restart local v9       #parser:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;
    .restart local v10       #queryDirtyReadsCount:I
    :cond_ca
    if-eqz v6, :cond_cf

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 931
    :cond_cf
    if-le v7, v13, :cond_4

    .line 932
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    iput-boolean v12, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    goto/16 :goto_4
.end method

.method public handleParserPage(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;)I
    .registers 31
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->getSyncableItems()Ljava/util/List;

    move-result-object v4

    .line 701
    .local v4, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 703
    const/4 v2, 0x0

    .line 848
    :goto_b
    return v2

    .line 705
    :cond_c
    const-string v2, "BookmarksSync"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 706
    new-instance v27, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " commits to server:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    .local v27, s:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 709
    .local v9, count:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    .line 710
    .local v12, item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    invoke-virtual {v12}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getSyncEntity()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0}, Lcom/google/chrome/bookmarks/sync/api/impl/PrettyPrinter;->entityToString(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 712
    .end local v12           #item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    :cond_69
    const-string v2, "BookmarksSync"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v9           #count:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v27           #s:Ljava/lang/StringBuilder;
    :cond_72
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mTotalDirtyReadsCount:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mTotalDirtyReadsCount:I

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

    sget-object v3, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->BOOKMARKS:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mClientGuid:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;->postLocalCommits(Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;Ljava/util/List;ZLcom/google/chrome/bookmarks/sync/api/AuthInfo;Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;

    move-result-object v8

    .line 722
    .local v8, commitResult:Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->throwIfError(Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;)V

    .line 726
    invoke-virtual {v8}, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;->getEntryResponses()Ljava/util/List;

    move-result-object v26

    .line 727
    .local v26, responses:Ljava/util/List;,"Ljava/util/List<Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;>;"
    if-nez v26, :cond_a5

    .line 728
    new-instance v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    const-string v3, "Server returned a success code, but there are no response items."

    invoke-direct {v2, v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 731
    :cond_a5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_e0

    .line 732
    new-instance v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The number of commit response items returned by the server is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", whereas we sent up "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " items."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 737
    :cond_e0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v22, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v23, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V

    .line 740
    .local v23, overallResponseType:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->getLocalIds()Ljava/util/List;

    move-result-object v16

    .line 741
    .local v16, localIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->getLocalVersions()Ljava/util/List;

    move-result-object v21

    .line 742
    .local v21, localVersions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 743
    .local v15, localIdIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 744
    .local v20, localVersionIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 745
    .local v13, itemIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;>;"
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 746
    .local v28, values:Landroid/content/ContentValues;
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_10a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_376

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    .line 747
    .local v25, response:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 748
    .local v14, localId:Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 749
    .local v18, localVersion:J
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    .line 750
    .restart local v12       #item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$CommitResponse$ResponseType:[I

    invoke-virtual/range {v25 .. v25}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getResponseType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_39c

    goto :goto_10a

    .line 753
    :pswitch_13c
    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "version"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-virtual/range {v28 .. v28}, Landroid/content/ContentValues;->clear()V

    .line 761
    invoke-virtual/range {v25 .. v25}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasIdString()Z

    move-result v2

    if-eqz v2, :cond_175

    .line 762
    const-string v2, "sourceid"

    invoke-virtual/range {v25 .. v25}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getIdString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_175
    invoke-virtual/range {v25 .. v25}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasParentIdString()Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 766
    invoke-virtual/range {v25 .. v25}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getParentIdString()Ljava/lang/String;

    move-result-object v24

    .line 768
    .local v24, remoteParentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    invoke-virtual {v2}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    invoke-virtual {v3}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, v24

    #calls: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->getLocalIdFromRemoteId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;
    invoke-static {v0, v2, v3, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;

    move-result-object v17

    .line 773
    .local v17, localParentId:Ljava/lang/Long;
    if-eqz v17, :cond_1a4

    .line 774
    const-string v2, "parent"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 777
    .end local v17           #localParentId:Ljava/lang/Long;
    .end local v24           #remoteParentId:Ljava/lang/String;
    :cond_1a4
    invoke-virtual/range {v25 .. v25}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasPositionInParent()Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 778
    const-string v2, "position"

    invoke-virtual/range {v25 .. v25}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getPositionInParent()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 781
    :cond_1b9
    invoke-virtual/range {v25 .. v25}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 782
    const-string v2, "sync2"

    invoke-virtual/range {v25 .. v25}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getVersion()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 785
    :cond_1ce
    const-string v2, "dirty"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    invoke-virtual {v12}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getType()I

    move-result v2

    sget v3, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->INSERT_TYPE:I

    if-eq v2, v3, :cond_1ea

    invoke-virtual {v12}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getType()I

    move-result v2

    sget v3, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->MODIFY_TYPE:I

    if-ne v2, v3, :cond_224

    .line 789
    :cond_1ea
    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_210
    :goto_210
    :try_start_210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_219
    .catch Landroid/content/OperationApplicationException; {:try_start_210 .. :try_end_219} :catch_261

    .line 815
    :goto_219
    invoke-virtual {v12}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getType()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->updateCountersOnSuccess(I)V

    goto/16 :goto_10a

    .line 796
    :cond_224
    invoke-virtual {v12}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getType()I

    move-result v2

    sget v3, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->DELETE_TYPE:I

    if-ne v2, v3, :cond_210

    .line 797
    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_210

    .line 807
    :catch_261
    move-exception v10

    .line 808
    .local v10, e:Landroid/content/OperationApplicationException;
    const-string v2, "BookmarksSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to apply commit response for bookmark "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to an provider consistency error."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v2, "BookmarksSync"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_290

    .line 811
    const-string v2, "BookmarksSync"

    const-string v3, "Details:"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    :cond_290
    const/16 v2, 0x20

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    goto :goto_219

    .line 818
    .end local v10           #e:Landroid/content/OperationApplicationException;
    :pswitch_298
    const-string v2, "BookmarksSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to commit bookmark "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to conflict."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    .line 821
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mConflictCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mConflictCount:I

    goto/16 :goto_10a

    .line 824
    :pswitch_2c8
    const-string v2, "BookmarksSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to commit bookmark "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", but client asked to retry."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v2, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    .line 827
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSoftErrorCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSoftErrorCount:I

    goto/16 :goto_10a

    .line 830
    :pswitch_2f8
    const-string v2, "BookmarksSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to commit bookmark "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to invalid message."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    goto/16 :goto_10a

    .line 835
    :pswitch_31e
    const-string v2, "BookmarksSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to commit bookmark "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to quota violation."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/16 v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    goto/16 :goto_10a

    .line 840
    :pswitch_345
    const-string v2, "BookmarksSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to commit bookmark "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to a transient error."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/16 v2, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    .line 843
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSoftErrorCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSoftErrorCount:I

    goto/16 :goto_10a

    .line 847
    .end local v12           #item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .end local v14           #localId:Ljava/lang/String;
    .end local v18           #localVersion:J
    .end local v25           #response:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    :cond_376
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_382

    .line 848
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    goto/16 :goto_b

    .line 849
    :cond_382
    const/16 v2, 0xc

    move-object/from16 v0, v23

    #calls: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->checkBits(I)Z
    invoke-static {v0, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->access$400(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;I)Z

    move-result v2

    if-eqz v2, :cond_394

    .line 851
    new-instance v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    const-string v3, "Unable to commit one or more records due to hard error."

    invoke-direct {v2, v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 854
    :cond_394
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to commit one or more records due to soft error."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 750
    :pswitch_data_39c
    .packed-switch 0x1
        :pswitch_13c
        :pswitch_298
        :pswitch_2c8
        :pswitch_2f8
        :pswitch_31e
        :pswitch_345
    .end packed-switch
.end method
