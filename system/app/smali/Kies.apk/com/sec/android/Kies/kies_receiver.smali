.class public Lcom/sec/android/Kies/kies_receiver;
.super Landroid/content/BroadcastReceiver;
.source "kies_receiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private StartKiesService(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, serviceKies:Landroid/content/Intent;
    const-string v1, "com.sec.android.Kies"

    const-string v2, "com.sec.android.Kies.kies_start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intent.action.KIES_GET_LOCK_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 57
    const/4 v0, 0x6

    sput v0, Lcom/sec/android/Kies/kies_start;->m_nKiesActionEvent:I

    .line 58
    const-string v0, "KIES_START"

    const-string v1, "KIES_ACTION_EVENT_NUM_GET_LOCK_STATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0, p1}, Lcom/sec/android/Kies/kies_receiver;->StartKiesService(Landroid/content/Context;)V

    .line 62
    :cond_1d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intent.action.KIES_GET_DEVICE_PROFILE_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 64
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/Kies/kies_start;->m_nKiesActionEvent:I

    .line 65
    const-string v0, "KIES_START"

    const-string v1, "KIES_ACTION_EVENT_NUM_GET_DEVICE_PROFILE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/Kies/kies_receiver;->StartKiesService(Landroid/content/Context;)V

    .line 69
    :cond_3a
    return-void
.end method
