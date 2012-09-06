.class Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;
.super Lcom/android/email/data/ClosingMatrixCursor;
.source "AccountSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CursorWithExtras"
.end annotation


# static fields
.field private static final ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_INFO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountCount:I

.field private mAccountDisplayName:Ljava/lang/String;

.field private mAccountExists:Z

.field private mAccountId:J

.field private mHasShowAllFolders:Z

.field private mMailboxDisplayName:Ljava/lang/String;

.field private mMailboxId:J

.field private mMailboxMessageCount:I

.field private mRecentCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 498
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    .line 501
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->MAILBOX_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;Landroid/database/Cursor;)V
    .registers 3
    .parameter "columnNames"
    .parameter "innerCursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 495
    invoke-direct {p0, p1, p2}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 496
    return-void
.end method

.method static synthetic access$202(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    iput p1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 470
    iget v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    iput p1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mRecentCount:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mHasShowAllFolders:Z

    return p1
.end method

.method private setCombinedMailboxInfo(Landroid/content/Context;J)V
    .registers 7
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    .line 564
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    :goto_7
    const-string v1, "Not combined mailbox"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 565
    invoke-static {p1}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/FolderProperties;->getCombinedMailboxName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxDisplayName:Ljava/lang/String;

    .line 568
    invoke-static {p1, p2, p3}, Lcom/android/email/FolderProperties;->getMessageCountForCombinedMailbox(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxMessageCount:I

    .line 570
    return-void

    .line 564
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public accountExists()Z
    .registers 2

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountExists:Z

    return v0
.end method

.method public getAccountCount()I
    .registers 2

    .prologue
    .line 587
    iget v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I

    return v0
.end method

.method public getAccountDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountId()J
    .registers 3

    .prologue
    .line 604
    iget-wide v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountId:J

    return-wide v0
.end method

.method public getMailboxDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMailboxId()J
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 613
    iget-wide v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    return-wide v0
.end method

.method public getMailboxMessageCount()I
    .registers 2

    .prologue
    .line 621
    iget v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxMessageCount:I

    return v0
.end method

.method public getRecentMailboxCount()I
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 592
    iget v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mRecentCount:I

    return v0
.end method

.method setAccountMailboxInfo(Landroid/content/Context;JJ)V
    .registers 16
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 511
    iput-wide p2, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountId:J

    .line 512
    iput-wide p4, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    .line 515
    const-wide/high16 v1, 0x1000

    cmp-long v1, p2, v1

    if-nez v1, :cond_1d

    .line 517
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountExists:Z

    .line 518
    #calls: Lcom/android/email/activity/AccountSelectorAdapter;->getCombinedViewDisplayName(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/email/activity/AccountSelectorAdapter;->access$400(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountDisplayName:Ljava/lang/String;

    .line 519
    const-wide/16 v1, -0x1

    cmp-long v1, p4, v1

    if-eqz v1, :cond_1c

    .line 520
    invoke-direct {p0, p1, p4, p5}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->setCombinedMailboxInfo(Landroid/content/Context;J)V

    .line 561
    :cond_1c
    :goto_1c
    return-void

    .line 525
    :cond_1d
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountDisplayName:Ljava/lang/String;

    .line 528
    iget-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountDisplayName:Ljava/lang/String;

    if-nez v1, :cond_39

    .line 530
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountExists:Z

    goto :goto_1c

    .line 533
    :cond_39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountExists:Z

    .line 536
    iget-wide v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    .line 542
    iget-wide v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_50

    .line 543
    invoke-direct {p0, p1, p4, p5}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->setCombinedMailboxInfo(Landroid/content/Context;J)V

    goto :goto_1c

    .line 548
    :cond_50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 549
    .local v0, r:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->MAILBOX_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 553
    .local v9, mailboxCursor:Landroid/database/Cursor;
    :try_start_63
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 554
    invoke-static {p1}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v8

    .line 555
    .local v8, fp:Lcom/android/email/FolderProperties;
    invoke-virtual {v8, v9}, Lcom/android/email/FolderProperties;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxDisplayName:Ljava/lang/String;

    .line 556
    invoke-virtual {v8, v9}, Lcom/android/email/FolderProperties;->getMessageCount(Landroid/database/Cursor;)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxMessageCount:I
    :try_end_79
    .catchall {:try_start_63 .. :try_end_79} :catchall_7d

    .line 559
    .end local v8           #fp:Lcom/android/email/FolderProperties;
    :cond_79
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    :catchall_7d
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public shouldEnableSpinner()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 600
    iget-boolean v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mHasShowAllFolders:Z

    if-nez v1, :cond_c

    iget v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I

    iget v2, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mRecentCount:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
