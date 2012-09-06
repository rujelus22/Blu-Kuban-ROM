.class public Lcom/android/email/activity/MessageFileViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageFileViewFragment.java"


# static fields
.field private static sFragmentCount:I


# instance fields
.field private mFileEmailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    if-nez v0, :cond_d

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 76
    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, result:Landroid/view/View;
    const v1, 0x7f0e00aa

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 61
    const v1, 0x7f0e00ab

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 62
    const v1, 0x7f0e00ac

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 63
    const v1, 0x7f0e00ae

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 64
    const v1, 0x7f0e00ad

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 66
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDestroy()V

    .line 83
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    .line 84
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 85
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Controller;->deleteAttachmentMessages()V

    .line 87
    :cond_1e
    return-void
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 6
    .parameter "activity"

    .prologue
    .line 114
    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_20

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 115
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " openMessageSync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_20
    const v1, 0x7f0800a4

    invoke-static {p1, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->loadMessageFromUri(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 120
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v0, :cond_39

    .line 122
    const v1, 0x7f0800a2

    invoke-static {p1, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 123
    const/4 v0, 0x0

    .line 125
    .end local v0           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_39
    return-object v0
.end method

.method protected reloadMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 3
    .parameter "activity"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .registers 5
    .parameter "message"
    .parameter "okToFetch"

    .prologue
    .line 142
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 145
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 146
    return-void
.end method

.method public setFileUri(Landroid/net/Uri;)V
    .registers 5
    .parameter "fileEmailUri"

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 98
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " openMessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    if-eqz v0, :cond_2a

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 103
    :cond_2a
    if-nez p1, :cond_32

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_32
    iput-object p1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    .line 107
    return-void
.end method
