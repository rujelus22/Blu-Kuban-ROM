.class Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;
.super Landroid/os/AsyncTask;
.source "AccountSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AccountSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadUnreadMessageCounts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/talk/AccountSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AccountSelectionActivity;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p2, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 426
    iput-object p2, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    .line 427
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 421
    check-cast p1, [Landroid/content/ContentResolver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->doInBackground([Landroid/content/ContentResolver;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/ContentResolver;)Ljava/lang/Void;
    .registers 15
    .parameter "contentResolvers"

    .prologue
    const/4 v2, 0x0

    .line 431
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    monitor-enter v1

    .line 433
    :try_start_4
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 434
    .local v6, accountCnt:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_b
    if-ge v10, v6, :cond_1b

    .line 435
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 436
    .local v11, info:Lcom/google/android/talk/TalkApp$AccountInfo;
    const/4 v0, 0x0

    iput v0, v11, Lcom/google/android/talk/TalkApp$AccountInfo;->unreadCount:I

    .line 434
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 438
    .end local v11           #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2e

    .line 439
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI_UNREAD_CHATS:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 446
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_31

    .line 475
    :goto_2d
    return-object v2

    .line 438
    .end local v6           #accountCnt:I
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #i:I
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    .line 457
    .restart local v6       #accountCnt:I
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #i:I
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    monitor-enter v1
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_61

    .line 458
    :cond_34
    :goto_34
    :try_start_34
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 459
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 460
    .local v7, accountId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 462
    .local v12, unreadChatsCount:I
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 463
    const/4 v10, 0x0

    :goto_4b
    if-ge v10, v6, :cond_34

    .line 464
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 465
    .restart local v11       #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, v11, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_66

    .line 466
    iput v12, v11, Lcom/google/android/talk/TalkApp$AccountInfo;->unreadCount:I

    goto :goto_34

    .line 471
    .end local v7           #accountId:J
    .end local v11           #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v12           #unreadChatsCount:I
    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_34 .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    .line 473
    :catchall_61
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 463
    .restart local v7       #accountId:J
    .restart local v11       #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v12       #unreadChatsCount:I
    :cond_66
    add-int/lit8 v10, v10, 0x1

    goto :goto_4b

    .line 471
    .end local v7           #accountId:J
    .end local v11           #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v12           #unreadChatsCount:I
    :cond_69
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_5e

    .line 473
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 421
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "x"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountSelectionActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountListAdapter;->notifyDataSetChanged()V

    .line 484
    return-void
.end method
