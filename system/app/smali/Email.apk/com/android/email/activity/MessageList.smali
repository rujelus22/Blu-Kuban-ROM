.class public Lcom/android/email/activity/MessageList;
.super Landroid/app/Activity;
.source "MessageList.java"


# static fields
.field static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "com.android.email.activity._ACCOUNT_ID"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-void
.end method

.method static createFroyoIntent(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getShortcutSafeUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    return-object v0
.end method

.method static getAccountFromIntent(Landroid/content/Context;Landroid/content/Intent;)J
    .registers 5
    .parameter "context"
    .parameter "i"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 74
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_9

    .line 75
    const-wide/16 v1, -0x1

    .line 77
    :goto_8
    return-wide v1

    :cond_9
    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/Account;->getAccountIdFromShortcutSafeUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    goto :goto_8
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    move-object v0, p0

    .line 45
    .local v0, me:Landroid/app/Activity;
    new-instance v1, Lcom/android/email/activity/MessageList$1;

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/email/activity/MessageList$1;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Landroid/app/Activity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList$1;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 69
    return-void
.end method
