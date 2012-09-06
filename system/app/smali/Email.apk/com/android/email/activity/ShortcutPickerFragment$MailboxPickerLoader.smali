.class final Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;
.super Landroid/content/CursorLoader;
.source "ShortcutPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ShortcutPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MailboxPickerLoader"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mAllowUnread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 10
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "accountId"
    .parameter "allowUnread"

    .prologue
    .line 238
    invoke-direct/range {p0 .. p6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-wide p7, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->mAccountId:J

    .line 240
    iput-boolean p9, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->mAllowUnread:Z

    .line 241
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 245
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->access$000()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 247
    .local v3, unreadCursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 248
    .local v1, context:Landroid/content/Context;
    iget-boolean v4, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->mAllowUnread:Z

    if-eqz v4, :cond_34

    .line 252
    const v4, 0x7f080043

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, mailboxName:Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/Object;

    const-wide/32 v5, 0x7ffffffc

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const-wide/16 v5, -0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v2, v4, v10

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 261
    .end local v2           #mailboxName:Ljava/lang/String;
    :cond_34
    iget-wide v4, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->mAccountId:J

    const-wide/high16 v6, 0x1000

    cmp-long v4, v4, v6

    if-nez v4, :cond_70

    .line 263
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->access$000()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 268
    .local v0, combinedMailboxesCursor:Landroid/database/MatrixCursor;
    const v4, 0x7f080044

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2       #mailboxName:Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/Object;

    const-wide/32 v5, 0x7ffffffd

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const-wide/16 v5, -0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v2, v4, v10

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 275
    new-instance v4, Landroid/database/MergeCursor;

    new-array v5, v10, [Landroid/database/Cursor;

    aput-object v0, v5, v8

    aput-object v3, v5, v9

    invoke-direct {v4, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 279
    .end local v0           #combinedMailboxesCursor:Landroid/database/MatrixCursor;
    .end local v2           #mailboxName:Ljava/lang/String;
    :goto_6f
    return-object v4

    :cond_70
    new-instance v4, Landroid/database/MergeCursor;

    new-array v5, v10, [Landroid/database/Cursor;

    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v3, v5, v9

    invoke-direct {v4, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_6f
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
