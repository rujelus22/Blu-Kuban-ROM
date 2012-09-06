.class public Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;
.super Ljava/lang/Object;
.source "AndroidVoicePreferences.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/VoicePreferences;


# static fields
.field public static final DEFAULT_UPDATE_INTERVAL_SECONDS:I = 0x384

.field private static final METHOD_GET_BACKGROUND_DATA_SETTING:Ljava/lang/String; = "getBackgroundDataSetting"


# instance fields
.field private final context:Landroid/content/Context;

.field private final preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

.field private final veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/PreferenceStore;Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;)V
    .registers 4
    .parameter "context"
    .parameter "preferenceStore"
    .parameter "veryPersistentPreferences"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    .line 44
    return-void
.end method

.method private static modeStringToValue(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    .registers 4
    .parameter "modeString"

    .prologue
    .line 192
    :try_start_0
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_e

    move-result-object v1

    .line 199
    :goto_4
    return-object v1

    .line 194
    :catch_5
    move-exception v0

    .line 195
    .local v0, exception:Ljava/lang/IllegalArgumentException;
    const-string v2, "VoicePreferences.modeStringToValue"

    invoke-static {v2, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    goto :goto_4

    .line 197
    .end local v0           #exception:Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v0

    .line 198
    .local v0, exception:Ljava/lang/NullPointerException;
    const-string v2, "VoicePreferences.modeStringToValue"

    invoke-static {v2, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    goto :goto_4
.end method

.method private setCallInterceptorEnabled(Z)V
    .registers 9
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    .line 266
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 267
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    const-class v6, Lcom/google/android/apps/googlevoice/CallInterceptor;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v1, interceptorComponentName:Landroid/content/ComponentName;
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_2a

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call interceptor component name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 271
    :cond_2a
    if-eqz p1, :cond_51

    move v2, v4

    .line 273
    .local v2, interceptorState:I
    :goto_2d
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 274
    .local v0, currentState:I
    if-eq v0, v2, :cond_53

    .line 275
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_4d

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting state to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 278
    :cond_4d
    invoke-virtual {v3, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 285
    :cond_50
    :goto_50
    return-void

    .line 271
    .end local v0           #currentState:I
    .end local v2           #interceptorState:I
    :cond_51
    const/4 v2, 0x2

    goto :goto_2d

    .line 281
    .restart local v0       #currentState:I
    .restart local v2       #interceptorState:I
    :cond_53
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_50

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leaving state as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_50
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 574
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->setAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    .line 575
    sget-object v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 577
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/PreferenceStore;->clear()V

    .line 578
    return-void
.end method

.method public clearAccessNumber()V
    .registers 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->access_number_key:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->clearPreference(I)V

    .line 618
    return-void
.end method

.method public clearDoNotCallNumber()V
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->setDoNotCallNumber(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public clearFirstRunCompleted()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->first_run_completed_key:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->clearPreference(I)V

    .line 56
    return-void
.end method

.method public clearUpdateInterval()V
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->update_interval_key:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->clearPreference(I)V

    .line 324
    return-void
.end method

.method public didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    .registers 5

    .prologue
    .line 466
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->did_complete_app_setup_key:I

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->valueOf(I)Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    .line 468
    .local v0, didCompleteAppSetup:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    if-eqz v0, :cond_10

    .end local v0           #didCompleteAppSetup:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :goto_f
    return-object v0

    .restart local v0       #didCompleteAppSetup:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :cond_10
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    goto :goto_f
.end method

.method public didCompleteVoicemailSetup()Z
    .registers 4

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->did_complete_voicemail_setup_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public didConfigurePushNotifications()Z
    .registers 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->did_configure_push_notifications_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public disableCallInterceptor()V
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->setCallInterceptorEnabled(Z)V

    .line 260
    return-void
.end method

.method public ensureInterceptorStateForAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V
    .registers 11
    .parameter "accountType"

    .prologue
    const/4 v6, 0x1

    .line 512
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 513
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    const-class v8, Lcom/google/android/apps/googlevoice/OutgoingSmsActivity;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v1, interceptorComponentName:Landroid/content/ComponentName;
    sget-object v7, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne p1, v7, :cond_84

    move v2, v6

    .line 518
    .local v2, interceptorState:I
    :goto_15
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 519
    .local v0, currentState:I
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_33

    .line 520
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sms interceptor component name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 522
    :cond_33
    if-eq v0, v2, :cond_86

    .line 523
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_4f

    .line 524
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting state to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 526
    :cond_4f
    invoke-virtual {v3, v1, v2, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 536
    :cond_52
    :goto_52
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    const-class v8, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    .local v4, smsAutoSendComponentName:Landroid/content/ComponentName;
    sget-object v7, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne p1, v7, :cond_a1

    .line 539
    const/4 v5, 0x1

    .line 544
    .local v5, smsAutoSendState:I
    :goto_60
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-eq v7, v5, :cond_83

    .line 545
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 547
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_83

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changing state of SmsAutoSendActivity to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 551
    :cond_83
    return-void

    .line 514
    .end local v0           #currentState:I
    .end local v2           #interceptorState:I
    .end local v4           #smsAutoSendComponentName:Landroid/content/ComponentName;
    .end local v5           #smsAutoSendState:I
    :cond_84
    const/4 v2, 0x2

    goto :goto_15

    .line 529
    .restart local v0       #currentState:I
    .restart local v2       #interceptorState:I
    :cond_86
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_52

    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "leaving state as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_52

    .line 541
    .restart local v4       #smsAutoSendComponentName:Landroid/content/ComponentName;
    :cond_a1
    const/4 v5, 0x2

    .restart local v5       #smsAutoSendState:I
    goto :goto_60
.end method

.method public ensureInterceptorStateForMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 251
    if-eqz p1, :cond_b

    sget-object v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-eq p1, v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->setCallInterceptorEnabled(Z)V

    .line 252
    return-void

    .line 251
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getAccessNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->access_number_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .registers 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->account_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountBalance()I
    .registers 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->account_balance_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getInt(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    .registers 5

    .prologue
    .line 483
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->account_type_key:I

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->valueOf(I)Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    move-result-object v0

    .line 485
    .local v0, accountType:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    if-eqz v0, :cond_12

    .end local v0           #accountType:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :goto_10
    monitor-exit p0

    return-object v0

    .restart local v0       #accountType:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :cond_12
    :try_start_12
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_15

    goto :goto_10

    .line 483
    .end local v0           #accountType:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAuthToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->auth_token_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableAccountBalance()Ljava/lang/String;
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->displayable_account_balance_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoNotCallNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->do_not_call_number_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstRunCompleted()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->first_run_completed_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getFormattedForwardingNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->formatted_forwarding_number_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->forwarding_number_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInboxNotificationRoutingInfo()Ljava/lang/String;
    .registers 4

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->inbox_notification_routing_info_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInboxNotificationTimestamp()J
    .registers 5

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->inbox_notification_registration_key:I

    const-wide/high16 v2, -0x8000

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->call_routing_key:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, modeString:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->modeStringToValue(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v1

    :cond_f
    return-object v1
.end method

.method public getModeString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v0

    .line 218
    .local v0, mode:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$array;->mode_preference_entries:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 219
    .local v1, strings:[Ljava/lang/CharSequence;
    if-nez v0, :cond_1f

    .line 220
    sget-object v2, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ordinal()I

    move-result v2

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    :goto_1e
    return-object v2

    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ordinal()I

    move-result v2

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method public getNotificationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notification_id_key:I

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationLight()Z
    .registers 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notification_light_key:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getNotificationRingtoneUri()Landroid/net/Uri;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->notification_ringtone_key:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, ringtoneString:Ljava/lang/String;
    if-nez v0, :cond_c

    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_b
.end method

.method public getNotificationUpdateCompleted()Z
    .registers 4

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notification_update_completed_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getNotificationVibrate()Z
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notification_vibrate_key:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getShadowNumberRefreshTimestamp()J
    .registers 5

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->shadow_number_refresh_timestamp_key:I

    const-wide/high16 v2, -0x8000

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShouldUpdateInBackground()Z
    .registers 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->mayUseDataInBackground()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->getUpdateIntervalSeconds()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getSubscriberNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->subscriber_number_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateIntervalSeconds()I
    .registers 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->update_interval_key:I

    const/16 v2, 0x384

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getUpdateIntervalString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 308
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/apps/googlevoice/R$array;->update_interval_preference_entries:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, entries:[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/apps/googlevoice/R$array;->update_interval_preference_values:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->getUpdateIntervalSeconds()I

    move-result v2

    .line 313
    .local v2, seconds:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    array-length v4, v3

    if-ge v1, v4, :cond_2e

    .line 314
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_2b

    .line 315
    aget-object v4, v0, v1

    .line 318
    :goto_2a
    return-object v4

    .line 313
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 318
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method public getUsingLoginService()Z
    .registers 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->using_login_service_key:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getVoicemailDiversionCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_diversion_code_key:I

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoicemailDiversionNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_diversion_number_key:I

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoicemailDiversionType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    .registers 5

    .prologue
    .line 446
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->voicemail_diversion_type_key:I

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    move-result-object v0

    .line 449
    .local v0, voicemailDiversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    if-eqz v0, :cond_10

    .end local v0           #voicemailDiversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    :goto_f
    return-object v0

    .restart local v0       #voicemailDiversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    :cond_10
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    goto :goto_f
.end method

.method public getVoicemailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_number_key:I

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoicemailPlaybackViaSpeaker()Z
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_playback_via_speaker_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getVvmEnabled()Z
    .registers 4

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->vvm_preference_key:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isFullSubscriber()Z
    .registers 3

    .prologue
    .line 490
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRegisteredForInboxNotifications()Z
    .registers 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->inbox_notification_registration_key:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->contains(I)Z

    move-result v0

    return v0
.end method

.method public mayUseDataInBackground()Z
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 334
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    :try_start_c
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_21

    .line 335
    const-string v7, "Checking for presence of \'%s\' method"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "getBackgroundDataSetting"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 338
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getBackgroundDataSetting"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 340
    .local v3, method:Ljava/lang/reflect/Method;
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_43

    .line 341
    const-string v7, "\'%s\' method exist, calling to check the value"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "getBackgroundDataSetting"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 344
    :cond_43
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 345
    .local v4, result:Ljava/lang/Boolean;
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_64

    .line 346
    const-string v7, "\'%s()\' returned %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "getBackgroundDataSetting"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 348
    :cond_64
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_67
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_67} :catch_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_67} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_67} :catch_7c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_67} :catch_83

    move-result v5

    .line 361
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #result:Ljava/lang/Boolean;
    :goto_68
    return v5

    .line 349
    :catch_69
    move-exception v2

    .line 350
    .local v2, es:Ljava/lang/NoSuchMethodException;
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_73

    .line 351
    const-string v5, "\'getBackgroundDataSetting\' method not found, returning \'true\'"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    :cond_73
    move v5, v6

    .line 353
    goto :goto_68

    .line 354
    .end local v2           #es:Ljava/lang/NoSuchMethodException;
    :catch_75
    move-exception v1

    .line 355
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "Should never happen!"

    invoke-static {v6, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68

    .line 356
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_7c
    move-exception v1

    .line 357
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v6, "Should never happen!"

    invoke-static {v6, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68

    .line 358
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_83
    move-exception v1

    .line 359
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "Should never happen!"

    invoke-static {v6, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68
.end method

.method public notifyWhenNewTextMessage()Z
    .registers 4

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notify_when_new_text_message_key:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public notifyWhenNewVoicemail()Z
    .registers 4

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notify_when_new_voicemail_key:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public removeInboxNotificationRegistrationTimestamp()V
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->inbox_notification_registration_key:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->clearPreference(I)V

    .line 588
    return-void
.end method

.method public removeInboxNotificationRoutingInfo()V
    .registers 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->inbox_notification_routing_info_key:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->clearPreference(I)V

    .line 603
    return-void
.end method

.method public removeShadowNumberRefreshTimestamp()V
    .registers 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->shadow_number_refresh_timestamp_key:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->clearPreference(I)V

    .line 638
    return-void
.end method

.method public setAccessNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "accessNumber"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->access_number_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 628
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->account_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 380
    return-void
.end method

.method public setAccountBalance(I)V
    .registers 4
    .parameter "accountBalance"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->account_balance_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setInt(II)V

    .line 169
    return-void
.end method

.method public declared-synchronized setAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V
    .registers 5
    .parameter "accountType"

    .prologue
    .line 495
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    if-eq p1, v0, :cond_2f

    .line 496
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_21

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saving account type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 499
    :cond_21
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->ensureInterceptorStateForAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->account_type_key:I

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setInt(II)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 502
    :cond_2f
    monitor-exit p0

    return-void

    .line 495
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .registers 4
    .parameter "authToken"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->auth_token_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 390
    return-void
.end method

.method public setDidCompleteAppSetup(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V
    .registers 5
    .parameter "type"

    .prologue
    .line 473
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-eq p1, v0, :cond_a

    .line 476
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;->setEverSignedIn(Z)V

    .line 478
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->did_complete_app_setup_key:I

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setInt(II)V

    .line 479
    return-void
.end method

.method public setDidCompleteVoicemailSetup(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->did_complete_voicemail_setup_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setBoolean(IZ)V

    .line 462
    return-void
.end method

.method public setDidConfigurePushNotifications(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->did_configure_push_notifications_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setBoolean(IZ)V

    .line 565
    return-void
.end method

.method public setDisplayableAccountBalance(Ljava/lang/String;)V
    .registers 4
    .parameter "balance"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->displayable_account_balance_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 179
    return-void
.end method

.method public setDoNotCallNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "doNotCallNumber"

    .prologue
    .line 111
    if-nez p1, :cond_a

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->do_not_call_number_key:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->clearPreference(I)V

    .line 116
    :goto_9
    return-void

    .line 114
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->do_not_call_number_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public setForwardingNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "forwardingNumber"
    .parameter "formattedForwardingNumber"

    .prologue
    .line 74
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->forwarding_number_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->formatted_forwarding_number_key:I

    invoke-interface {v0, v1, p2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public setInboxNotificationRegistrationTimestamp(J)V
    .registers 5
    .parameter "timestamp"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->inbox_notification_registration_key:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setLong(IJ)V

    .line 593
    return-void
.end method

.method public setInboxNotificationRoutingInfo(Ljava/lang/String;)V
    .registers 4
    .parameter "routingInfo"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->inbox_notification_routing_info_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 613
    return-void
.end method

.method public setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V
    .registers 7
    .parameter "mode"

    .prologue
    .line 231
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_25

    .line 232
    const-string v1, "Setting mode to \'%s\' by storing \'%s\' at key \'%s\'"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x1

    if-nez p1, :cond_32

    const-string v0, "null"

    :goto_11
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->context:Landroid/content/Context;

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->call_routing_key:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 237
    :cond_25
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->ensureInterceptorStateForMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 239
    if-nez p1, :cond_37

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->call_routing_key:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->clearPreference(I)V

    .line 244
    :goto_31
    return-void

    .line 232
    :cond_32
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 242
    :cond_37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->call_routing_key:I

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    goto :goto_31
.end method

.method public setNotificatinoUpdateCompleted(Z)V
    .registers 4
    .parameter "isCompleted"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notification_update_completed_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setBoolean(IZ)V

    .line 668
    return-void
.end method

.method public setNotificationId(Ljava/lang/String;)V
    .registers 4
    .parameter "notificationId"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notification_id_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 673
    return-void
.end method

.method public setNotifyWhenNewTextMessage(Z)V
    .registers 4
    .parameter "notifyWhenNewTextMessage"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notify_when_new_text_message_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setBoolean(IZ)V

    .line 663
    return-void
.end method

.method public setNotifyWhenNewVoicemail(Z)V
    .registers 4
    .parameter "notifyWhenNewVoicemail"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->notify_when_new_voicemail_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setBoolean(IZ)V

    .line 653
    return-void
.end method

.method public setShadowNumberRefreshTimestamp(J)V
    .registers 5
    .parameter "timestamp"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->shadow_number_refresh_timestamp_key:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setLong(IJ)V

    .line 643
    return-void
.end method

.method public setSubscriberNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "subscriberNumber"

    .prologue
    .line 90
    if-nez p1, :cond_a

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->subscriber_number_key:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->clearPreference(I)V

    .line 95
    :goto_9
    return-void

    .line 93
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->subscriber_number_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public setUpdateIntervalSeconds(I)V
    .registers 4
    .parameter "updateIntervalSeconds"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->update_interval_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setInt(II)V

    .line 301
    return-void
.end method

.method public setUsingLoginService(Z)V
    .registers 4
    .parameter "usingLoginService"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->using_login_service_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setBoolean(IZ)V

    .line 400
    return-void
.end method

.method public setVoicemailDiversionCode(Ljava/lang/String;)V
    .registers 4
    .parameter "diversionCode"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_diversion_code_key:I

    if-nez p1, :cond_8

    const-string p1, ""

    .end local p1
    :cond_8
    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 431
    return-void
.end method

.method public setVoicemailDiversionNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "voicemailDiversionNumber"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_diversion_number_key:I

    if-nez p1, :cond_8

    const-string p1, ""

    .end local p1
    :cond_8
    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 425
    return-void
.end method

.method public setVoicemailDiversionType(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;)V
    .registers 5
    .parameter "diversionType"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_diversion_type_key:I

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->getNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setInt(II)V

    .line 442
    return-void
.end method

.method public setVoicemailNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "voicemailNumber"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_number_key:I

    if-nez p1, :cond_8

    const-string p1, ""

    .end local p1
    :cond_8
    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setString(ILjava/lang/String;)V

    .line 414
    return-void
.end method

.method public setVoicemailPlaybackViaSpeaker(Z)V
    .registers 4
    .parameter "voicemailSpeaker"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_playback_via_speaker_key:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/PreferenceStore;->setBoolean(IZ)V

    .line 135
    return-void
.end method
