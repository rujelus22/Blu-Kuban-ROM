.class Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;
.super Landroid/database/ContentObserver;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageObserver"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mRegistered:Z

.field private final mThrottle:Lcom/android/email/Throttle;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 9710
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 9711
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9712
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 9713
    new-instance v0, Lcom/android/email/Throttle;

    const-string v1, "MessageObserver"

    invoke-direct {v0, v1, p0, p2}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mThrottle:Lcom/android/email/Throttle;

    .line 9714
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 9733
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 9738
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 9739
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->onEvent()V

    .line 9741
    :cond_d
    return-void
.end method

.method public register(Landroid/net/Uri;)V
    .registers 4
    .parameter "notifyUri"

    .prologue
    .line 9726
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->unregister()V

    .line 9727
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    .line 9729
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 9750
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageSpecified()Z

    move-result v0

    if-nez v0, :cond_9

    .line 9759
    :cond_8
    :goto_8
    return-void

    .line 9754
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9755
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 9756
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8202(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    .line 9757
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 9717
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    if-nez v0, :cond_5

    .line 9723
    :goto_4
    return-void

    .line 9720
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    .line 9721
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 9722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    goto :goto_4
.end method
