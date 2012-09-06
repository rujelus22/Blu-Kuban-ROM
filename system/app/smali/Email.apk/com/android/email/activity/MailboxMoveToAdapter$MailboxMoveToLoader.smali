.class Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MailboxMoveToAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxMoveToAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailboxMoveToLoader"
.end annotation


# instance fields
.field private final mAccountId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .registers 13
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v3, 0x0

    .line 141
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? AND type<64 AND flagVisible=1 AND type NOT IN (3,4,5,6) AND (flags & 16 != 0) AND _id!=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-wide p2, p0, Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;->mAccountId:J

    .line 145
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 6

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, protocol:Ljava/lang/String;
    const-string v2, "eas"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 153
    invoke-static {}, Lcom/android/email/activity/MailboxMoveToAdapter;->access$000()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;->setProjection([Ljava/lang/String;)V

    .line 154
    const-string v2, "CASE type WHEN 0 THEN 0 WHEN 7 THEN 1 ELSE 10 END, displayName"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;->setSortOrder(Ljava/lang/String;)V

    .line 160
    :goto_1e
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 161
    .local v0, mailboxesCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 157
    .end local v0           #mailboxesCursor:Landroid/database/Cursor;
    :cond_27
    invoke-static {}, Lcom/android/email/activity/MailboxMoveToAdapter;->access$100()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;->setProjection([Ljava/lang/String;)V

    .line 158
    const-string v2, "CASE type WHEN 0 THEN 0 WHEN 7 THEN 1 ELSE 10 END, serverId"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
