.class Lcom/android/email/activity/MailboxMoveToAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailboxMoveToAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;
    }
.end annotation


# static fields
.field private static final MOVE_TO_PROJECTION_DISPLAY_NAME:[Ljava/lang/String;

.field private static final MOVE_TO_PROJECTION_SERVER_ID:[Ljava/lang/String;


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_id AS org_mailbox_id"

    aput-object v1, v0, v3

    const-string v1, "serverId"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/MailboxMoveToAdapter;->MOVE_TO_PROJECTION_SERVER_ID:[Ljava/lang/String;

    .line 70
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_id AS org_mailbox_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/MailboxMoveToAdapter;->MOVE_TO_PROJECTION_DISPLAY_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxMoveToAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 104
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/email/activity/MailboxMoveToAdapter;->MOVE_TO_PROJECTION_DISPLAY_NAME:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/email/activity/MailboxMoveToAdapter;->MOVE_TO_PROJECTION_SERVER_ID:[Ljava/lang/String;

    return-object v0
.end method

.method static createLoader(Landroid/content/Context;JJ)Landroid/content/Loader;
    .registers 11
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 119
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MailboxDialogAdapter#createLoader accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mailboxId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2a
    new-instance v0, Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxMoveToAdapter$MailboxMoveToLoader;-><init>(Landroid/content/Context;JJ)V

    return-object v0
.end method

.method private static getDisplayText(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 131
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 132
    .local v2, type:I
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 133
    .local v0, mailboxId:J
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/android/email/FolderProperties;->getDisplayName(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 108
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, t:Landroid/widget/TextView;
    invoke-static {p2, p3}, Lcom/android/email/activity/MailboxMoveToAdapter;->getDisplayText(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/email/activity/MailboxMoveToAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
