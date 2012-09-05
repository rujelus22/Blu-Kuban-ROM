.class public Lcom/swype/android/connect/manager/UpgradeManager;
.super Lcom/swype/android/connect/manager/AbstractCommandManager;
.source "UpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;
    }
.end annotation


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "upgrade"

.field public static final SETTINGS_DOWNLOAD_NOW_PREFERENCE:Ljava/lang/String; = "upgradeDownloadNowPreference"

.field public static final SETTINGS_INSTALL_NOW_PREFERENCE:Ljava/lang/String; = "upgradeInstallnowPreference"

.field public static final SETTINGS_OTA_COMPLETE:Ljava/lang/String; = "upgradeOTAComplete"

.field protected static final STATUS_INSTALL_CANCELED:Ljava/lang/String; = "INSTALL_CANCELED"

.field protected static final STATUS_INSTALL_COMPLETED:Ljava/lang/String; = "INSTALL_COMPLETED"

.field protected static final STATUS_INSTALL_FAILED:Ljava/lang/String; = "INSTALL_FAILED"

.field protected static final STATUS_INSTALL_PREPARED:Ljava/lang/String; = "INSTALL_PREPARED"

.field public static final UPGRADE_FILE_PREFERENCE:Ljava/lang/String; = "upgradeFilePreference"

.field public static final UPGRADE_FILE_SD_PREFERENCE:Ljava/lang/String; = "upgradeFileSDPreference"

.field public static final UPGRADE_FILE_SIZE:Ljava/lang/String; = "upgradeFileSize"

.field public static final UPGRADE_FILE_TRANSACTION_PREFERENCE:Ljava/lang/String; = "upgradeFileTransactionPreference"

.field public static final UPGRADE_STATUS_INTENT:Ljava/lang/String; = "com.swype.android.inputmethod.SwypeSettings"


# instance fields
.field protected apkURL:Ljava/lang/String;

.field private downloadNow:Z

.field private installNow:Z

.field private notification:Lcom/swype/android/connect/util/ConnectNotification;

.field private possibleUpgrade:Z

.field private upgradeAPK:Ljava/io/File;

.field private upgradeAPKChecksum:Ljava/lang/String;

.field private upgradeSDAPK:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 53
    iput-boolean v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    .line 54
    iput-boolean v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->installNow:Z

    .line 55
    iput-boolean v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->possibleUpgrade:Z

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->version:I

    .line 90
    const-string v0, "upgrade"

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->commandFamily:Ljava/lang/String;

    .line 91
    const v0, 0x2f9ad69b

    iput v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->alarmUniqueId:I

    .line 95
    iput-boolean v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    .line 96
    iput-boolean v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->installNow:Z

    .line 97
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    const-string v1, "upgradeDownloadNowPreference"

    iget-boolean v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string v1, "upgradeInstallnowPreference"

    iget-boolean v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->installNow:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    const-string v1, "upgradeOTAComplete"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    return-void
.end method

.method private disableAutoDownload()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 490
    iput-boolean v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    .line 491
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    const-string v1, "upgradeDownloadNowPreference"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    return-void
.end method

.method private loadPreferences()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 628
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 630
    const-string v1, "upgradeFilePreference"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    const-string v2, "upgradeFileSDPreference"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    const-string v3, "upgradeFileTransactionPreference"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 633
    const-string v4, "upgradeDownloadNowPreference"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    .line 634
    const-string v4, "upgradeInstallnowPreference"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/swype/android/connect/manager/UpgradeManager;->installNow:Z

    .line 636
    if-eqz v2, :cond_46

    .line 638
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 641
    :try_start_37
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3a} :catch_7f

    .line 646
    :goto_3a
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 647
    const-string v2, "upgradeFileSDPreference"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 648
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 653
    :cond_46
    if-eqz v1, :cond_6f

    .line 654
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 656
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_6f

    .line 658
    :try_start_53
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 659
    :cond_63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->installNow:Z

    .line 662
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V
    :try_end_6f
    .catch Ljava/lang/SecurityException; {:try_start_53 .. :try_end_6f} :catch_86

    .line 672
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_7e

    if-eqz v3, :cond_7e

    .line 673
    iput-object v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 675
    iget-boolean v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->installNow:Z

    if-eqz v0, :cond_7e

    .line 676
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->upgrade()V

    .line 679
    :cond_7e
    return-void

    .line 643
    :catch_7f
    move-exception v2

    const-string v2, "Unable to delete APK from SD card"

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_3a

    .line 664
    :catch_86
    move-exception v0

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception while trying to read upgrade file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 667
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    goto :goto_6f
.end method

.method private processUpgradeAPKResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 559
    const-string v0, "UpgradeManager.processUpgradeAPKResponse()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 561
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 562
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-static {v0}, Lcom/swype/android/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    .line 564
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    .line 566
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->ackUpgradeFile()V

    .line 567
    return-void
.end method

.method private savePreferences()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 578
    const-string v0, "UpgradeManager.savePreferences() "

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 580
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 586
    :try_start_10
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v1, :cond_114

    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_114

    .line 587
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_21} :catch_d1

    move-result-object v1

    .line 590
    :goto_22
    :try_start_22
    iget-object v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    if-eqz v2, :cond_111

    iget-object v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 591
    iget-object v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_33} :catch_10c

    move-result-object v2

    :goto_34
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 597
    :goto_37
    iget-object v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    if-nez v3, :cond_f0

    .line 598
    const-string v3, "upgradeFileTransactionPreference"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 604
    :goto_40
    if-eqz v2, :cond_f9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f9

    .line 605
    const-string v3, "upgradeFilePreference"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 606
    const-string v3, "upgradeFileSize"

    iget-object v4, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 612
    :goto_5c
    if-eqz v1, :cond_105

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_105

    .line 613
    const-string v3, "upgradeFileSDPreference"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 618
    :goto_69
    const-string v3, "upgradeDownloadNowPreference"

    iget-boolean v4, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 619
    const-string v3, "upgradeInstallnowPreference"

    iget-boolean v4, p0, Lcom/swype/android/connect/manager/UpgradeManager;->installNow:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpgradeManager.savePreferences() UPGRADE_FILE_TRANSACTION_PREFERENCE: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpgradeManager.savePreferences() UPGRADE_FILE_PREFERENCE: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpgradeManager.savePreferences() UPGRADE_FILE_SD_PREFERENCE: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 624
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 625
    return-void

    .line 593
    :catch_d1
    move-exception v1

    move-object v2, v5

    .line 594
    :goto_d3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception while trying to read upgrade file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    move-object v1, v5

    goto/16 :goto_37

    .line 600
    :cond_f0
    const-string v3, "upgradeFileTransactionPreference"

    iget-object v4, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_40

    .line 608
    :cond_f9
    const-string v3, "upgradeFilePreference"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 609
    const-string v3, "upgradeFileSize"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_5c

    .line 615
    :cond_105
    const-string v3, "upgradeFileSDPreference"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_69

    .line 593
    :catch_10c
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_d3

    :cond_111
    move-object v2, v5

    goto/16 :goto_34

    :cond_114
    move-object v1, v5

    goto/16 :goto_22
.end method

.method private upgradeSwype()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 335
    const-string v0, "UpgradeManager.upgradeSwype()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 337
    iput-boolean v8, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    .line 338
    iput-boolean v8, p0, Lcom/swype/android/connect/manager/UpgradeManager;->installNow:Z

    .line 341
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    const-string v1, "upgradeInstallnowPreference"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 346
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_51

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 352
    if-nez v3, :cond_51

    .line 353
    const-string v0, "Unable to create download directory when it was missing, we can\'t upgrade this build"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 403
    :goto_50
    return-void

    .line 358
    :cond_51
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    .line 360
    const/4 v0, 0x1

    .line 365
    :try_start_6a
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_135
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_71} :catch_15f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_71} :catch_125

    .line 366
    :try_start_71
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_151
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_78} :catch_164
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_78} :catch_159

    .line 368
    const/16 v5, 0x400

    :try_start_7a
    new-array v5, v5, [B

    .line 369
    :goto_7c
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_116

    .line 371
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_87
    .catchall {:try_start_7a .. :try_end_87} :catchall_155
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_87} :catch_88
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_87} :catch_15c

    goto :goto_7c

    .line 374
    :catch_88
    move-exception v0

    move-object v0, v4

    .line 379
    :goto_8a
    :try_start_8a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_148

    .line 380
    :goto_8d
    :try_start_8d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_121

    move v0, v8

    .line 383
    :goto_91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New File goes here: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] actual: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new file actual actual: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Worked: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 386
    if-eqz v0, :cond_13f

    .line 387
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 389
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    .line 392
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 398
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/ConnectClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_50

    .line 379
    :cond_116
    :try_start_116
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_146

    .line 380
    :goto_119
    :try_start_119
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11c} :catch_11e

    goto/16 :goto_91

    .line 381
    :catch_11e
    move-exception v3

    goto/16 :goto_91

    :catch_121
    move-exception v0

    move v0, v8

    goto/16 :goto_91

    .line 376
    :catch_125
    move-exception v0

    move-object v0, v6

    move-object v3, v6

    .line 379
    :goto_128
    :try_start_128
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12b} :catch_14b

    .line 380
    :goto_12b
    :try_start_12b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_131

    move v0, v8

    goto/16 :goto_91

    .line 381
    :catch_131
    move-exception v0

    move v0, v8

    goto/16 :goto_91

    .line 379
    :catchall_135
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    :goto_138
    :try_start_138
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13b} :catch_14d

    .line 380
    :goto_13b
    :try_start_13b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_14f

    :goto_13e
    throw v0

    .line 402
    :cond_13f
    const-string v0, "Unable to create download file on SDCARD when it was missing, we can\'t upgrade this build"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_50

    :catch_146
    move-exception v3

    goto :goto_119

    :catch_148
    move-exception v3

    goto/16 :goto_8d

    :catch_14b
    move-exception v3

    goto :goto_12b

    :catch_14d
    move-exception v2

    goto :goto_13b

    :catch_14f
    move-exception v1

    goto :goto_13e

    .line 379
    :catchall_151
    move-exception v0

    move-object v1, v6

    move-object v2, v3

    goto :goto_138

    :catchall_155
    move-exception v0

    move-object v1, v4

    move-object v2, v3

    goto :goto_138

    .line 376
    :catch_159
    move-exception v0

    move-object v0, v6

    goto :goto_128

    :catch_15c
    move-exception v0

    move-object v0, v4

    goto :goto_128

    .line 374
    :catch_15f
    move-exception v0

    move-object v0, v6

    move-object v3, v6

    goto/16 :goto_8a

    :catch_164
    move-exception v0

    move-object v0, v6

    goto/16 :goto_8a
.end method


# virtual methods
.method public ackUpgradeFile()V
    .registers 4

    .prologue
    .line 293
    const-string v0, "UpgradeManager.ackUpgradeFile()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 307
    :cond_11
    :goto_11
    return-void

    .line 301
    :cond_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    const-string v1, "checksum"

    iget-object v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v1, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/UpgradeManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 306
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/UpgradeManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    goto :goto_11
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .parameter "type"
    .parameter "data"

    .prologue
    .line 571
    const-string v0, "SwypeConnect"

    const-string v1, "Upgrade Manager has recieved an alarm."

    invoke-static {v0, v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    sget-object v0, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->check:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 573
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->checkForUpgrade()V

    .line 575
    :cond_16
    return-void
.end method

.method public checkForUpgrade()V
    .registers 3

    .prologue
    .line 228
    const-string v1, "UpgradeManager.checkForUpgrade()"

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_15

    :cond_11
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 237
    :cond_15
    const-string v1, "Not running check for upgrade since we already know about our upgrade."

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 243
    :goto_1a
    return-void

    .line 241
    :cond_1b
    sget-object v1, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->check:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/manager/UpgradeManager;->createCommand(Ljava/lang/String;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 242
    .local v0, command:Lcom/swype/android/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/UpgradeManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    goto :goto_1a
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    .line 127
    return-void
.end method

.method public fetchAPK()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    const-string v1, "UpgradeManager.fetchAPK()"

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 251
    iput-boolean v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    .line 252
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    .line 254
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->initializeDownloadNotification()V

    .line 257
    sget-object v1, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->download:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/manager/UpgradeManager;->createCommand(Ljava/lang/String;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 258
    .local v0, command:Lcom/swype/android/connect/util/Command;
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 259
    sget-object v1, Lcom/swype/android/connect/util/Command;->GET:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->method:Ljava/lang/String;

    .line 260
    iput-boolean v2, v0, Lcom/swype/android/connect/util/Command;->hasBody:Z

    .line 261
    iput-boolean v2, v0, Lcom/swype/android/connect/util/Command;->handleIOException:Z

    .line 262
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->notifyDownloadStatus:Z

    .line 263
    iput-boolean v2, v0, Lcom/swype/android/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 264
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/UpgradeManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 265
    return-void
.end method

.method protected initializeDownloadNotification()V
    .registers 3

    .prologue
    .line 271
    const-string v0, "initializeDownloadNotification now"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    if-eqz v0, :cond_11

    .line 274
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v0}, Lcom/swype/android/connect/util/ConnectNotification;->cancel()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    .line 279
    :cond_11
    new-instance v0, Lcom/swype/android/connect/util/ConnectNotification;

    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-direct {v0, v1}, Lcom/swype/android/connect/util/ConnectNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    .line 280
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/util/ConnectNotification;->setTitle(I)V

    .line 281
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/util/ConnectNotification;->setText(I)V

    .line 282
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    const-string v1, "com.swype.android.inputmethod.SwypeSettings"

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/util/ConnectNotification;->createIntent(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v0}, Lcom/swype/android/connect/util/ConnectNotification;->setFlagOngoing()V

    .line 284
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/swype/android/connect/util/Command;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    sget-object v0, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->download:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 182
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    if-nez v0, :cond_15

    .line 183
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->initializeDownloadNotification()V

    .line 186
    :cond_15
    if-lt p2, p3, :cond_25

    .line 187
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/util/ConnectNotification;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v0}, Lcom/swype/android/connect/util/ConnectNotification;->updateOrShow()V

    .line 220
    :cond_24
    :goto_24
    return-void

    .line 189
    :cond_25
    if-gez p2, :cond_66

    .line 191
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v0}, Lcom/swype/android/connect/util/ConnectNotification;->cancel()V

    .line 194
    const-wide/32 v0, 0x7fffffff

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 195
    new-instance v1, Lcom/swype/android/connect/util/ConnectNotification;

    iget-object v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-direct {v1, v2, v0}, Lcom/swype/android/connect/util/ConnectNotification;-><init>(Landroid/content/Context;I)V

    .line 196
    const v0, 0x7f07000e

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/util/ConnectNotification;->setTitle(I)V

    .line 197
    const v0, 0x7f07001a

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/util/ConnectNotification;->setText(I)V

    .line 198
    const-string v0, "com.swype.android.inputmethod.SwypeSettings"

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/util/ConnectNotification;->createIntent(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Lcom/swype/android/connect/util/ConnectNotification;->updateOrShow()V

    .line 201
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->unwindInstall()V

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.inputmethod.SwypeSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v1, "Progress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/ConnectClient;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_24

    .line 210
    :cond_66
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 211
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/util/ConnectNotification;->setRepeatingVariables(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v1}, Lcom/swype/android/connect/util/ConnectNotification;->updateOrShow()V

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.swype.android.inputmethod.SwypeSettings"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    const-string v2, "Progress"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_24
.end method

.method public onFileResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 546
    sget-object v0, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->download:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 547
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/UpgradeManager;->processUpgradeAPKResponse(Lcom/swype/android/connect/util/Response;)V

    .line 550
    :cond_11
    return-void
.end method

.method public onIOExceptionResponse(Lcom/swype/android/connect/util/Command;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 157
    if-nez p1, :cond_4

    .line 175
    :cond_3
    :goto_3
    return-void

    .line 162
    :cond_4
    sget-object v0, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->download:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    iput-object v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/swype/android/connect/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_1f

    .line 168
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 171
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    .line 172
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    .line 173
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->checkForUpgrade()V

    goto :goto_3
.end method

.method public onResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 5
    .parameter

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpgradeManager.onResponse(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Transaction Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 133
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "DELAY_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 136
    iget v0, p1, Lcom/swype/android/connect/util/Response;->delayedFor:I

    if-lez v0, :cond_7c

    sget-object v0, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->check:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting DELAY_REQUEST for command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/swype/android/connect/util/Response;->delayedFor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 138
    iget v0, p1, Lcom/swype/android/connect/util/Response;->delayedFor:I

    const-class v1, Lcom/swype/android/connect/manager/UpgradeManager;

    iget-object v2, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/swype/android/connect/manager/UpgradeManager;->generateIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/connect/manager/UpgradeManager;->setAlarmInSeconds(ILandroid/app/PendingIntent;Z)V

    .line 151
    :goto_78
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    .line 152
    return-void

    .line 140
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELAY_REQUEST dropped for command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_78

    .line 142
    :cond_95
    sget-object v0, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->check:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 143
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/manager/UpgradeManager;->processCheckResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_78

    .line 144
    :cond_a7
    sget-object v0, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 145
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/manager/UpgradeManager;->processAckResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_78

    .line 146
    :cond_b9
    sget-object v0, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->status:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 147
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/manager/UpgradeManager;->processStatusResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_78

    .line 149
    :cond_cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server returned unknown command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_78
.end method

.method public possibleSwypeUpgrade()V
    .registers 2

    .prologue
    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->possibleUpgrade:Z

    .line 693
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->loadPreferences()V

    .line 695
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 696
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->swypeHasUpgraded()V

    .line 700
    :goto_19
    return-void

    .line 698
    :cond_1a
    const-string v0, "This install is not an upgrade, false alarm"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_19
.end method

.method protected processAckResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 6
    .parameter

    .prologue
    .line 461
    const-string v0, "UpgradeManager.processAckResponse()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 463
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 464
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v0}, Lcom/swype/android/connect/util/ConnectNotification;->cancel()V

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    .line 471
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x2c

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/swype/android/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 473
    iget-boolean v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->installNow:Z

    if-eqz v0, :cond_2f

    .line 475
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSwype()V

    .line 481
    :goto_27
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 487
    :goto_2e
    return-void

    .line 478
    :cond_2f
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->disableAutoDownload()V

    goto :goto_27

    .line 484
    :cond_33
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->unwindInstall()V

    goto :goto_2e
.end method

.method protected processCheckResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 439
    const-string v0, "UpgradeManager.processCheckResponse()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 441
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_40

    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_40

    .line 445
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 446
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    .line 450
    iget-boolean v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    if-eqz v0, :cond_39

    .line 452
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->fetchAPK()V

    .line 456
    :cond_39
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 458
    :cond_40
    return-void
.end method

.method protected processStatusResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter

    .prologue
    .line 517
    const-string v0, "UpgradeManager.processStatusResponse()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Lcom/swype/android/connect/util/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 520
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->initialCommand:Lcom/swype/android/connect/util/Command;

    .line 521
    iget-object v0, v0, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 523
    if-nez v0, :cond_20

    .line 524
    const-string v0, "recieved a response but no status was sent for it."

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 542
    :cond_1f
    :goto_1f
    return-void

    .line 528
    :cond_20
    const-string v1, "INSTALL_PREPARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 529
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 530
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSwype()V

    goto :goto_1f

    .line 532
    :cond_36
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->unwindInstall()V

    goto :goto_1f

    .line 534
    :cond_3a
    const-string v1, "INSTALL_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "INSTALL_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 537
    const-string v1, "INSTALL_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 540
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    goto :goto_1f
.end method

.method public sendStatus(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpgradeManager.sendStatus() -- Status: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    sget-object v1, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v1, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->status:Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/UpgradeManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/UpgradeManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 419
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/UpgradeManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 430
    :goto_41
    return-void

    .line 422
    :cond_42
    new-instance v0, Lcom/swype/android/connect/manager/UpgradeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/swype/android/connect/manager/UpgradeManager$1;-><init>(Lcom/swype/android/connect/manager/UpgradeManager;Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/swype/android/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_41
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 107
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 108
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->loadPreferences()V

    .line 111
    iput-boolean v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->downloadNow:Z

    .line 112
    iput-boolean v1, p0, Lcom/swype/android/connect/manager/UpgradeManager;->installNow:Z

    .line 113
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    .line 115
    iget-boolean v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->possibleUpgrade:Z

    if-eqz v0, :cond_16

    .line 116
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->possibleSwypeUpgrade()V

    .line 119
    :cond_16
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 121
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public swypeHasUpgraded()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 710
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 711
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 712
    const-string v1, "upgradeOTAComplete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 713
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 715
    const-string v0, "upgradeManager.swypeHasUpgraded() - cleaning up now"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 719
    :try_start_25
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_2a} :catch_58

    .line 725
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 727
    :try_start_36
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_3b} :catch_5f

    .line 735
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 737
    const-string v0, "INSTALL_COMPLETED"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/UpgradeManager;->sendStatus(Ljava/lang/String;)V

    .line 739
    iput-object v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    .line 740
    iput-object v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 741
    iput-object v3, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 742
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    .line 745
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 746
    return-void

    .line 721
    :catch_58
    move-exception v0

    const-string v0, "Unable to delete APK from SD card"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_2a

    .line 729
    :catch_5f
    move-exception v0

    const-string v0, "Unable to delete APK"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public swypeUpgradeCanceled()V
    .registers 2

    .prologue
    .line 685
    const-string v0, "upgradeManager.swypeUpgradeCanceled()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 687
    const-string v0, "INSTALL_CANCELED"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/UpgradeManager;->sendStatus(Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method protected unwindInstall()V
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 502
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 504
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 506
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->disableAutoDownload()V

    .line 507
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->savePreferences()V

    .line 509
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->checkForUpgrade()V

    .line 510
    return-void
.end method

.method public upgrade()V
    .registers 2

    .prologue
    .line 315
    const-string v0, "UpgradeManager.upgrade()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 329
    :cond_19
    :goto_19
    return-void

    .line 324
    :cond_1a
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 325
    const-string v0, "INSTALL_PREPARED"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/UpgradeManager;->sendStatus(Ljava/lang/String;)V

    goto :goto_19

    .line 327
    :cond_28
    invoke-direct {p0}, Lcom/swype/android/connect/manager/UpgradeManager;->upgradeSwype()V

    goto :goto_19
.end method
