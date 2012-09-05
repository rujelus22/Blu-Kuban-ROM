.class public Lcom/android/settings/mt/StatusChecker;
.super Landroid/content/BroadcastReceiver;
.source "StatusChecker.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMtPrefs:Landroid/content/SharedPreferences;

.field private mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private trySendSMS()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 89
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mContext:Landroid/content/Context;

    const-string v5, "MT_shared_fref"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefs:Landroid/content/SharedPreferences;

    .line 90
    const-string v4, "StatusChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trySendSMS, in service : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefs:Landroid/content/SharedPreferences;

    const-string v7, "MT_IN_SERVICE_STATE"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , SMS send : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefs:Landroid/content/SharedPreferences;

    const-string v7, "MT_SMS_SEND"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , SMSC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefs:Landroid/content/SharedPreferences;

    const-string v7, "MT_GET_SMSC"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefs:Landroid/content/SharedPreferences;

    const-string v5, "MT_IN_SERVICE_STATE"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c4

    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefs:Landroid/content/SharedPreferences;

    const-string v5, "MT_SMS_SEND"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c4

    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefs:Landroid/content/SharedPreferences;

    const-string v5, "MT_GET_SMSC"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 93
    new-instance v1, Lcom/android/internal/util/NVStore;

    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 94
    .local v1, mts:Lcom/android/internal/util/NVStore;
    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, imsiValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/mt/StatusChecker;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 96
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, sId_current:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    .line 98
    const-string v4, "StatusChecker"

    const-string v5, "try send SMS for mobile tracker"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.mt.MobileTracker"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 101
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "MT_SMS_SEND"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "MT_GET_SMSC"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    .end local v0           #imsiValue:Ljava/lang/String;
    .end local v1           #mts:Lcom/android/internal/util/NVStore;
    .end local v2           #sId_current:Ljava/lang/String;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_c4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 41
    const-string v6, "StatusChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p1, p0, Lcom/android/settings/mt/StatusChecker;->mContext:Landroid/content/Context;

    .line 44
    iget-object v6, p0, Lcom/android/settings/mt/StatusChecker;->mContext:Landroid/content/Context;

    const-string v7, "MT_shared_fref"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefs:Landroid/content/SharedPreferences;

    .line 45
    iget-object v6, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 50
    new-instance v1, Lcom/android/internal/util/NVStore;

    invoke-direct {v1, p1}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, mts:Lcom/android/internal/util/NVStore;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "change_alert"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_64

    .line 55
    const/4 v3, 0x0

    .line 59
    .local v3, status:Z
    :goto_50
    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, imsiValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "MT_SMS_SEND"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    invoke-direct {p0}, Lcom/android/settings/mt/StatusChecker;->trySendSMS()V

    .line 85
    .end local v0           #imsiValue:Ljava/lang/String;
    .end local v1           #mts:Lcom/android/internal/util/NVStore;
    .end local v3           #status:Z
    :cond_63
    :goto_63
    return-void

    .line 57
    .restart local v1       #mts:Lcom/android/internal/util/NVStore;
    :cond_64
    const/4 v3, 0x1

    .restart local v3       #status:Z
    goto :goto_50

    .line 66
    .end local v1           #mts:Lcom/android/internal/util/NVStore;
    .end local v3           #status:Z
    :cond_66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.provider.Telephony.GET_SMSC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 67
    iget-object v5, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "MT_GET_SMSC"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    invoke-direct {p0}, Lcom/android/settings/mt/StatusChecker;->trySendSMS()V

    goto :goto_63

    .line 73
    :cond_82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 76
    .local v2, serviceState:Landroid/telephony/ServiceState;
    const-string v6, "StatusChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service state changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-eqz v6, :cond_bf

    .line 78
    iget-object v6, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "MT_GET_SMSC"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    :cond_bf
    iget-object v6, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "MT_IN_SERVICE_STATE"

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_d5

    :goto_c9
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    iget-object v4, p0, Lcom/android/settings/mt/StatusChecker;->mMtPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    invoke-direct {p0}, Lcom/android/settings/mt/StatusChecker;->trySendSMS()V

    goto :goto_63

    :cond_d5
    move v4, v5

    .line 81
    goto :goto_c9
.end method
