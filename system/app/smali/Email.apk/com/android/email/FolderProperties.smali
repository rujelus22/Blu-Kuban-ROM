.class public Lcom/android/email/FolderProperties;
.super Ljava/lang/Object;
.source "FolderProperties.java"


# static fields
.field private static sInstance:Lcom/android/email/FolderProperties;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSpecialMailbox:[Ljava/lang/String;

.field private final mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

.field private final mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_30

    .line 56
    const-string v1, ""

    iget-object v2, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 58
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 55
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 61
    :cond_30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method

.method private getDisplayName(IJ)Ljava/lang/String;
    .registers 6
    .parameter "type"
    .parameter "mailboxId"

    .prologue
    .line 100
    invoke-virtual {p0, p2, p3}, Lcom/android/email/FolderProperties;->getCombinedMailboxName(J)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_f

    .line 103
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 105
    :cond_f
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;
    .registers 3
    .parameter "context"

    .prologue
    .line 70
    const-class v1, Lcom/android/email/FolderProperties;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;

    if-nez v0, :cond_e

    .line 71
    new-instance v0, Lcom/android/email/FolderProperties;

    invoke-direct {v0, p0}, Lcom/android/email/FolderProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;

    .line 73
    :cond_e
    sget-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMessageCountForCombinedMailbox(Landroid/content/Context;J)I
    .registers 7
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v1, 0x0

    .line 186
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 187
    const-wide/16 v2, -0x2

    cmp-long v0, p1, v2

    if-eqz v0, :cond_17

    const-wide/16 v2, -0x3

    cmp-long v0, p1, v2

    if-nez v0, :cond_1e

    .line 189
    :cond_17
    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    .line 198
    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    .line 186
    goto :goto_8

    .line 191
    :cond_1e
    const-wide/16 v0, -0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_29

    .line 192
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;)I

    move-result v0

    goto :goto_1b

    .line 194
    :cond_29
    const-wide/16 v0, -0x5

    cmp-long v0, p1, v0

    if-nez v0, :cond_35

    .line 195
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1b

    .line 197
    :cond_35
    const-wide/16 v0, -0x6

    cmp-long v0, p1, v0

    if-nez v0, :cond_41

    .line 198
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1b

    .line 200
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid mailbox ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCombinedMailboxName(J)Ljava/lang/String;
    .registers 6
    .parameter "mailboxId"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 81
    .local v0, resId:I
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_13

    .line 82
    const v0, 0x7f08004e

    .line 90
    :cond_a
    :goto_a
    if-eqz v0, :cond_31

    .line 91
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_12
    return-object v1

    .line 83
    :cond_13
    const-wide/16 v1, -0x4

    cmp-long v1, p1, v1

    if-nez v1, :cond_1d

    .line 84
    const v0, 0x7f08004f

    goto :goto_a

    .line 85
    :cond_1d
    const-wide/16 v1, -0x5

    cmp-long v1, p1, v1

    if-nez v1, :cond_27

    .line 86
    const v0, 0x7f080050

    goto :goto_a

    .line 87
    :cond_27
    const-wide/16 v1, -0x6

    cmp-long v1, p1, v1

    if-nez v1, :cond_a

    .line 88
    const v0, 0x7f080051

    goto :goto_a

    .line 93
    :cond_31
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getDisplayName(IJLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "mailboxType"
    .parameter "mailboxId"
    .parameter "originalDisplayName"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/FolderProperties;->getDisplayName(IJ)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 122
    .end local v0           #name:Ljava/lang/String;
    :goto_6
    return-object v0

    .restart local v0       #name:Ljava/lang/String;
    :cond_7
    move-object v0, p4

    goto :goto_6
.end method

.method public getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .parameter "mailboxCursor"

    .prologue
    .line 132
    move-object v0, p1

    .line 133
    .local v0, c:Landroid/database/Cursor;
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "displayName"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/email/FolderProperties;->getDisplayName(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayName(Lcom/android/emailcommon/provider/Mailbox;)Ljava/lang/String;
    .registers 6
    .parameter "mailbox"

    .prologue
    .line 141
    iget v0, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iget-object v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/email/FolderProperties;->getDisplayName(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(IJI)Landroid/graphics/drawable/Drawable;
    .registers 9
    .parameter "type"
    .parameter "mailboxId"
    .parameter "mailboxFlags"

    .prologue
    const/4 v3, -0x1

    .line 207
    const-wide/16 v1, -0x2

    cmp-long v1, p2, v1

    if-nez v1, :cond_a

    .line 208
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    :goto_9
    return-object v1

    .line 209
    :cond_a
    const-wide/16 v1, -0x4

    cmp-long v1, p2, v1

    if-nez v1, :cond_13

    .line 210
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    .line 211
    :cond_13
    const-wide/16 v1, -0x5

    cmp-long v1, p2, v1

    if-nez v1, :cond_21

    .line 212
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_9

    .line 213
    :cond_21
    const-wide/16 v1, -0x6

    cmp-long v1, p2, v1

    if-nez v1, :cond_2f

    .line 214
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_9

    .line 216
    :cond_2f
    if-ltz p1, :cond_4c

    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_4c

    .line 217
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 218
    .local v0, resId:I
    if-eq v0, v3, :cond_4c

    .line 219
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_9

    .line 222
    .end local v0           #resId:I
    :cond_4c
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getMessageCount(III)I
    .registers 4
    .parameter "mailboxType"
    .parameter "unreadCount"
    .parameter "totalCount"

    .prologue
    .line 153
    packed-switch p1, :pswitch_data_8

    move p3, p2

    .line 161
    .end local p3
    :goto_4
    :pswitch_4
    return p3

    .line 159
    .restart local p3
    :pswitch_5
    const/4 p3, 0x0

    goto :goto_4

    .line 153
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getMessageCount(Landroid/database/Cursor;)I
    .registers 6
    .parameter "mailboxCursor"

    .prologue
    .line 171
    move-object v0, p1

    .line 172
    .local v0, c:Landroid/database/Cursor;
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "unreadCount"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "messageCount"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/email/FolderProperties;->getMessageCount(III)I

    move-result v1

    return v1
.end method
