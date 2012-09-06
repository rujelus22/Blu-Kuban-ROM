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
    .line 1863
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1864
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1865
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 1866
    new-instance v0, Lcom/android/email/Throttle;

    const-string v1, "MessageObserver"

    invoke-direct {v0, v1, p0, p2}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mThrottle:Lcom/android/email/Throttle;

    .line 1867
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 1886
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 1891
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    if-eqz v0, :cond_9

    .line 1892
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->onEvent()V

    .line 1894
    :cond_9
    return-void
.end method

.method public register(Landroid/net/Uri;)V
    .registers 4
    .parameter "notifyUri"

    .prologue
    const/4 v1, 0x1

    .line 1879
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->unregister()V

    .line 1880
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1881
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    .line 1882
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 1900
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    if-eqz v0, :cond_11

    .line 1901
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->cancelPreviousAndExecuteParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1903
    :cond_11
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 1870
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    if-nez v0, :cond_5

    .line 1876
    :goto_4
    return-void

    .line 1873
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    .line 1874
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    goto :goto_4
.end method
