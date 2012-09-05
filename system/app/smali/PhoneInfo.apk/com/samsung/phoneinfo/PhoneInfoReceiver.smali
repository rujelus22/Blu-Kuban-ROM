.class public Lcom/samsung/phoneinfo/PhoneInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneInfoReceiver.java"


# static fields
.field static final mStartingServiceSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/phoneinfo/PhoneInfoReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    sget-object v1, Lcom/samsung/phoneinfo/PhoneInfoReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_3
    const-string v0, "PhoneInfoReceiver"

    const-string v2, "beginStartingService"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string v1, "PhoneInfoReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object p1, p0, Lcom/samsung/phoneinfo/PhoneInfoReceiver;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 51
    invoke-virtual {p0, p1, p2, v2}, Lcom/samsung/phoneinfo/PhoneInfoReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 66
    :cond_2e
    :goto_2e
    return-void

    .line 53
    :cond_2f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.internal.PHONE_BOOT_UP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 55
    invoke-virtual {p0, p1, p2, v2}, Lcom/samsung/phoneinfo/PhoneInfoReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_2e

    .line 58
    :cond_3f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.coremobility.app.vnotes.intent.action.MESSAGE_COUNT_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "unread_msg_cnt"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v0, v1

    .line 61
    .local v0, unreadMsgCnt:B
    iget-object v1, p0, Lcom/samsung/phoneinfo/PhoneInfoReceiver;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/phoneinfo/PhoneInfoReceiver;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 62
    iget-object v3, p0, Lcom/samsung/phoneinfo/PhoneInfoReceiver;->mTelManager:Landroid/telephony/TelephonyManager;

    if-lez v0, :cond_6b

    const/4 v1, 0x1

    :goto_67
    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->notifyMessageWaitingChanged(Z)V

    goto :goto_2e

    :cond_6b
    move v1, v2

    goto :goto_67
.end method

.method protected onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    const-class v0, Lcom/samsung/phoneinfo/PhoneInfoService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    const-string v0, "result"

    invoke-virtual {p0}, Lcom/samsung/phoneinfo/PhoneInfoReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    invoke-static {p1, p2}, Lcom/samsung/phoneinfo/PhoneInfoReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 72
    return-void
.end method
