.class public Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;
.super Lcom/android/email/activity/ShortcutPickerFragment;
.source "ShortcutPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ShortcutPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MailboxShortcutPickerFragment"
.end annotation


# static fields
.field private static final EAS_PROJECTION:[Ljava/lang/String;

.field public static FILTER_ALLOW_ALL:I

.field public static FILTER_ALLOW_UNREAD:I

.field public static FILTER_INBOX_ONLY:I

.field private static final IMAP_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_FROM_COLUMNS:[Ljava/lang/String;

.field private static final MATRIX_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mFilter:Ljava/lang/Integer;

.field private volatile mLoadFinished:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    sput v2, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_ALLOW_ALL:I

    .line 288
    sput v3, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_INBOX_ONLY:I

    .line 290
    sput v4, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_ALLOW_UNREAD:I

    .line 296
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->MAILBOX_FROM_COLUMNS:[Ljava/lang/String;

    .line 300
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_id as realId"

    aput-object v1, v0, v3

    const-string v1, "serverId as displayName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->IMAP_PROJECTION:[Ljava/lang/String;

    .line 305
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_id as realId"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->EAS_PROJECTION:[Ljava/lang/String;

    .line 310
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "realId"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->MATRIX_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/email/activity/ShortcutPickerFragment;-><init>()V

    .line 321
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mLoadFinished:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 284
    sget-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->MATRIX_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Ljava/lang/Integer;)Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "filter"

    .prologue
    .line 333
    new-instance v1, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;

    invoke-direct {v1}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;-><init>()V

    .line 334
    .local v1, fragment:Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "MailboxShortcutPickerFragment.account"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 336
    const-string v2, "MailboxShortcutPickerFragment.filter"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    invoke-virtual {v1, v0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 338
    return-object v1
.end method


# virtual methods
.method getFilter()I
    .registers 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mFilter:Ljava/lang/Integer;

    if-nez v0, :cond_16

    .line 344
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MailboxShortcutPickerFragment.filter"

    sget v2, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_ALLOW_ALL:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mFilter:Ljava/lang/Integer;

    .line 346
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mFilter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getFromColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 419
    sget-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->MAILBOX_FROM_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/android/email/activity/ShortcutPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 360
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mLoadFinished:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 361
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVisible(Z)V

    .line 363
    :cond_1d
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MailboxShortcutPickerFragment.account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 353
    invoke-super {p0, p1}, Lcom/android/email/activity/ShortcutPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 354
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 15
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 377
    .local v1, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v10

    .line 381
    .local v10, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v10}, Lcom/android/emailcommon/provider/HostAuth;->isEasConnection()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 382
    sget-object v3, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->EAS_PROJECTION:[Ljava/lang/String;

    .line 383
    .local v3, projection:[Ljava/lang/String;
    const-string v6, "displayName"

    .line 388
    .local v6, orderBy:Ljava/lang/String;
    :goto_14
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->getFilter()I

    move-result v0

    sget v2, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_INBOX_ONLY:I

    and-int/2addr v0, v2

    if-nez v0, :cond_48

    .line 389
    const-string v4, "accountKey=? AND type<64 AND flagVisible=1"

    .line 393
    .local v4, selection:Ljava/lang/String;
    :goto_1f
    new-instance v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    iget-object v7, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->getFilter()I

    move-result v9

    sget v11, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_ALLOW_UNREAD:I

    and-int/2addr v9, v11

    if-eqz v9, :cond_4b

    const/4 v9, 0x1

    :goto_3f
    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v0

    .line 385
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_43
    sget-object v3, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->IMAP_PROJECTION:[Ljava/lang/String;

    .line 386
    .restart local v3       #projection:[Ljava/lang/String;
    const-string v6, "serverId"

    .restart local v6       #orderBy:Ljava/lang/String;
    goto :goto_14

    .line 391
    :cond_48
    const-string v4, "accountKey=? AND type<64 AND flagVisible=1 AND type = 0"

    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_1f

    .line 393
    :cond_4b
    const/4 v9, 0x0

    goto :goto_3f
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 367
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 368
    .local v0, cursor:Landroid/database/Cursor;
    const-string v3, "realId"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 369
    .local v1, mailboxId:J
    iget-object v3, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    iget-object v4, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-interface {v3, v4, v1, v2}, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;->onSelected(Lcom/android/emailcommon/provider/Account;J)V

    .line 370
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 8
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, 0x1

    .line 402
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_e

    .line 403
    iget-object v2, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;->onMissingData(ZZ)V

    .line 415
    :goto_d
    return-void

    .line 407
    :cond_e
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v4, :cond_2c

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 408
    const-string v2, "realId"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 409
    .local v0, mailboxId:J
    iget-object v2, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    iget-object v3, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;->onSelected(Lcom/android/emailcommon/provider/Account;J)V

    goto :goto_d

    .line 412
    .end local v0           #mailboxId:J
    :cond_2c
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/ShortcutPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 413
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mLoadFinished:Ljava/lang/Boolean;

    .line 414
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setVisible(Z)V

    goto :goto_d
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
