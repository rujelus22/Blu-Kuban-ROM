.class public Lcom/sec/dsm/system/DSMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DSMReceiver.java"


# instance fields
.field private interval:Ljava/lang/String;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mcontext:Landroid/content/Context;

.field private nm:Landroid/app/NotificationManager;

.field private starttime:Ljava/lang/String;

.field private stoptime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->starttime:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->stoptime:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->interval:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 25
    iput-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 29
    iput-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    return-void
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .registers 8
    .parameter "intent"

    .prologue
    .line 316
    const-string v6, "Recive SMS message"

    invoke-static {v6}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 317
    const-string v6, "pdus"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    .line 318
    .local v1, messages:[Ljava/lang/Object;
    array-length v6, v1

    new-array v4, v6, [[B

    .line 319
    .local v4, pduObjs:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v6, v1

    if-ge v0, v6, :cond_22

    .line 320
    aget-object v6, v1, v0

    check-cast v6, [B

    check-cast v6, [B

    aput-object v6, v4, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 322
    :cond_22
    array-length v6, v4

    new-array v5, v6, [[B

    .line 323
    .local v5, pdus:[[B
    array-length v3, v5

    .line 324
    .local v3, pduCount:I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 325
    .local v2, msgs:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    :goto_29
    if-ge v0, v3, :cond_3a

    .line 326
    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 327
    aget-object v6, v5, v0

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v2, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 329
    :cond_3a
    return-object v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 56
    iput-object p1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    .line 57
    new-instance v1, Lcom/sec/dsm/system/DSMRepository;

    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/sec/dsm/system/DSMRepository;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 60
    :try_start_18
    new-instance v1, Lcom/sec/dsm/system/DSMManager;

    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 63
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->containsSMSForwarding()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 65
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->getDSMIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 66
    const-string v0, "Restart SMS forwarding service "

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 78
    :cond_40
    :goto_40
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->containsDSMRing()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 79
    const-string v0, "Restart ring service"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-class v3, Lcom/sec/dsm/system/DSMRingMyMobile;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    :cond_5e
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->containsDSMTracking()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 85
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-class v3, Lcom/sec/dsm/system/DSMTrackingService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->getDSMStartTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->starttime:Ljava/lang/String;

    .line 87
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->getDSMStopTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->stoptime:Ljava/lang/String;

    .line 88
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->getDSMInterval()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->interval:Ljava/lang/String;

    .line 89
    const-string v2, "starttime"

    iget-object v3, p0, Lcom/sec/dsm/system/DSMReceiver;->starttime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v2, "stoptime"

    iget-object v3, p0, Lcom/sec/dsm/system/DSMReceiver;->stoptime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v2, "interval"

    iget-object v3, p0, Lcom/sec/dsm/system/DSMReceiver;->interval:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v2, "Restart Tracking service"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    :cond_9e
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->containsDSMWipeOut()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 96
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->getDSMWipeOut()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 97
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-class v3, Lcom/sec/dsm/system/DSMWipeOutService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v0, "Restart wipeout service"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_c4
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_18 .. :try_end_c4} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_c4} :catch_f1

    .line 109
    :goto_c4
    const-string v0, "Boot completed"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 313
    :cond_c9
    :goto_c9
    return-void

    .line 68
    :cond_ca
    :try_start_ca
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->getDSMIMSI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "111111111111111"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 69
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->removeSMSForwarding()V

    .line 75
    :goto_d9
    const-string v0, "Stat of SIM change,SMS forwarding service stop"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V
    :try_end_de
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_ca .. :try_end_de} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_de} :catch_f1

    goto/16 :goto_40

    .line 104
    :catch_e0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_c4

    .line 71
    :cond_e5
    :try_start_e5
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->removeSMSForwarding()V

    .line 72
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->removeDSMIMSI()V

    .line 73
    const-string v0, "111111111111111"

    invoke-virtual {v1, v0}, Lcom/sec/dsm/system/DSMManager;->putDSMIMSI(Ljava/lang/String;)V
    :try_end_f0
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_e5 .. :try_end_f0} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_f0} :catch_f1

    goto :goto_d9

    .line 106
    :catch_f1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c4

    .line 102
    :cond_f6
    :try_start_f6
    const-string v0, "Normal booted"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V
    :try_end_fb
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_f6 .. :try_end_fb} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_fb} :catch_f1

    goto :goto_c4

    .line 110
    :cond_fc
    const-string v0, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 111
    const-string v0, "Samsung Account is removed"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 113
    :try_start_10d
    new-instance v0, Lcom/sec/dsm/system/DSMManager;

    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMManager;->removeInitialization()V
    :try_end_117
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_10d .. :try_end_117} :catch_11d
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_117} :catch_122

    .line 120
    :goto_117
    const-string v0, "Initialization of index "

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_c9

    .line 115
    :catch_11d
    move-exception v0

    .line 116
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_117

    .line 117
    :catch_122
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_117

    .line 121
    :cond_127
    const-string v0, "android.intent.action.REMOTE_CONTROL_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 122
    const-string v0, "Remote control is off mode"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 124
    :try_start_138
    new-instance v0, Lcom/sec/dsm/system/DSMManager;

    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMManager;->containsDSMTracking()Z

    move-result v1

    if-eqz v1, :cond_158

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.dsm.DM_MOBILE_TRACKING_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_151
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_138 .. :try_end_151} :catch_167
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_151} :catch_16c

    .line 137
    :cond_151
    :goto_151
    const-string v0, "service stop"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 128
    :cond_158
    :try_start_158
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMManager;->containsSMSForwarding()Z

    move-result v1

    if-eqz v1, :cond_151

    .line 129
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMManager;->removeSMSForwarding()V

    .line 130
    const-string v0, "Stop SMS forwarding"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V
    :try_end_166
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_158 .. :try_end_166} :catch_167
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_166} :catch_16c

    goto :goto_151

    .line 132
    :catch_167
    move-exception v0

    .line 133
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_151

    .line 134
    :catch_16c
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_151

    .line 138
    :cond_171
    const-string v0, "android.intent.action.dsm.DM_LOCK_MY_PHONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    .line 139
    const-string v0, "password"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v3, "number"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    iget-object v4, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_password"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lock_pcw_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_Message"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_phone"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    const-string v0, "Start Lock My Phone service"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 151
    :cond_1d9
    const-string v0, "android.intent.action.dsm.DM_RING_MY_PHONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_221

    .line 153
    :try_start_1e5
    new-instance v0, Lcom/sec/dsm/system/DSMManager;

    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMManager;->containsDSMRing()Z

    move-result v1

    if-eqz v1, :cond_1fe

    .line 155
    const-string v0, "Already ring service running"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V
    :try_end_1f7
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_1e5 .. :try_end_1f7} :catch_217
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1f7} :catch_21c

    .line 168
    :goto_1f7
    const-string v0, "Start Ring service"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 157
    :cond_1fe
    :try_start_1fe
    const-string v1, "Ring"

    invoke-virtual {v0, v1}, Lcom/sec/dsm/system/DSMManager;->putDSMRing(Ljava/lang/String;)V

    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-class v2, Lcom/sec/dsm/system/DSMRingMyMobile;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_216
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_1fe .. :try_end_216} :catch_217
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_216} :catch_21c

    goto :goto_1f7

    .line 163
    :catch_217
    move-exception v0

    .line 164
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_1f7

    .line 165
    :catch_21c
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f7

    .line 170
    :cond_221
    const-string v0, "android.intent.action.dsm.DM_WIPE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_259

    .line 172
    :try_start_22d
    const-string v0, "status"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 173
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-class v3, Lcom/sec/dsm/system/DSMWipeOutService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v0, "Start remote Wipe out service"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_24d} :catch_254

    .line 180
    :goto_24d
    const-string v0, "Wipe out sended "

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 177
    :catch_254
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24d

    .line 181
    :cond_259
    const-string v0, "android.intent.action.SAMSUNG_ACCOUNT_SIGNOUT_FAILED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_271

    const-string v0, "android.intent.action.SAMSUNG_ACCOUNT_SIGNOUT_SUCCESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_292

    .line 184
    :cond_271
    const/16 v0, 0x28

    .line 185
    :try_start_273
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-class v3, Lcom/sec/dsm/system/DSMWipeOutService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_286} :catch_28d

    .line 191
    :goto_286
    const-string v0, "Receive result of sign out "

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 188
    :catch_28d
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_286

    .line 193
    :cond_292
    const-string v0, "android.intent.action.dsm.DM_FACTORY_RESET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    .line 195
    :try_start_29e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DM_FACTORY_DATA_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2af
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2af} :catch_2b6

    .line 201
    :goto_2af
    const-string v0, "Start Factory reset service"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 198
    :catch_2b6
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2af

    .line 202
    :cond_2bb
    const-string v0, "android.intent.action.dsm.DM_MOBILE_TRACKING_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37f

    .line 204
    :try_start_2c7
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->nm:Landroid/app/NotificationManager;

    .line 205
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    iget-object v3, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020009

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 210
    const/4 v1, 0x2

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 211
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 212
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->nm:Landroid/app/NotificationManager;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 213
    const-string v0, "starttime"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->starttime:Ljava/lang/String;

    .line 214
    const-string v0, "stoptime"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->stoptime:Ljava/lang/String;

    .line 215
    const-string v0, "interval"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->interval:Ljava/lang/String;

    .line 216
    new-instance v0, Lcom/sec/dsm/system/DSMManager;

    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 217
    const-string v1, "Tracking"

    invoke-virtual {v0, v1}, Lcom/sec/dsm/system/DSMManager;->putDSMTracking(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->starttime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/dsm/system/DSMManager;->putDSMStartTime(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->stoptime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/dsm/system/DSMManager;->putDSMStopTime(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->interval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/dsm/system/DSMManager;->putDSMInterval(Ljava/lang/String;)V

    .line 221
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-class v2, Lcom/sec/dsm/system/DSMTrackingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    const-string v1, "starttime"

    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->starttime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "stoptime"

    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->stoptime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "interval"

    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->interval:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_36e
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_2c7 .. :try_end_36e} :catch_375
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_36e} :catch_37a

    .line 231
    :goto_36e
    const-string v0, "Start tracking service"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 226
    :catch_375
    move-exception v0

    .line 227
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_36e

    .line 228
    :catch_37a
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36e

    .line 233
    :cond_37f
    const-string v0, "android.intent.action.dsm.DM_MOBILE_TRACKING_STOP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_406

    .line 235
    :try_start_38b
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->nm:Landroid/app/NotificationManager;

    .line 236
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    iget-object v3, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020009

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 241
    const/16 v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 242
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 243
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->nm:Landroid/app/NotificationManager;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 244
    new-instance v0, Lcom/sec/dsm/system/DSMManager;

    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMManager;->removeDSMTracking()V

    .line 246
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-class v2, Lcom/sec/dsm/system/DSMTrackingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3f5
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_38b .. :try_end_3f5} :catch_3fc
    .catch Ljava/lang/Exception; {:try_start_38b .. :try_end_3f5} :catch_401

    .line 254
    :goto_3f5
    const-string v0, "Stop tracking service"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 248
    :catch_3fc
    move-exception v0

    .line 249
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_3f5

    .line 250
    :catch_401
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f5

    .line 255
    :cond_406
    const-string v0, "android.intent.action.dsm.DM_LOCK_RELEASE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4cb

    .line 256
    const-string v0, "Start unlock service"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 258
    :try_start_417
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->nm:Landroid/app/NotificationManager;

    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    iget-object v3, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 265
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f02000a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 266
    const/16 v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 267
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 268
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->nm:Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 269
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 270
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 271
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPcwLockEnabled()Z

    move-result v0

    if-nez v0, :cond_4c4

    .line 272
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 273
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 274
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 275
    iget-object v0, p0, Lcom/sec/dsm/system/DSMReceiver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/sec/dsm/system/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4bc
    .catch Ljava/lang/Exception; {:try_start_417 .. :try_end_4bc} :catch_4be

    goto/16 :goto_c9

    .line 284
    :catch_4be
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c9

    .line 282
    :cond_4c4
    :try_start_4c4
    const-string v0, "PCW Locking"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V
    :try_end_4c9
    .catch Ljava/lang/Exception; {:try_start_4c4 .. :try_end_4c9} :catch_4be

    goto/16 :goto_c9

    .line 287
    :cond_4cb
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 288
    const-string v0, "Start to SMS forwarding service"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 289
    const-string v0, "SMSForwarding"

    invoke-virtual {v1, v0}, Lcom/sec/dsm/system/DSMRepository;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54f

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    invoke-static {p2}, Lcom/sec/dsm/system/DSMReceiver;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 294
    aget-object v4, v0, v6

    .line 295
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 296
    const-string v5, "SMSRecipient"

    invoke-virtual {v1, v5}, Lcom/sec/dsm/system/DSMRepository;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 299
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 305
    const/16 v7, 0xff

    move-object v4, v2

    move-object v5, v2

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V

    .line 307
    const-string v0, "SMS forwarding enable"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 309
    :cond_54f
    const-string v0, "SMS forwarding Disable"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto/16 :goto_c9
.end method
