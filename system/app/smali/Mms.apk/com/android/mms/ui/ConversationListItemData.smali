.class public Lcom/android/mms/ui/ConversationListItemData;
.super Landroid/widget/LinearLayout;
.source "ConversationListItemData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COUNT_ONLY_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mCMASType:Ljava/lang/String;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDate:Ljava/lang/String;

.field private mHasAttachment:Z

.field private mHasDraft:Z

.field private mHasError:Z

.field public mIsCmas:Z

.field private mIsRead:Z

.field private mMessageCount:I

.field private mPresenceResId:I

.field private mRecipientString:Ljava/lang/String;

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mSubject:Ljava/lang/String;

.field private mThreadId:J

.field private mThreadIdArg:[Ljava/lang/String;

.field private mUnreadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " count(*) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ConversationListItemData;->COUNT_ONLY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V
    .registers 9
    .parameter "context"
    .parameter "conv"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListItemData;->mIsCmas:Z

    .line 73
    iput-object v5, p0, Lcom/android/mms/ui/ConversationListItemData;->mCMASType:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/android/mms/ui/ConversationListItemData;->mConversation:Lcom/android/mms/data/Conversation;

    .line 87
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadId:J

    .line 89
    iput v2, p0, Lcom/android/mms/ui/ConversationListItemData;->mPresenceResId:I

    .line 90
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mSubject:Ljava/lang/String;

    .line 91
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mDate:Ljava/lang/String;

    .line 92
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v0

    if-nez v0, :cond_59

    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mIsRead:Z

    .line 93
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasError:Z

    .line 94
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasDraft:Z

    .line 95
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mMessageCount:I

    .line 97
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mUnreadMessageCount:I

    .line 98
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasAttachment:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 101
    iget-boolean v0, p2, Lcom/android/mms/data/Conversation;->mIsCmas:Z

    if-eqz v0, :cond_5b

    .line 103
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListItemData;->mIsCmas:Z

    .line 104
    iget-object v0, p2, Lcom/android/mms/data/Conversation;->mCMASType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mCMASType:Ljava/lang/String;

    .line 112
    :goto_58
    return-void

    :cond_59
    move v0, v2

    .line 92
    goto :goto_2b

    .line 108
    :cond_5b
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListItemData;->mIsCmas:Z

    .line 109
    iput-object v5, p0, Lcom/android/mms/ui/ConversationListItemData;->mCMASType:Ljava/lang/String;

    goto :goto_58
.end method

.method private getMmsCount()I
    .registers 10

    .prologue
    .line 258
    const/4 v7, 0x0

    .line 259
    .local v7, count:I
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/ConversationListItemData;->COUNT_ONLY_PROJECTION:[Ljava/lang/String;

    const-string v4, "(thread_id= ?)"

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItemData;->getThreadArg()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 262
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_28

    .line 264
    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_29

    move-result v7

    .line 266
    :cond_25
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_28
    return v7

    .line 266
    :catchall_29
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSmsCount()I
    .registers 10

    .prologue
    .line 241
    const/4 v7, 0x0

    .line 243
    .local v7, count:I
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/ConversationListItemData;->COUNT_ONLY_PROJECTION:[Ljava/lang/String;

    const-string v4, "(thread_id= ?)"

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItemData;->getThreadArg()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 246
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_28

    .line 248
    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_29

    move-result v7

    .line 250
    :cond_25
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_28
    return v7

    .line 250
    :catchall_29
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getThreadArg()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadIdArg:[Ljava/lang/String;

    if-nez v0, :cond_12

    .line 234
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadIdArg:[Ljava/lang/String;

    .line 236
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadIdArg:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getContacts()Lcom/android/mms/data/ContactList;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipients:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipientString:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsMmsCount()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b6

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItemData;->getSmsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItemData;->getMmsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_2c
    return-object v0

    :cond_2d
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b7

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItemData;->getSmsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .registers 3

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadId:J

    return-wide v0
.end method

.method public getUnreadMessageCount()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mUnreadMessageCount:I

    return v0
.end method

.method public hasDraft()Z
    .registers 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasDraft:Z

    return v0
.end method

.method public hasError()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasError:Z

    return v0
.end method

.method public isCMAS()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mIsCmas:Z

    if-eqz v0, :cond_6

    .line 210
    const/4 v0, 0x1

    .line 213
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConversationListItemData from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItemData;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItemData;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRecipients()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipients:Lcom/android/mms/data/ContactList;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipientString:Ljava/lang/String;

    .line 117
    return-void
.end method
