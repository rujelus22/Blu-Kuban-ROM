.class public Lcom/sec/dsm/phone/DSMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DSMReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dsm/phone/DSMReceiver$1;,
        Lcom/sec/dsm/phone/DSMReceiver$MyHandler;
    }
.end annotation


# instance fields
.field callForwarding:Z

.field private mHandler:Landroid/os/Handler;

.field private mcontext:Landroid/content/Context;

.field private nm:Landroid/app/NotificationManager;

.field phone:Lcom/android/internal/telephony/Phone;

.field smsForwarding:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput-object v2, p0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/sec/dsm/phone/DSMReceiver$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/dsm/phone/DSMReceiver$MyHandler;-><init>(Lcom/sec/dsm/phone/DSMReceiver;Lcom/sec/dsm/phone/DSMReceiver$1;)V

    iput-object v0, p0, Lcom/sec/dsm/phone/DSMReceiver;->mHandler:Landroid/os/Handler;

    .line 23
    iput-boolean v1, p0, Lcom/sec/dsm/phone/DSMReceiver;->callForwarding:Z

    .line 24
    iput-boolean v1, p0, Lcom/sec/dsm/phone/DSMReceiver;->smsForwarding:Z

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/sec/dsm/phone/DSMReceiver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    .line 33
    new-instance v10, Lcom/sec/dsm/phone/DSMRepository;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/sec/dsm/phone/DSMRepository;-><init>(Landroid/content/Context;)V

    .line 34
    .local v10, dsmRep:Lcom/sec/dsm/phone/DSMRepository;
    const-string v2, "android.intent.action.dsm.DM_FORWARDING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 36
    :try_start_1b
    const-string v2, "callEnable"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 37
    .local v9, callEnable:Z
    const-string v2, "callDisable"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 38
    .local v8, callDisable:Z
    const-string v2, "callnumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, callnumber:Ljava/lang/String;
    const-string v2, "smsEnable"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 40
    .local v16, smsEnable:Z
    const-string v2, "smsDisable"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 41
    .local v15, smsDisable:Z
    const-string v2, "smsnumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 42
    .local v17, smsnumber:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/dsm/phone/Util;->Logd(Ljava/lang/String;)V

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callDisable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/dsm/phone/Util;->Logd(Ljava/lang/String;)V

    .line 44
    const-string v2, "SMSRecipient"

    move-object/from16 v0, v17

    invoke-virtual {v10, v2, v0}, Lcom/sec/dsm/phone/DSMRepository;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    if-nez v9, :cond_86

    if-eqz v8, :cond_8b

    .line 46
    :cond_86
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->callForwarding:Z

    .line 48
    :cond_8b
    if-nez v16, :cond_8f

    if-eqz v15, :cond_94

    .line 49
    :cond_8f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->smsForwarding:Z

    .line 51
    :cond_94
    const-string v2, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 53
    .local v18, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v12

    .line 54
    .local v12, imsiValue:Ljava/lang/String;
    const-string v2, "DSMIMSI"

    invoke-virtual {v10, v2, v12}, Lcom/sec/dsm/phone/DSMRepository;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 56
    const/4 v6, 0x0

    .line 57
    .local v6, time:I
    if-eqz v16, :cond_1a5

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->nm:Landroid/app/NotificationManager;

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 60
    .local v14, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    const v3, 0x7f030003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 61
    .local v20, ticker:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    const v3, 0x7f030003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 62
    .local v21, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    const v3, 0x7f030001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 63
    .local v19, text:Ljava/lang/String;
    new-instance v13, Landroid/app/Notification;

    const/high16 v2, 0x7f02

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v20

    invoke-direct {v13, v2, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 64
    .local v13, notification:Landroid/app/Notification;
    const/16 v2, 0x10

    iput v2, v13, Landroid/app/Notification;->flags:I

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v13, v2, v0, v1, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->nm:Landroid/app/NotificationManager;

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 67
    const-string v2, "SMSForwarding"

    const-string v3, "Enable"

    invoke-virtual {v10, v2, v3}, Lcom/sec/dsm/phone/DSMRepository;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "SMS Enable"

    invoke-static {v2}, Lcom/sec/dsm/phone/Util;->Logd(Ljava/lang/String;)V

    .line 74
    .end local v13           #notification:Landroid/app/Notification;
    .end local v14           #pendingIntent:Landroid/app/PendingIntent;
    .end local v19           #text:Ljava/lang/String;
    .end local v20           #ticker:Ljava/lang/String;
    .end local v21           #title:Ljava/lang/String;
    :cond_125
    :goto_125
    if-eqz v9, :cond_1bd

    .line 75
    const-string v2, "call forwrording enable"

    invoke-static {v2}, Lcom/sec/dsm/phone/Util;->Logd(Ljava/lang/String;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->nm:Landroid/app/NotificationManager;

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 78
    .restart local v14       #pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    const v3, 0x7f030002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 79
    .restart local v20       #ticker:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    const v3, 0x7f030002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 80
    .restart local v21       #title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    const v3, 0x7f030001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 81
    .restart local v19       #text:Ljava/lang/String;
    new-instance v13, Landroid/app/Notification;

    const/high16 v2, 0x7f02

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v20

    invoke-direct {v13, v2, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 82
    .restart local v13       #notification:Landroid/app/Notification;
    const/16 v2, 0x10

    iput v2, v13, Landroid/app/Notification;->flags:I

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v13, v2, v0, v1, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->nm:Landroid/app/NotificationManager;

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/dsm/phone/DSMReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 100
    .end local v5           #callnumber:Ljava/lang/String;
    .end local v6           #time:I
    .end local v8           #callDisable:Z
    .end local v9           #callEnable:Z
    .end local v12           #imsiValue:Ljava/lang/String;
    .end local v13           #notification:Landroid/app/Notification;
    .end local v14           #pendingIntent:Landroid/app/PendingIntent;
    .end local v15           #smsDisable:Z
    .end local v16           #smsEnable:Z
    .end local v17           #smsnumber:Ljava/lang/String;
    .end local v18           #telephony:Landroid/telephony/TelephonyManager;
    .end local v19           #text:Ljava/lang/String;
    .end local v20           #ticker:Ljava/lang/String;
    .end local v21           #title:Ljava/lang/String;
    :cond_1a4
    :goto_1a4
    return-void

    .line 69
    .restart local v5       #callnumber:Ljava/lang/String;
    .restart local v6       #time:I
    .restart local v8       #callDisable:Z
    .restart local v9       #callEnable:Z
    .restart local v12       #imsiValue:Ljava/lang/String;
    .restart local v15       #smsDisable:Z
    .restart local v16       #smsEnable:Z
    .restart local v17       #smsnumber:Ljava/lang/String;
    .restart local v18       #telephony:Landroid/telephony/TelephonyManager;
    :cond_1a5
    if-eqz v15, :cond_125

    .line 70
    const-string v2, "SMSForwarding"

    invoke-virtual {v10, v2}, Lcom/sec/dsm/phone/DSMRepository;->remove(Ljava/lang/String;)V

    .line 71
    const-string v2, "SMSRecipient"

    invoke-virtual {v10, v2}, Lcom/sec/dsm/phone/DSMRepository;->remove(Ljava/lang/String;)V

    .line 72
    const-string v2, "SMS Disable"

    invoke-static {v2}, Lcom/sec/dsm/phone/Util;->Logd(Ljava/lang/String;)V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b6} :catch_1b8

    goto/16 :goto_125

    .line 95
    .end local v5           #callnumber:Ljava/lang/String;
    .end local v6           #time:I
    .end local v8           #callDisable:Z
    .end local v9           #callEnable:Z
    .end local v12           #imsiValue:Ljava/lang/String;
    .end local v15           #smsDisable:Z
    .end local v16           #smsEnable:Z
    .end local v17           #smsnumber:Ljava/lang/String;
    .end local v18           #telephony:Landroid/telephony/TelephonyManager;
    :catch_1b8
    move-exception v11

    .line 96
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a4

    .line 89
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v5       #callnumber:Ljava/lang/String;
    .restart local v6       #time:I
    .restart local v8       #callDisable:Z
    .restart local v9       #callEnable:Z
    .restart local v12       #imsiValue:Ljava/lang/String;
    .restart local v15       #smsDisable:Z
    .restart local v16       #smsEnable:Z
    .restart local v17       #smsnumber:Ljava/lang/String;
    .restart local v18       #telephony:Landroid/telephony/TelephonyManager;
    :cond_1bd
    if-eqz v8, :cond_1a4

    .line 90
    :try_start_1bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dsm/phone/DSMReceiver;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/dsm/phone/DSMReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1d0} :catch_1b8

    goto :goto_1a4
.end method
