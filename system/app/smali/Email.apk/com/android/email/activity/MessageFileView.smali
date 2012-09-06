.class public Lcom/android/email/activity/MessageFileView;
.super Landroid/app/Activity;
.source "MessageFileView.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragmentBase$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageFileView$LoadFilenameTask;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mFragment:Lcom/android/email/activity/MessageFileViewFragment;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageFileView;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageFileView;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/email/activity/MessageFileView;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageFileView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageFileView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .registers 6
    .parameter "filename"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/MessageFileView;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f08009e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageFileView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method


# virtual methods
.method getFragment()Lcom/android/email/activity/MessageFileViewFragment;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/email/activity/MessageFileView;->mFragment:Lcom/android/email/activity/MessageFileViewFragment;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 47
    const v1, 0x7f040031

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageFileView;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageFileView;->mActionBar:Landroid/app/ActionBar;

    .line 50
    iget-object v1, p0, Lcom/android/email/activity/MessageFileView;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e007f

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageFileViewFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageFileView;->mFragment:Lcom/android/email/activity/MessageFileViewFragment;

    .line 55
    iget-object v1, p0, Lcom/android/email/activity/MessageFileView;->mFragment:Lcom/android/email/activity/MessageFileViewFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/MessageFileViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 58
    .local v0, fileEmailUri:Landroid/net/Uri;
    if-nez v0, :cond_42

    .line 59
    const-string v1, "Email"

    const-string v2, "Insufficient intent parameter.  Closing..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->finish()V

    .line 68
    :goto_41
    return-void

    .line 64
    :cond_42
    iget-object v1, p0, Lcom/android/email/activity/MessageFileView;->mFragment:Lcom/android/email/activity/MessageFileViewFragment;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageFileViewFragment;->setFileUri(Landroid/net/Uri;)V

    .line 67
    new-instance v1, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;-><init>(Lcom/android/email/activity/MessageFileView;Landroid/net/Uri;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_41
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/android/email/activity/MessageFileView;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 79
    return-void
.end method

.method public onLoadMessageError(Ljava/lang/String;)V
    .registers 2
    .parameter "errorMessage"

    .prologue
    .line 148
    return-void
.end method

.method public onLoadMessageFinished()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method

.method public onLoadMessageStarted()V
    .registers 1

    .prologue
    .line 138
    return-void
.end method

.method public onMessageNotExists()V
    .registers 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->finish()V

    .line 133
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 85
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->onBackPressed()V

    .line 86
    const/4 v0, 0x1

    goto :goto_b

    .line 83
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    return-void
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .registers 4
    .parameter "url"

    .prologue
    .line 127
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/email/activity/ActivityHelper;->openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method
