.class Lcom/android/email/widget/EmailWidgetLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "EmailWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;
    }
.end annotation


# static fields
.field private static final WIDGET_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private final mContext:Landroid/content/Context;

.field private mMailboxId:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/widget/EmailWidgetLoader;->WIDGET_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 105
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/widget/EmailWidgetLoader;->WIDGET_PROJECTION:[Ljava/lang/String;

    const-string v6, "timeStamp DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method private setSelectionAndArgs()V
    .registers 9

    .prologue
    const-wide/16 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    iget-wide v0, p0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 184
    iget-wide v0, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1c

    .line 185
    const-string v0, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelection(Ljava/lang/String;)V

    .line 189
    :goto_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 207
    :goto_1b
    return-void

    .line 187
    :cond_1c
    const-string v0, "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_17

    .line 191
    :cond_22
    iget-wide v0, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_46

    .line 193
    const-string v0, "accountKey=? AND mailboxKey=?"

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelection(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-wide v1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_1b

    .line 199
    :cond_46
    iget-wide v0, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_5f

    .line 200
    const-string v0, "accountKey=? AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelection(Ljava/lang/String;)V

    .line 204
    :goto_51
    new-array v0, v5, [Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_1b

    .line 202
    :cond_5f
    const-string v0, "accountKey=? AND flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_51
.end method


# virtual methods
.method load(JJ)V
    .registers 5
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 175
    iput-wide p1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    .line 176
    iput-wide p3, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    .line 177
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelectionAndArgs()V

    .line 178
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->startLoading()V

    .line 179
    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .registers 15

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v7

    .line 115
    .local v7, messagesCursor:Landroid/database/Cursor;
    iget-object v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    invoke-interface {v7, v10, v11}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 118
    iget-wide v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    const-wide/16 v12, -0x4

    cmp-long v10, v10, v12

    if-eqz v10, :cond_72

    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->getSelection()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ) AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "flagRead"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " = 0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, selection:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v9, v12}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 126
    .end local v9           #selection:Ljava/lang/String;
    .local v6, messageCount:I
    :goto_4c
    iget-object v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    iget-wide v11, p0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    invoke-static {v10, v11, v12}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 128
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_77

    .line 129
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 144
    .local v2, accountName:Ljava/lang/String;
    :goto_58
    iget-wide v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_b0

    .line 145
    iget-object v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    iget-wide v11, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    invoke-static {v10, v11, v12}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 146
    .local v4, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v4, :cond_ae

    .line 147
    iget-object v5, v4, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 160
    .end local v4           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .local v5, mailboxName:Ljava/lang/String;
    :goto_6c
    new-instance v10, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-direct {v10, v7, v6, v2, v5}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;-><init>(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 124
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v2           #accountName:Ljava/lang/String;
    .end local v5           #mailboxName:Ljava/lang/String;
    .end local v6           #messageCount:I
    :cond_72
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .restart local v6       #messageCount:I
    goto :goto_4c

    .line 131
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    :cond_77
    iget-wide v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    const-wide/high16 v12, 0x1000

    cmp-long v10, v10, v12

    if-nez v10, :cond_ac

    .line 132
    iget-object v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v11}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 133
    .local v1, accountCount:I
    iget-object v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 134
    .local v8, res:Landroid/content/res/Resources;
    const v10, 0x7f0c0004

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v10, v1, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, countString:Ljava/lang/String;
    const v10, 0x7f080045

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2       #accountName:Ljava/lang/String;
    goto :goto_58

    .line 140
    .end local v1           #accountCount:I
    .end local v2           #accountName:Ljava/lang/String;
    .end local v3           #countString:Ljava/lang/String;
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_ac
    const/4 v2, 0x0

    .restart local v2       #accountName:Ljava/lang/String;
    goto :goto_58

    .line 150
    .restart local v4       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_ae
    const/4 v5, 0x0

    .restart local v5       #mailboxName:Ljava/lang/String;
    goto :goto_6c

    .line 153
    .end local v4           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v5           #mailboxName:Ljava/lang/String;
    :cond_b0
    iget-wide v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    const-wide/16 v12, -0x2

    cmp-long v10, v10, v12

    if-nez v10, :cond_c2

    .line 154
    iget-object v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    const v11, 0x7f080044

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #mailboxName:Ljava/lang/String;
    goto :goto_6c

    .line 156
    .end local v5           #mailboxName:Ljava/lang/String;
    :cond_c2
    iget-object v10, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    const v11, 0x7f080043

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #mailboxName:Ljava/lang/String;
    goto :goto_6c
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
