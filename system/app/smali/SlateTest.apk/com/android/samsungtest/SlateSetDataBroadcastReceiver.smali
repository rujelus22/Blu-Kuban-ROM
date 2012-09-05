.class public Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlateSetDataBroadcastReceiver.java"


# instance fields
.field private DelayTime:I

.field private TAG:Ljava/lang/String;

.field private length:Ljava/lang/String;

.field private mCommand:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private subcommand:I

.field private testCode:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    const-string v0, "SlateSetDataBroadcastReceiver"

    iput-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->length:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->subcommand:I

    .line 54
    iput v1, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->testCode:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->DelayTime:I

    .line 76
    new-instance v0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver$1;-><init>(Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->DelayTime:I

    return v0
.end method

.method private sendSlateDisChargingResult(Ljava/lang/String;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SLATE_TEST.setDisableChargingResult"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method private sendSlateResult(Ljava/lang/String;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SLATE_TEST.setChargingResult"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method private setCharging()V
    .registers 7

    .prologue
    .line 119
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "SetCharging()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v1, "SUCCESS"

    .line 121
    .local v1, SET_SUCCESS:Ljava/lang/String;
    const-string v0, "FAIL"

    .line 124
    .local v0, SET_FAIL:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 125
    const-string v3, "persist.service.slate_mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Set for Charging On (0) at property"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_23
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 137
    const-string v3, "persist.service.slate_mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SLATE_SETCHARGING_RESULT  == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   mCommand ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 142
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, " ==>   Set SUCCESS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v3, "SUCCESS"

    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->sendSlateResult(Ljava/lang/String;)V

    .line 148
    .end local v2           #result:Ljava/lang/String;
    :goto_66
    return-void

    .line 127
    :cond_67
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 128
    const-string v3, "persist.service.slate_mode"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Set for Charging Off (1) at property"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 131
    :cond_80
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Sub CMD is wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v3, "FAIL"

    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->sendSlateResult(Ljava/lang/String;)V

    goto :goto_66

    .line 145
    .restart local v2       #result:Ljava/lang/String;
    :cond_8d
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, " ==>   Set FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v3, "FAIL"

    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->sendSlateResult(Ljava/lang/String;)V

    goto :goto_66
.end method

.method private setDisableCharging()V
    .registers 8

    .prologue
    const/16 v6, 0x10

    .line 89
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "SetDisableCharging()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v1, "SUCCESS"

    .line 91
    .local v1, SET_SUCCESS:Ljava/lang/String;
    const-string v0, "FAIL"

    .line 94
    .local v0, SET_FAIL:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->DelayTime:I

    .line 95
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetDisableCharging() Delaytime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->DelayTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v3, "persist.service.slate_mode"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-wide/16 v3, 0x5dc

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 102
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->DelayTime:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 104
    const-string v3, "persist.service.slate_mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SLATE_SETCHARGING_RESULT  == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   mCommand ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 109
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, " ==>   Set SUCCESS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v3, "SUCCESS"

    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->sendSlateDisChargingResult(Ljava/lang/String;)V

    .line 116
    :goto_88
    return-void

    .line 112
    :cond_89
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, " ==>   Set FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v3, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    const-string v3, "FAIL"

    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->sendSlateDisChargingResult(Ljava/lang/String;)V

    goto :goto_88
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive Intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SLATE_TEST.setCharging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 63
    iget-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive SLATE_TEST_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DATA == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->setCharging()V

    .line 68
    :cond_56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SLATE_TEST.setDisableCharging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 69
    iget-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive SLATE_SETDISABLECHARGING_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DATA == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->setDisableCharging()V

    .line 74
    :cond_8e
    return-void
.end method
