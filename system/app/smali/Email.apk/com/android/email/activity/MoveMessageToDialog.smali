.class public Lcom/android/email/activity/MoveMessageToDialog;
.super Landroid/app/DialogFragment;
.source "MoveMessageToDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MoveMessageToDialog$IdContainer;,
        Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;,
        Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;,
        Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;,
        Lcom/android/email/activity/MoveMessageToDialog$Callback;
    }
.end annotation


# static fields
.field static sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;


# instance fields
.field private mAccountId:J

.field private mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

.field private mDestroyed:Z

.field private mMailboxId:J

.field private mMessageIds:[J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 336
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MoveMessageToDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MoveMessageToDialog;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MoveMessageToDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/email/activity/MoveMessageToDialog;->dismissAsync()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MoveMessageToDialog;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/MoveMessageToDialog;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAccountId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/MoveMessageToDialog;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MoveMessageToDialog;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxMoveToAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

    return-object v0
.end method

.method private dismissAsync()V
    .registers 3

    .prologue
    .line 184
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MoveMessageToDialog$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MoveMessageToDialog$1;-><init>(Lcom/android/email/activity/MoveMessageToDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public static newInstance([JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;
    .registers 5
    .parameter "messageIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/email/activity/MoveMessageToDialog$Callback;",
            ">([JTT;)",
            "Lcom/android/email/activity/MoveMessageToDialog;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, callbackFragment:Landroid/app/Fragment;,"TT;"
    array-length v2, p0

    if-nez v2, :cond_9

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 86
    :cond_9
    if-nez p1, :cond_11

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 89
    :cond_11
    new-instance v1, Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {v1}, Lcom/android/email/activity/MoveMessageToDialog;-><init>()V

    .line 90
    .local v1, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "message_ids"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 92
    invoke-virtual {v1, v0}, Lcom/android/email/activity/MoveMessageToDialog;->setArguments(Landroid/os/Bundle;)V

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 94
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 153
    sget-object v0, Lcom/android/email/activity/MoveMessageToDialog;->sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;

    if-eqz v0, :cond_c

    .line 155
    sget-object v0, Lcom/android/email/activity/MoveMessageToDialog;->sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {v0}, Lcom/android/email/activity/MoveMessageToDialog;->dismissAsync()V

    .line 158
    :cond_c
    sput-object p0, Lcom/android/email/activity/MoveMessageToDialog;->sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;

    .line 159
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

    invoke-virtual {v2, p2}, Lcom/android/email/activity/MailboxMoveToAdapter;->getItemId(I)J

    move-result-wide v0

    .line 174
    .local v0, mailboxId:J
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MoveMessageToDialog$Callback;

    iget-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    invoke-interface {v2, v0, v1, v3}, Lcom/android/email/activity/MoveMessageToDialog$Callback;->onMoveToMailboxSelected(J[J)V

    .line 175
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->dismiss()V

    .line 176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 99
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 100
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreate  target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2e
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    .line 104
    const/4 v0, 0x0

    const v1, 0x103006e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->setStyle(II)V

    .line 105
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 119
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 122
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/email/activity/MailboxMoveToAdapter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/email/activity/MailboxMoveToAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

    .line 123
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;-><init>(Lcom/android/email/activity/MoveMessageToDialog;Lcom/android/email/activity/MoveMessageToDialog$1;)V

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 129
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mDestroyed:Z

    .line 110
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 111
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 165
    sget-object v0, Lcom/android/email/activity/MoveMessageToDialog;->sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;

    if-ne v0, p0, :cond_a

    .line 166
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MoveMessageToDialog;->sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;

    .line 168
    :cond_a
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 136
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxMoveToAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_12

    .line 138
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 140
    :cond_12
    return-void
.end method
