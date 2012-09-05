.class public Landroid/app/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field public static final ALLOW_SETTINGS_CHANGES:Ljava/lang/String; = "edm.intent.action.allow.settings"

.field public static final EXTERNAL_STORAGE_PATH_SD:Ljava/lang/String; = "/mnt/sdcard/external_sd"

.field public static final MTP_DISABLED:Ljava/lang/String; = "edm.intent.action.disable.mtp"

.field private static TAG:Ljava/lang/String;

.field public static final settingsExceptions:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mService:Landroid/app/enterprise/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 14
    const-string v0, "RestrictionPolicy"

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.ActivityPicker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.settings.DeviceAdminAdd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.settings.bluetooth.DevicePickerActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings.wfd.WfdPickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings.bluetooth.BluetoothPairingDialog"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/app/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 44
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    .line 46
    return-void
.end method


# virtual methods
.method public allowBluetooth(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 242
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->allowBluetooth(Z)Z

    move-result v0

    return v0
.end method

.method public allowFactoryReset(Z)Z
    .registers 5
    .parameter "allow"

    .prologue
    .line 974
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 976
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowFactoryReset(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 981
    :goto_a
    return v1

    .line 977
    :catch_b
    move-exception v0

    .line 978
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public allowSettingsChanges(Z)Z
    .registers 5
    .parameter "allow"

    .prologue
    .line 674
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 676
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowSettingsChanges(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 681
    :goto_a
    return v1

    .line 677
    :catch_b
    move-exception v0

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public allowWiFi(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isBackgroundDataEnabled()Z
    .registers 4

    .prologue
    .line 912
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 914
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isBackgroundDataEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 919
    :goto_a
    return v1

    .line 915
    :catch_b
    move-exception v0

    .line 916
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 919
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isBackupAllowed(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 591
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 593
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isBackupAllowed(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 598
    :goto_a
    return v1

    .line 594
    :catch_b
    move-exception v0

    .line 595
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isBluetoothEnabled(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public isBluetoothTetheringEnabled()Z
    .registers 4

    .prologue
    .line 356
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 358
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isBluetoothTetheringEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 363
    :goto_a
    return v1

    .line 359
    :catch_b
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isCameraEnabled(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 156
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 158
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isCameraEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 163
    :goto_a
    return v1

    .line 159
    :catch_b
    move-exception v0

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isCellularDataAllowed()Z
    .registers 4

    .prologue
    .line 630
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 632
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isCellularDataAllowed()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 637
    :goto_a
    return v1

    .line 633
    :catch_b
    move-exception v0

    .line 634
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isClipboardAllowed(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 750
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 752
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isClipboardAllowed(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 757
    :goto_a
    return v1

    .line 753
    :catch_b
    move-exception v0

    .line 754
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isFactoryResetAllowed()Z
    .registers 4

    .prologue
    .line 994
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 996
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isFactoryResetAllowed()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1001
    :goto_a
    return v1

    .line 997
    :catch_b
    move-exception v0

    .line 998
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isHomeKeyEnabled()Z
    .registers 4

    .prologue
    .line 1032
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 1034
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isHomeKeyEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1039
    :goto_a
    return v1

    .line 1035
    :catch_b
    move-exception v0

    .line 1036
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 205
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 207
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 212
    :goto_a
    return v1

    .line 208
    :catch_b
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isMockLocationEnabled()Z
    .registers 4

    .prologue
    .line 550
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 552
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isMockLocationEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 557
    :goto_a
    return v1

    .line 553
    :catch_b
    move-exception v0

    .line 554
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isNFCEnabled()Z
    .registers 4

    .prologue
    .line 950
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 952
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isNFCEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 957
    :goto_a
    return v1

    .line 953
    :catch_b
    move-exception v0

    .line 954
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isNonMarketAppAllowed()Z
    .registers 4

    .prologue
    .line 872
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 874
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isNonMarketAppAllowed()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 879
    :goto_a
    return v1

    .line 875
    :catch_b
    move-exception v0

    .line 876
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isScreenCaptureEnabled(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 395
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 397
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isScreenCaptureEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 402
    :goto_a
    return v1

    .line 398
    :catch_b
    move-exception v0

    .line 399
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isSdCardEnabled()Z
    .registers 4

    .prologue
    .line 691
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 693
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSdCardEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 698
    :goto_a
    return v1

    .line 694
    :catch_b
    move-exception v0

    .line 695
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isSettingsChangesAllowed(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 709
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 711
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 716
    :goto_a
    return v1

    .line 712
    :catch_b
    move-exception v0

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isTetheringEnabled()Z
    .registers 4

    .prologue
    .line 470
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 472
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isTetheringEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 477
    :goto_a
    return v1

    .line 473
    :catch_b
    move-exception v0

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isUsbDebuggingEnabled()Z
    .registers 4

    .prologue
    .line 433
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 435
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbDebuggingEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 440
    :goto_a
    return v1

    .line 436
    :catch_b
    move-exception v0

    .line 437
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isUsbKiesAvailable(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 790
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 792
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbKiesAvailable(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 797
    :goto_a
    return v1

    .line 793
    :catch_b
    move-exception v0

    .line 794
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isUsbMassStorageEnabled(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 511
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 513
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbMassStorageEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 518
    :goto_a
    return v1

    .line 514
    :catch_b
    move-exception v0

    .line 515
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isUsbMediaPlayerAvailable(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 834
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 836
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 841
    :goto_a
    return v1

    .line 837
    :catch_b
    move-exception v0

    .line 838
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isUsbTetheringEnabled()Z
    .registers 4

    .prologue
    .line 278
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 280
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbTetheringEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 285
    :goto_a
    return v1

    .line 281
    :catch_b
    move-exception v0

    .line 282
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isWiFiEnabled(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isWifiTetheringEnabled()Z
    .registers 4

    .prologue
    .line 319
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 321
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isWifiTetheringEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 326
    :goto_a
    return v1

    .line 322
    :catch_b
    move-exception v0

    .line 323
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAllowNonMarketApps(Z)Z
    .registers 5
    .parameter "allow"

    .prologue
    .line 856
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 858
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setAllowNonMarketApps(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 863
    :goto_a
    return v1

    .line 859
    :catch_b
    move-exception v0

    .line 860
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setBackgroundData(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 895
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 897
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBackgroundData(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 902
    :goto_a
    return v1

    .line 898
    :catch_b
    move-exception v0

    .line 899
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setBackup(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 572
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 574
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBackup(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 579
    :goto_a
    return v1

    .line 575
    :catch_b
    move-exception v0

    .line 576
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setBluetoothState(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->setBluetoothState(Z)Z

    move-result v0

    return v0
.end method

.method public setBluetoothTethering(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 340
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 342
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBluetoothTethering(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 347
    :goto_a
    return v1

    .line 343
    :catch_b
    move-exception v0

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setCameraState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 135
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 137
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setCamera(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 142
    :goto_a
    return v1

    .line 138
    :catch_b
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setCellularData(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 613
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 615
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setCellularData(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 620
    :goto_a
    return v1

    .line 616
    :catch_b
    move-exception v0

    .line 617
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setClipboardEnabled(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 731
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 733
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setClipboardEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 738
    :goto_a
    return v1

    .line 734
    :catch_b
    move-exception v0

    .line 735
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setEnableNFC(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 934
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 936
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setEnableNFC(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 941
    :goto_a
    return v1

    .line 937
    :catch_b
    move-exception v0

    .line 938
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 941
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setHomeKeyState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 1016
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 1018
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setHomeKeyState(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1023
    :goto_a
    return v1

    .line 1019
    :catch_b
    move-exception v0

    .line 1020
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1023
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setMicrophoneState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 184
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 186
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setMicrophoneState(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 191
    :goto_a
    return v1

    .line 187
    :catch_b
    move-exception v0

    .line 188
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setMockLocation(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 533
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 535
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setMockLocation(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 540
    :goto_a
    return v1

    .line 536
    :catch_b
    move-exception v0

    .line 537
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setScreenCapture(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 377
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 379
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setScreenCapture(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 384
    :goto_a
    return v1

    .line 380
    :catch_b
    move-exception v0

    .line 381
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSdCardState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 652
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 654
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setSdCardState(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 659
    :goto_a
    return v1

    .line 655
    :catch_b
    move-exception v0

    .line 656
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setTethering(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 454
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 456
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setTethering(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 461
    :goto_a
    return v1

    .line 457
    :catch_b
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setUsbDebuggingEnabled(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 417
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 419
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbDebuggingEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 424
    :goto_a
    return v1

    .line 420
    :catch_b
    move-exception v0

    .line 421
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setUsbKiesAvailability(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 772
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 774
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbKiesAvailability(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 779
    :goto_a
    return v1

    .line 775
    :catch_b
    move-exception v0

    .line 776
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setUsbMassStorage(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 492
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 494
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbMassStorage(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 499
    :goto_a
    return v1

    .line 495
    :catch_b
    move-exception v0

    .line 496
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setUsbMediaPlayerAvailability(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 812
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 814
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbMediaPlayerAvailability(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 819
    :goto_a
    return v1

    .line 815
    :catch_b
    move-exception v0

    .line 816
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setUsbTethering(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 262
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 264
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbTethering(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 269
    :goto_a
    return v1

    .line 265
    :catch_b
    move-exception v0

    .line 266
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setWiFiState(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifi(Z)Z

    move-result v0

    return v0
.end method

.method public setWifiTethering(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 303
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 305
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setWifiTethering(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 310
    :goto_a
    return v1

    .line 306
    :catch_b
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method
