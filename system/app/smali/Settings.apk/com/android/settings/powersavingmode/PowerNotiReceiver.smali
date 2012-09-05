.class public Lcom/android/settings/powersavingmode/PowerNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotiReceiver.java"


# static fields
.field private static is_siop_cpu:Z

.field private static is_siop_uirendering:Z

.field private static mCharging:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mNotificationMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    .line 70
    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    .line 71
    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private adjustBrightness()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const-wide v7, 0x406fe00000000000L

    const-wide/high16 v5, 0x4059

    .line 331
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_brightness"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_50

    .line 332
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_brightness_level"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 335
    .local v0, brightness:I
    const/16 v2, 0x64

    if-ne v0, v2, :cond_51

    .line 336
    int-to-double v2, v0

    div-double/2addr v2, v5

    mul-double/2addr v2, v7

    double-to-int v1, v2

    .line 340
    .local v1, set_brightness:I
    :goto_25
    const-string v2, "PowerNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSM_brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "set_brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0, v9, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doAdjustBrightness(II)V

    .line 343
    .end local v0           #brightness:I
    .end local v1           #set_brightness:I
    :cond_50
    return-void

    .line 338
    .restart local v0       #brightness:I
    :cond_51
    int-to-double v2, v0

    div-double/2addr v2, v5

    mul-double/2addr v2, v7

    const-wide/high16 v4, 0x4024

    add-double/2addr v2, v4

    double-to-int v1, v2

    .restart local v1       #set_brightness:I
    goto :goto_25
.end method

.method private adjustScreentimeout()V
    .registers 5

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_screen_timeout"

    const/16 v3, 0x3a98

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 367
    .local v0, timeout:I
    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doAdjustScreentimeout(I)V

    .line 368
    return-void
.end method

.method private clearNotification()V
    .registers 4

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 227
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 228
    return-void
.end method

.method private clearSystemNotification()V
    .registers 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 171
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 173
    return-void
.end method

.method private doAdjustBrightness(II)V
    .registers 9
    .parameter "brightnessAutoMode"
    .parameter "brightnessValue"

    .prologue
    .line 346
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 350
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1a

    .line 352
    :try_start_17
    invoke-interface {v2, p2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_32

    .line 357
    :cond_1a
    :goto_1a
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.BRIGHTNESS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    return-void

    .line 353
    .end local v1           #intent:Landroid/content/Intent;
    :catch_32
    move-exception v0

    .line 354
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private doAdjustScreentimeout(I)V
    .registers 5
    .parameter "screentimeout"

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 377
    return-void
.end method

.method private doPowerSaveAction(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopWifi()V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopBluetooth()V

    .line 233
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopGps(Landroid/content/Context;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopSync(Landroid/content/Context;)V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->adjustBrightness()V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->adjustScreentimeout()V

    .line 237
    return-void
.end method

.method private showNotification(I)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 176
    iput p1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mNotificationMode:I

    .line 177
    const-string v0, "PowerNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotificationMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mNotificationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 182
    const v3, 0x7f02005f

    .line 183
    const-string v2, ""

    .line 184
    const-string v1, ""

    .line 195
    const/16 v4, 0x96

    if-ne p1, v4, :cond_36

    .line 198
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->clearNotification()V

    .line 222
    :goto_35
    return-void

    .line 200
    :cond_36
    const/16 v4, 0x97

    if-ne p1, v4, :cond_3e

    .line 203
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->clearNotification()V

    goto :goto_35

    .line 205
    :cond_3e
    const/16 v4, 0x98

    if-ne p1, v4, :cond_5c

    .line 206
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b075b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b075f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_5c
    new-instance v4, Landroid/app/Notification;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v3, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 211
    iget v2, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v4, Landroid/app/Notification;->flags:I

    .line 213
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0749

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/Settings$MenuPowerSavingModeSettingsActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 218
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_35
.end method

.method private showSystemNotification()V
    .registers 10

    .prologue
    const v8, 0x7f0b0741

    const/4 v7, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 149
    const v1, 0x7f02005f

    .line 150
    const-string v2, ""

    .line 151
    const-string v2, ""

    .line 152
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0743

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 154
    new-instance v4, Landroid/app/Notification;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 155
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 157
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/Settings$MenuPowerSavingModeSettingsActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 162
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 164
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 166
    return-void
.end method

.method private stopBluetooth()V
    .registers 5

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_bluetooth"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 276
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 278
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectedDeviceCount()I

    move-result v1

    if-nez v1, :cond_21

    .line 279
    const-string v1, "PowerNotiReceiver"

    const-string v2, "doAction : disableBluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 287
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :goto_20
    return-void

    .line 282
    .restart local v0       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_21
    const-string v1, "PowerNotiReceiver"

    const-string v2, "Not disable Bluetooth because it\'s being used"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 285
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_29
    const-string v1, "PowerNotiReceiver"

    const-string v2, "PSM_BLUETOOTH = psm_bluetooth, do not disable Bluetooth because PSM_BLUETOOTH is unchecked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private stopGps(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 290
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_gps"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isGpsRunning()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 292
    const-string v2, "PowerNotiReceiver"

    const-string v3, "doAction : disableGPS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 294
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_2c
    return-void

    .line 299
    :cond_2d
    const-string v2, "PowerNotiReceiver"

    const-string v3, "Not disable Gps because it\'s being used"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 302
    :cond_35
    const-string v2, "PowerNotiReceiver"

    const-string v3, "PSM_GPS = psm_gps, do not disable Gps because PSM_GPS is unchecked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method private stopSync(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 307
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_sync"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    .line 308
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 311
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 312
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    .line 314
    .local v3, sync:Z
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v2

    .line 318
    .local v2, now_sync:Landroid/content/SyncInfo;
    if-eqz v0, :cond_29

    if-eqz v3, :cond_29

    .line 319
    if-nez v2, :cond_2a

    .line 320
    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 328
    .end local v0           #backgroundData:Z
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #now_sync:Landroid/content/SyncInfo;
    .end local v3           #sync:Z
    :cond_29
    :goto_29
    return-void

    .line 322
    .restart local v0       #backgroundData:Z
    .restart local v1       #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #now_sync:Landroid/content/SyncInfo;
    .restart local v3       #sync:Z
    :cond_2a
    const-string v4, "PowerNotiReceiver"

    const-string v5, "Not disable Auto Sync because it\'s being used"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 326
    .end local v0           #backgroundData:Z
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #now_sync:Landroid/content/SyncInfo;
    .end local v3           #sync:Z
    :cond_32
    const-string v4, "PowerNotiReceiver"

    const-string v5, "PSM_SYNC = psm_sync, do not disable Auto Sync because PSM_SYNC is unchecked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private stopWifi()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 240
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_wifi"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_3f

    .line 241
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 243
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 244
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 245
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 247
    .local v3, wifistate:Landroid/net/NetworkInfo$DetailedState;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_37

    .line 248
    const-string v4, "PowerNotiReceiver"

    const-string v5, "doAction : disableWifi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 256
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v3           #wifistate:Landroid/net/NetworkInfo$DetailedState;
    :goto_36
    return-void

    .line 251
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v2       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v3       #wifistate:Landroid/net/NetworkInfo$DetailedState;
    :cond_37
    const-string v4, "PowerNotiReceiver"

    const-string v5, "Not disable Wifi because it\'s connected to AP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 254
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v3           #wifistate:Landroid/net/NetworkInfo$DetailedState;
    :cond_3f
    const-string v4, "PowerNotiReceiver"

    const-string v5, "PSM_WIFI = psm_wifi, do not disable Wifi because PSM_WIFI is unchecked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private updatemaximumpowersaving(Z)V
    .registers 7
    .parameter "enableMode"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 384
    if-eqz p1, :cond_2f

    .line 386
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 387
    .local v0, mPowerManager:Landroid/os/PowerManager;
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    if-nez v1, :cond_24

    .line 388
    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v1

    if-eqz v1, :cond_24

    .line 389
    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v2

    aget v2, v2, v4

    const-string v3, "PowerNotiReceiver"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V

    .line 394
    :cond_24
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    if-nez v1, :cond_2b

    .line 395
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 398
    :cond_2b
    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 413
    :goto_2e
    return-void

    .line 402
    .end local v0           #mPowerManager:Landroid/os/PowerManager;
    :cond_2f
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 403
    .restart local v0       #mPowerManager:Landroid/os/PowerManager;
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    if-nez v1, :cond_40

    .line 404
    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->releasePersistentDVFSLock(I)V

    .line 407
    :cond_40
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    if-nez v1, :cond_47

    .line 408
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 411
    :cond_47
    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    goto :goto_2e
.end method


# virtual methods
.method public isGpsRunning()Z
    .registers 4

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 381
    .local v0, lm:Landroid/location/LocationManager;
    invoke-virtual {v0}, Landroid/location/LocationManager;->isGpsRunning()Z

    move-result v1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x97

    const/16 v10, 0x96

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 84
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 85
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v5

    if-nez v5, :cond_32

    .line 86
    const-string v5, "PowerNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PowerNotiReceiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_32
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "android.settings.ACTION_POWERSAVINGBATTERYLEVELCHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "android.settings.SYSTEMPOWERSAVING_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 92
    :cond_52
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 93
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "use_power_saving_mode"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 94
    .local v1, enableMode:Z
    const-string v5, "PowerNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 96
    .local v2, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getPlugType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8b

    invoke-virtual {v2}, Landroid/os/PowerManager;->getPlugType()I

    move-result v5

    if-ne v5, v9, :cond_8d

    .line 98
    :cond_8b
    sput-boolean v9, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    .line 99
    :cond_8d
    if-eqz v1, :cond_d1

    .line 100
    sget-boolean v5, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    if-eqz v5, :cond_cd

    .line 101
    invoke-direct {p0, v11}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    .line 108
    :goto_96
    const-string v5, "maximum_power_saving"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 109
    .local v3, maximumpowersavingmode:Z
    const-string v5, "PowerNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maximumpowersavingmode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz v3, :cond_d5

    .line 111
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showSystemNotification()V

    .line 115
    :goto_b9
    const-string v5, "pref_siop_clock"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    .line 116
    const-string v5, "pref_siop_rendering"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    .line 117
    invoke-direct {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updatemaximumpowersaving(Z)V

    .line 142
    .end local v1           #enableMode:Z
    .end local v2           #mPowerManager:Landroid/os/PowerManager;
    .end local v3           #maximumpowersavingmode:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_cc
    :goto_cc
    return-void

    .line 103
    .restart local v1       #enableMode:Z
    .restart local v2       #mPowerManager:Landroid/os/PowerManager;
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    :cond_cd
    invoke-direct {p0, v10}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_96

    .line 105
    :cond_d1
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->clearNotification()V

    goto :goto_96

    .line 113
    .restart local v3       #maximumpowersavingmode:Z
    :cond_d5
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->clearSystemNotification()V

    goto :goto_b9

    .line 119
    .end local v1           #enableMode:Z
    .end local v2           #mPowerManager:Landroid/os/PowerManager;
    .end local v3           #maximumpowersavingmode:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_d9
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 120
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 121
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    const-string v5, "use_power_saving_mode"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 122
    .restart local v1       #enableMode:Z
    sput-boolean v9, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    .line 123
    if-eqz v1, :cond_cc

    .line 124
    invoke-direct {p0, v11}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_cc

    .line 125
    .end local v1           #enableMode:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_f3
    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 126
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 127
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    const-string v5, "use_power_saving_mode"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 128
    .restart local v1       #enableMode:Z
    sput-boolean v8, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    .line 129
    if-eqz v1, :cond_cc

    .line 130
    invoke-direct {p0, v10}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_cc

    .line 131
    .end local v1           #enableMode:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_10d
    const-string v5, "android.settings.ACTION_POWERSAVING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_120

    .line 133
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction(Landroid/content/Context;)V

    .line 134
    const/16 v5, 0x98

    invoke-direct {p0, v5}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_cc

    .line 135
    :cond_120
    const-string v5, "android.intent.action.POWER_SIOP_DISABLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 136
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 137
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    const-string v5, "maximum_power_saving"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 138
    .restart local v1       #enableMode:Z
    sput-boolean v8, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    .line 139
    sput-boolean v8, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    .line 140
    invoke-direct {p0, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updatemaximumpowersaving(Z)V

    goto :goto_cc
.end method
