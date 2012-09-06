.class public Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;
.super Ljava/lang/Object;
.source "UserPresenceHelperImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/UserPresenceHelper;


# static fields
.field private static final LOG:Lcom/google/android/apps/common/log/GLog;


# instance fields
.field private final keyguardManager:Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxy;

.field private registered:Z

.field private final runnable:Ljava/lang/Runnable;

.field private final userPresenceIntentFilter:Landroid/content/IntentFilter;

.field private final userPresentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxy;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "keyguardManager"
    .parameter "runnable"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->keyguardManager:Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxy;

    .line 33
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->runnable:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl$1;-><init>(Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->userPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->userPresenceIntentFilter:Landroid/content/IntentFilter;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->registered:Z

    .line 47
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/common/log/GLog;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    return-object v0
.end method


# virtual methods
.method public onActivityPaused(Lcom/google/android/apps/googlevoice/service/ActivityProxy;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->registered:Z

    if-eqz v0, :cond_c

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->userPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {p1, v0}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->registered:Z

    .line 69
    :cond_c
    return-void
.end method

.method public onActivityResumed(Lcom/google/android/apps/googlevoice/service/ActivityProxy;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->keyguardManager:Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxy;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxy;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 53
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "Keyguard in place, running later"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->userPresentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->userPresenceIntentFilter:Landroid/content/IntentFilter;

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->registered:Z

    .line 61
    :cond_1d
    :goto_1d
    return-void

    .line 57
    :cond_1e
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "Keyguard not in place, running now"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1d
.end method
