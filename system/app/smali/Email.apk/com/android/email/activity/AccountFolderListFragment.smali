.class public Lcom/android/email/activity/AccountFolderListFragment;
.super Landroid/app/ListFragment;
.source "AccountFolderListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/email/activity/AccountsAdapter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountFolderListFragment$1;,
        Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;,
        Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;,
        Lcom/android/email/activity/AccountFolderListFragment$Callback;
    }
.end annotation


# static fields
.field private static final MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

.field private mControllerCallback:Lcom/android/email/Controller$Result;

.field private mListAdapter:Lcom/android/email/activity/AccountsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoadAccountsTask:Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sum(unreadCount)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountFolderListFragment;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 488
    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/AccountFolderListFragment;)Landroid/database/MatrixCursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderListFragment;->getSummaryChildCursor()Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/AccountFolderListFragment;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/AccountFolderListFragment;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/AccountFolderListFragment;)Lcom/android/email/activity/AccountsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/AccountFolderListFragment;Lcom/android/email/activity/AccountsAdapter;)Lcom/android/email/activity/AccountsAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/AccountFolderListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderListFragment;->updateAccounts()V

    return-void
.end method

.method private static getCountByMailboxType(Landroid/content/Context;I)I
    .registers 11
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 327
    const/4 v7, 0x0

    .line 328
    .local v7, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type =?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 334
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, -0x1

    :try_start_1b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 335
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 336
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "mailboxKey =?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_3d

    move-result v0

    add-int/2addr v7, v0

    goto :goto_1e

    .line 342
    :catchall_3d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 344
    return v7
.end method

.method private getSummaryChildCursor()Landroid/database/MatrixCursor;
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 363
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/email/activity/AccountsAdapter;->MAILBOX_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 367
    .local v0, childCursor:Landroid/database/MatrixCursor;
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v5}, Lcom/android/email/activity/AccountFolderListFragment;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v1

    .line 368
    .local v1, count:I
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 369
    .local v2, row:Landroid/database/MatrixCursor$RowBuilder;
    const-wide/16 v3, -0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 372
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f08009a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 373
    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 374
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 375
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 377
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "flagFavorite= 1"

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 378
    if-lez v1, :cond_72

    .line 379
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 380
    const-wide/16 v3, -0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 383
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080097

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 384
    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 385
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 389
    :cond_72
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v7}, Lcom/android/email/activity/AccountFolderListFragment;->getCountByMailboxType(Landroid/content/Context;I)I

    move-result v1

    .line 390
    if-lez v1, :cond_a4

    .line 391
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 392
    const-wide/16 v3, -0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 395
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080098

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 396
    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 397
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 401
    :cond_a4
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/android/email/activity/AccountFolderListFragment;->getCountByMailboxType(Landroid/content/Context;I)I

    move-result v1

    .line 402
    if-lez v1, :cond_d6

    .line 403
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 404
    const-wide/16 v3, -0x6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 407
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080099

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 408
    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 409
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 410
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 412
    :cond_d6
    return-object v0
.end method

.method private static getUnreadCountByMailboxType(Landroid/content/Context;I)I
    .registers 11
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v8, 0x0

    .line 310
    const/4 v7, 0x0

    .line 311
    .local v7, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/AccountFolderListFragment;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 317
    .local v6, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 318
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_29

    move-result v7

    .line 321
    .end local v7           #count:I
    :cond_25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    return v7

    .line 321
    .restart local v7       #count:I
    :catchall_29
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateAccounts()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 297
    iput-object v1, p0, Lcom/android/email/activity/AccountFolderListFragment;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;

    .line 298
    new-instance v0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;-><init>(Lcom/android/email/activity/AccountFolderListFragment;Lcom/android/email/activity/AccountFolderListFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;

    .line 299
    return-void
.end method


# virtual methods
.method public bindActivityInfo(Lcom/android/email/activity/AccountFolderListFragment$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    .line 134
    return-void
.end method

.method public hideDeletingAccount(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/AccountsAdapter;->addOnDeletingAccount(J)V

    .line 307
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    .line 144
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListView:Landroid/widget/ListView;

    .line 145
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 146
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 150
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;-><init>(Lcom/android/email/activity/AccountFolderListFragment;Lcom/android/email/activity/AccountFolderListFragment$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mControllerCallback:Lcom/android/email/Controller$Result;

    .line 152
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/AccountFolderListFragment;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 153
    return-void
.end method

.method public onClickAccountFolders(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    if-eqz v0, :cond_9

    .line 288
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/AccountFolderListFragment$Callback;->onOpenMailboxes(J)V

    .line 290
    :cond_9
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 227
    .local v5, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v7, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    if-nez v7, :cond_c

    .line 265
    :cond_b
    :goto_b
    return v6

    .line 231
    :cond_c
    iget-object v7, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    iget v8, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/email/activity/AccountsAdapter;->isMailbox(I)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 232
    iget-object v7, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListView:Landroid/widget/ListView;

    iget v8, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 233
    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 234
    .local v3, id:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_7a

    goto :goto_b

    .line 236
    :sswitch_2c
    iget-object v7, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    invoke-interface {v7, v3, v4}, Lcom/android/email/activity/AccountFolderListFragment$Callback;->onOpenMailbox(J)V

    goto :goto_b

    .line 239
    :sswitch_32
    iget-object v7, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    const-wide/16 v8, -0x1

    invoke-interface {v7, v8, v9}, Lcom/android/email/activity/AccountFolderListFragment$Callback;->onRefresh(J)V

    goto :goto_b

    .line 243
    .end local v2           #c:Landroid/database/Cursor;
    .end local v3           #id:J
    :cond_3a
    iget-object v7, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    iget v8, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/email/activity/AccountsAdapter;->isAccount(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 244
    iget-object v7, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListView:Landroid/widget/ListView;

    iget v8, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 245
    .restart local v2       #c:Landroid/database/Cursor;
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 246
    .local v0, accountId:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_84

    .line 263
    :goto_59
    const/4 v6, 0x1

    goto :goto_b

    .line 248
    :pswitch_5b
    iget-object v6, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    invoke-interface {v6, v0, v1}, Lcom/android/email/activity/AccountFolderListFragment$Callback;->onOpenAccount(J)V

    goto :goto_59

    .line 251
    :pswitch_61
    iget-object v6, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    invoke-interface {v6, v0, v1}, Lcom/android/email/activity/AccountFolderListFragment$Callback;->onCompose(J)V

    goto :goto_59

    .line 254
    :pswitch_67
    iget-object v6, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    invoke-interface {v6, v0, v1}, Lcom/android/email/activity/AccountFolderListFragment$Callback;->onRefresh(J)V

    goto :goto_59

    .line 257
    :pswitch_6d
    iget-object v6, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    invoke-interface {v6, v0, v1}, Lcom/android/email/activity/AccountFolderListFragment$Callback;->onEditAccount(J)V

    goto :goto_59

    .line 260
    :pswitch_73
    iget-object v6, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    invoke-interface {v6, v0, v1}, Lcom/android/email/activity/AccountFolderListFragment$Callback;->onDeleteAccount(J)V

    goto :goto_59

    .line 234
    nop

    :sswitch_data_7a
    .sparse-switch
        0x7f1002d3 -> :sswitch_2c
        0x7f1002d8 -> :sswitch_32
    .end sparse-switch

    .line 246
    :pswitch_data_84
    .packed-switch 0x7f1002d3
        :pswitch_5b
        :pswitch_61
        :pswitch_67
        :pswitch_6d
        :pswitch_73
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "v"
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    .line 204
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v3, p3

    .line 205
    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 206
    .local v3, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AccountsAdapter;->isMailbox(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 207
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListView:Landroid/widget/ListView;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 208
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, displayName:Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 210
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 218
    .end local v1           #c:Landroid/database/Cursor;
    .end local v2           #displayName:Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-void

    .line 212
    :cond_2f
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AccountsAdapter;->isAccount(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 213
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListView:Landroid/widget/ListView;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 214
    .restart local v1       #c:Landroid/database/Cursor;
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, accountName:Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 216
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const/high16 v5, 0x7f0f

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2e
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/AccountFolderListFragment;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 196
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 197
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    if-eqz v0, :cond_18

    .line 198
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 200
    :cond_18
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    if-nez v0, :cond_5

    .line 283
    :cond_4
    :goto_4
    return-void

    .line 276
    :cond_5
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account folder list onItemClick :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/AccountsAdapter;->isMailbox(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 279
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    invoke-interface {v0, p4, p5}, Lcom/android/email/activity/AccountFolderListFragment$Callback;->onOpenMailbox(J)V

    goto :goto_4

    .line 280
    :cond_2b
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mListAdapter:Lcom/android/email/activity/AccountsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/AccountsAdapter;->isAccount(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mCallback:Lcom/android/email/activity/AccountFolderListFragment$Callback;

    invoke-interface {v0, p4, p5}, Lcom/android/email/activity/AccountFolderListFragment$Callback;->onOpenAccount(J)V

    goto :goto_4
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 178
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderListFragment;->updateAccounts()V

    .line 170
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 161
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 186
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderListFragment$LoadAccountsTask;

    .line 188
    return-void
.end method
