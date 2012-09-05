.class public Lcom/swype/android/connect/manager/LanguageManager;
.super Lcom/swype/android/connect/manager/AbstractCommandManager;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/manager/LanguageManager$1;,
        Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;,
        Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;
    }
.end annotation


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "language"

.field public static final DOWNLOAD_LIST_STATE_AVAILABLE:I = 0x1

.field public static final DOWNLOAD_LIST_STATE_NONE:I = 0x2

.field public static final DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String; = "DOWNLOAD_LIST_STATE"

.field public static final DOWNLOAD_LIST_STATE_UNKNOWN:I = 0x0

.field public static final INSTALLED_LANGUAGES_COUNT_PREF:Ljava/lang/String; = "LANGUAGES_COUNT"

.field public static final INSTALL_CANCELED:I = 0x7

.field public static final INSTALL_DOWNLOAD:I = 0x2

.field public static final INSTALL_DOWNLOAD_COMPLETE:I = 0x3

.field public static final INSTALL_DOWNLOAD_VERIFIED:I = 0x4

.field public static final INSTALL_FAILED:I = 0x8

.field public static final INSTALL_INSTALLED:I = 0x6

.field public static final INSTALL_PENDING:I = 0x0

.field public static final INSTALL_PENDING_LICENSING:I = 0x5

.field public static final INSTALL_REMOVED:I = 0x9

.field public static final INSTALL_REQUEST:I = 0x1

.field public static final INSTALL_UNKNOWN:I = 0xa

.field public static final LANGUAGES_AVAILABLE_PREF:Ljava/lang/String; = "LANGUAGES_AVAILABLE_DL"

.field public static final LANGUAGE_DISPLAY_PREFIX_PREF:Ljava/lang/String; = "LANGUAGE_DISPLAY_"

.field public static final LANGUAGE_DOWNLOAD_STATUS_LIST_PREF:Ljava/lang/String; = "LANGUAGE_DOWNLOAD_STATUS_LIST_PREF"

.field public static final LANGUAGE_INSTALLER_PREF:Ljava/lang/String; = "LANGUAGE_INSTALLER_DATA"

.field public static final LANGUAGE_PACK_STATUS_INTENT:Ljava/lang/String; = "com.swype.android.connect.DownloadLanguageProgress"

.field public static final LANGUAGE_UPGRADE_PREF:Ljava/lang/String; = "LANGUAGE_UPGRADE_DATA"

.field public static final STATUS_INSTALLED:Ljava/lang/String; = "INSTALLED"

.field public static final STATUS_INSTALL_FAILED:Ljava/lang/String; = "INSTALL_FAILED"

.field public static final STATUS_REMOVED:Ljava/lang/String; = "REMOVED"

.field public static final USER_LANGUAGES_PREF:Ljava/lang/String; = "LANGUAGES_DL"


# instance fields
.field private downloadListState:I

.field private languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

.field private languageRemovalInProcess:Z

.field private languagesAvailForDownload:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languagesAvailForDownload:Ljava/util/HashMap;

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->downloadListState:I

    .line 196
    const/4 v0, 0x3

    iput v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->version:I

    .line 197
    const-string v0, "language"

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->commandFamily:Ljava/lang/String;

    .line 198
    const v0, 0x5963e67

    iput v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->alarmUniqueId:I

    .line 199
    new-instance v0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-direct {v0, p1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    .line 200
    return-void
.end method

.method private cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 662
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->hasLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 663
    if-eqz p3, :cond_d

    .line 664
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LanguageManager;->processQueuedInstalls()V

    .line 688
    :cond_d
    :goto_d
    return-void

    .line 668
    :cond_e
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v2, "TRANSACTION_ID"

    invoke-virtual {v1, p1, v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    if-eqz v0, :cond_36

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 671
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 674
    :try_start_33
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_52

    .line 681
    :cond_36
    :goto_36
    if-eqz p2, :cond_47

    if-eqz v1, :cond_47

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 682
    const-string v0, "INSTALL_FAILED"

    invoke-virtual {p0, p1, v0, v1}, Lcom/swype/android/connect/manager/LanguageManager;->sendStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_47
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->removeLanguage(Ljava/lang/String;)V

    .line 685
    if-eqz p3, :cond_d

    .line 686
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LanguageManager;->processQueuedInstalls()V

    goto :goto_d

    .line 676
    :catch_52
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_36
.end method

.method private createCommand(Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;)Lcom/swype/android/connect/util/Command;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 546
    sget-object v1, Lcom/swype/android/connect/manager/LanguageManager$1;->$SwitchMap$com$swype$android$connect$manager$LanguageManager$ValidCommands:[I

    invoke-virtual {p1}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5c

    .line 571
    const-string v1, "all"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-virtual {p1}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 573
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 574
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    .line 576
    :goto_26
    return-object v0

    .line 549
    :pswitch_27
    invoke-virtual {p1}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 550
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 551
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    goto :goto_26

    .line 554
    :pswitch_34
    invoke-virtual {p1}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 555
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 556
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    goto :goto_26

    .line 559
    :pswitch_41
    invoke-virtual {p1}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 560
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 561
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    goto :goto_26

    .line 564
    :pswitch_4e
    invoke-virtual {p1}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 565
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 566
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    goto :goto_26

    .line 546
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_34
        :pswitch_41
        :pswitch_4e
    .end packed-switch
.end method

.method private doNotify(Ljava/lang/String;)V
    .registers 7
    .parameter "message"

    .prologue
    const v4, 0x7f0d000a

    .line 807
    new-instance v1, Lcom/swype/android/connect/util/ConnectNotification;

    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-direct {v1, v2}, Lcom/swype/android/connect/util/ConnectNotification;-><init>(Landroid/content/Context;)V

    .line 808
    .local v1, notification:Lcom/swype/android/connect/util/ConnectNotification;
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/util/ConnectNotification;->setTitle(I)V

    .line 809
    const-string v2, "com.swype.android.settings.SwypeInputMethodSettingsLanguages"

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/util/ConnectNotification;->createIntent(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1, p1}, Lcom/swype/android/connect/util/ConnectNotification;->setText(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v1}, Lcom/swype/android/connect/util/ConnectNotification;->setFlagAutoCancel()V

    .line 813
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/swype/android/connect/ConnectClient;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030005

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 814
    .local v0, contentView:Landroid/widget/RemoteViews;
    const v2, 0x7f0d0009

    const v3, 0x7f020019

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 815
    invoke-virtual {v0, v4, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 816
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-static {v2}, Lcom/swype/android/connect/util/ConnectNotification;->getNotificationColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 817
    invoke-virtual {v1, v0}, Lcom/swype/android/connect/util/ConnectNotification;->setContentView(Landroid/widget/RemoteViews;)V

    .line 818
    invoke-virtual {v1}, Lcom/swype/android/connect/util/ConnectNotification;->showAndCleanup()V

    .line 819
    return-void
.end method

.method public static getAvailableLanguages(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 896
    const-string v0, "LANGUAGES_AVAILABLE_DL"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/swype/android/connect/util/FilePreference;->readStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    if-nez v0, :cond_10

    .line 898
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 910
    :goto_f
    return-object v0

    .line 901
    :cond_10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 902
    const-string v2, "\\|\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 903
    array-length v2, v0

    move v3, v7

    :goto_1d
    if-ge v3, v2, :cond_36

    aget-object v4, v0, v3

    .line 904
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 905
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_33

    .line 906
    aget-object v5, v4, v7

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_36
    move-object v0, v1

    .line 910
    goto :goto_f
.end method

.method public static getInstalledLanguageCount(Landroid/content/Context;)I
    .registers 3
    .parameter

    .prologue
    .line 1027
    const-string v0, "LANGUAGES_COUNT"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/swype/android/connect/util/FilePreference;->readIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstalledLanguages(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 974
    #calls: Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->loadMetadataPref(Landroid/content/Context;)Ljava/util/HashMap;
    invoke-static {p0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->access$000(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 976
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 977
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "STEP"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_11

    .line 978
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 981
    :cond_3a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4e

    .line 982
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    .line 984
    :goto_4d
    return-object v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method public static getInstallingLanguages(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 1006
    #calls: Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->loadMetadataPref(Landroid/content/Context;)Ljava/util/HashMap;
    invoke-static {p0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->access$000(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 1007
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 1009
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "STEP"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1010
    if-ltz v0, :cond_34

    const/4 v3, 0x6

    if-le v0, v3, :cond_38

    :cond_34
    const/16 v3, 0x9

    if-ne v0, v3, :cond_11

    .line 1011
    :cond_38
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1014
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadingLanguages() installing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1015
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static isLanguageListReady(Landroid/content/Context;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 957
    const-string v0, "DOWNLOAD_LIST_STATE"

    invoke-static {p0, v0, v3}, Lcom/swype/android/connect/util/FilePreference;->readIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLanguageListReady()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 959
    if-nez v0, :cond_21

    move v0, v3

    .line 962
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20
.end method

.method private loadAvailableLanguages()V
    .registers 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-static {v0}, Lcom/swype/android/connect/manager/LanguageManager;->getAvailableLanguages(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languagesAvailForDownload:Ljava/util/HashMap;

    .line 893
    return-void
.end method

.method private loadPreferences()V
    .registers 4

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LanguageManager;->loadAvailableLanguages()V

    .line 234
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "DOWNLOAD_LIST_STATE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/swype/android/connect/util/FilePreference;->readIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->downloadListState:I

    .line 235
    return-void
.end method

.method private processAckLanguagePackResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAckLanguagePackResponse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 454
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->initialCommand:Lcom/swype/android/connect/util/Command;

    iget-object v0, v0, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "languageId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    const-string v1, "SUCCESS"

    iget-object v2, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 456
    const-string v1, "processAckLanguagePackResponse() -- SUCCESS sending message to Swype"

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 458
    const-string v1, "STEP"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 460
    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v4, "filePath"

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v4, 0x59

    invoke-virtual {v1, v4, v3}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 463
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v1, v0, v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 469
    :goto_67
    return-void

    .line 466
    :cond_68
    invoke-direct {p0, v0, v3, v3}, Lcom/swype/android/connect/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V

    .line 467
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    goto :goto_67
.end method

.method private processDownloadLanguagePackResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 7
    .parameter

    .prologue
    .line 413
    const-string v0, "processDownloadLanguagePackResponse()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 414
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->initialCommand:Lcom/swype/android/connect/util/Command;

    iget-object v0, v0, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "languageId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 417
    iget-object v2, p1, Lcom/swype/android/connect/util/Response;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/swype/android/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 418
    const-string v3, "FILE_LOCATION"

    iget-object v4, p1, Lcom/swype/android/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v3, "CHECKSUM"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v2, "STEP"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v2, v0, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language pack file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/swype/android/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->ackLanguagePack(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private processGetLanguagePackResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 346
    const-string v0, "processGetLanguagePackResponse()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 348
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->initialCommand:Lcom/swype/android/connect/util/Command;

    iget-object v0, v0, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "languageId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    const-string v1, "SUCCESS"

    iget-object v2, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 352
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 353
    const-string v2, "TRANSACTION_ID"

    iget-object v3, p1, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v2, "URL"

    iget-object v3, p1, Lcom/swype/android/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v2, "STEP"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v2, v0, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 358
    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/manager/LanguageManager;->downloadLanguagePack(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :goto_45
    return-void

    .line 360
    :cond_46
    iget v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->lastCommandRetryCount:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_71

    .line 361
    invoke-direct {p0, v0, v4, v5}, Lcom/swype/android/connect/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V

    .line 362
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/swype/android/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 363
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 364
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 366
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/manager/LanguageManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/swype/android/connect/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto :goto_45

    .line 369
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processGetLanguagePackResponse() server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifying user. giving up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/ConnectClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    const/4 v2, 0x1

    :try_start_9b
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a3} :catch_ab

    move-result-object v1

    .line 376
    :goto_a4
    invoke-direct {p0, v0, v4, v5}, Lcom/swype/android/connect/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V

    .line 377
    invoke-direct {p0, v1}, Lcom/swype/android/connect/manager/LanguageManager;->doNotify(Ljava/lang/String;)V

    goto :goto_45

    :catch_ab
    move-exception v2

    goto :goto_a4
.end method

.method private processQueuedInstalls()V
    .registers 13

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 718
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getAllLanguages()Ljava/util/Set;

    move-result-object v1

    .line 721
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->isInstalling()Z

    move-result v2

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processQueuedInstalls() isInstalling "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 723
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v10

    move v5, v2

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ef

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 724
    iget-object v6, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v7, "STEP"

    invoke-virtual {v6, v0, v7}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 725
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processQueuedInstalls() lang: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " step: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 727
    const/4 v7, 0x6

    if-ne v6, v7, :cond_84

    .line 728
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processQueuedInstalls() lang: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " Installed "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_2c

    .line 731
    :cond_84
    const/4 v7, 0x5

    if-ne v6, v7, :cond_a5

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processQueuedInstalls() lang: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Installed, pending license "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    move v4, v9

    .line 734
    goto :goto_2c

    .line 736
    :cond_a5
    iget-object v7, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v8, "TRANSACTION_ID"

    invoke-virtual {v7, v0, v8}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 737
    if-nez v6, :cond_107

    if-nez v2, :cond_107

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processQueuedInstalls() lang: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INSTALL_PENDING. starting now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    move v0, v9

    .line 781
    :goto_d1
    iget-boolean v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageRemovalInProcess:Z

    if-nez v2, :cond_1e7

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    const-string v3, ""

    .line 784
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :cond_e1
    :goto_e1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1df

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 785
    iget-object v6, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v7, "STEP"

    invoke-virtual {v6, v0, v7}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 786
    if-ne v6, v11, :cond_e1

    .line 787
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const-string v0, ","

    move-object v3, v0

    move v5, v9

    .line 790
    goto :goto_e1

    .line 743
    :cond_107
    if-eq v6, v9, :cond_10c

    const/4 v8, 0x2

    if-ne v6, v8, :cond_147

    .line 745
    :cond_10c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processQueuedInstalls() lang: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INSTALL_REQUEST or INSTALL_DOWNLOAD . starting now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 746
    if-eqz v7, :cond_137

    const-string v2, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_137

    .line 747
    const-string v2, "INSTALL_FAILED"

    invoke-virtual {p0, v0, v2, v7}, Lcom/swype/android/connect/manager/LanguageManager;->sendStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_137
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v3, "STEP"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v3, v6}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    move v0, v5

    .line 752
    goto :goto_d1

    .line 753
    :cond_147
    const/4 v7, 0x3

    if-ne v6, v7, :cond_19a

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processQueuedInstalls() lang: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INSTALL_DOWNLOAD_COMPLETE. ack now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 756
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v3, "FILE_LOCATION"

    invoke-virtual {v2, v0, v3}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    if-eqz v2, :cond_189

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_189

    .line 758
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_186

    .line 760
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->ackLanguagePack(Ljava/lang/String;)V

    :cond_186
    move v0, v5

    .line 762
    goto/16 :goto_d1

    .line 763
    :cond_189
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v3, "STEP"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v3, v6}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    move v0, v5

    .line 766
    goto/16 :goto_d1

    .line 767
    :cond_19a
    const/4 v7, 0x4

    if-ne v6, v7, :cond_1da

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processQueuedInstalls() lang: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INSTALL_DOWNLOAD_VERIFIED. install now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 769
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 770
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v3, "filePath"

    iget-object v6, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v7, "FILE_LOCATION"

    invoke-virtual {v6, v0, v7}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v3, 0x59

    invoke-virtual {v0, v3, v2}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    move v0, v5

    .line 773
    goto/16 :goto_d1

    .line 774
    :cond_1da
    if-ne v6, v11, :cond_2c

    move v5, v9

    .line 776
    goto/16 :goto_2c

    .line 793
    :cond_1df
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->removeLanguages(Ljava/lang/String;)V

    move v0, v5

    .line 797
    :cond_1e7
    if-nez v0, :cond_1ee

    if-eqz v4, :cond_1ee

    .line 798
    invoke-direct {p0, v10}, Lcom/swype/android/connect/manager/LanguageManager;->requestUpdatedLicense(Z)V

    .line 800
    :cond_1ee
    return-void

    :cond_1ef
    move v0, v5

    goto/16 :goto_d1
.end method

.method private processRequestLanguagesListResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 8
    .parameter

    .prologue
    .line 276
    const-string v0, "processRequestLanguagesListResponse()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 277
    const-string v0, "SUCCESS"

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 278
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "languageList"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 279
    const-string v0, "Processing languages available for download."

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 281
    :try_start_1e
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "languageList"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 282
    if-eqz v0, :cond_97

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_80

    .line 285
    const/4 v2, 0x0

    :goto_36
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_80

    .line 286
    iget-object v3, p0, Lcom/swype/android/connect/manager/LanguageManager;->languagesAvailForDownload:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5d

    .line 289
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to available downloadable languages."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 294
    :cond_80
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LanguageManager;->saveAvailableLanguages()V

    .line 296
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languagesAvailForDownload:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v2, 0x5b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V
    :try_end_97
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_97} :catch_a7

    .line 305
    :cond_97
    :goto_97
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 306
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 307
    return-void

    .line 299
    :catch_a7
    move-exception v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure processing JSON language list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_97
.end method

.method private processSendStatusResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter

    .prologue
    .line 497
    const-string v0, "SUCCESS"

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    return-void
.end method

.method private requestUpdatedLicense(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 923
    const-string v0, "requestUpdatedLicense()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 925
    if-nez p1, :cond_4d

    .line 926
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->hasMoreInstalls()Z

    move-result v0

    if-nez v0, :cond_4b

    move v0, v3

    .line 928
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestUpdatedLicense() allInstallsComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 929
    if-eqz v0, :cond_4a

    .line 930
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 931
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 932
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 933
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 934
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 935
    iput-boolean v4, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageRemovalInProcess:Z

    .line 937
    :cond_4a
    return-void

    :cond_4b
    move v0, v4

    .line 926
    goto :goto_12

    :cond_4d
    move v0, v3

    goto :goto_12
.end method

.method private saveAvailableLanguages()V
    .registers 5

    .prologue
    .line 880
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 881
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languagesAvailForDownload:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 882
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    const-string v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->languagesAvailForDownload:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    const-string v0, "||"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 887
    :cond_3e
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "LANGUAGES_AVAILABLE_DL"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/swype/android/connect/util/FilePreference;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 889
    return-void
.end method

.method private sendLanguageDownloadStatus(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 993
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.DownloadLanguageProgress"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    const-string v1, "Progress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 995
    const-string v1, "Language"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/ConnectClient;->sendBroadcast(Landroid/content/Intent;)V

    .line 997
    return-void
.end method


# virtual methods
.method public ackLanguagePack(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 436
    const-string v0, "ackLanguagePack()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 438
    sget-object v0, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-direct {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->createCommand(Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v2

    .line 439
    const-string v0, "TRANSACTION_ID"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 440
    iget-object v0, v2, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "checksum"

    const-string v4, "CHECKSUM"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, v2, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "languageId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-virtual {p0, v2}, Lcom/swype/android/connect/manager/LanguageManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 443
    return-void
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .parameter "type"
    .parameter "data"

    .prologue
    .line 227
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 220
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0, v1, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->saveMetadata(ZZ)V

    .line 221
    return-void
.end method

.method public downloadLanguagePack(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    const-string v0, "downloadLanguagePack()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 394
    sget-object v0, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->downloadLangPack:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 395
    iput-object p2, v0, Lcom/swype/android/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 396
    sget-object v1, Lcom/swype/android/connect/util/Command;->GET:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->method:Ljava/lang/String;

    .line 397
    iput-boolean v2, v0, Lcom/swype/android/connect/util/Command;->hasBody:Z

    .line 398
    iput-boolean v2, v0, Lcom/swype/android/connect/util/Command;->handleIOException:Z

    .line 399
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->notifyDownloadStatus:Z

    .line 400
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 401
    iget-object v1, v0, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "languageId"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 403
    return-void
.end method

.method public finishLanguageInstall(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishLanguageInstall("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 591
    const-string v2, "INSTALLED"

    const-string v0, "TRANSACTION_ID"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0}, Lcom/swype/android/connect/manager/LanguageManager;->sendStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v0, "STEP"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v0, "TRANSACTION_ID"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v0, "FILE_LOCATION"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v0, "CHECKSUM"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v0, "URL"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0, p1, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 598
    const/16 v0, 0x65

    invoke-direct {p0, p1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->sendLanguageDownloadStatus(Ljava/lang/String;I)V

    .line 600
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->hasMoreInstalls()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->hasMoreRemoves()Z

    move-result v0

    if-nez v0, :cond_78

    .line 601
    const-string v0, "finishLanguageInstall() -  All installs complete.  Updating device.  Requesting license."

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 603
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->requestUpdatedLicense(Z)V

    .line 607
    :goto_77
    return-void

    .line 605
    :cond_78
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LanguageManager;->processQueuedInstalls()V

    goto :goto_77
.end method

.method public finishLanguageRemove(Ljava/lang/String;)V
    .registers 4
    .parameter "lang"

    .prologue
    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishLanguageRemove("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 640
    const-string v0, "REMOVED"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/swype/android/connect/manager/LanguageManager;->sendStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->removeLanguage(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->hasMoreInstalls()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->hasMoreRemoves()Z

    move-result v0

    if-nez v0, :cond_42

    .line 644
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 645
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->requestUpdatedLicense(Z)V

    .line 647
    :cond_42
    return-void
.end method

.method public getLanguagePack(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLanguagePack(lang: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languagesAvailForDownload:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Language is not available for download! ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 337
    :goto_40
    return-void

    .line 322
    :cond_41
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->addLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 323
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/manager/LanguageManager;->sendLanguageDownloadStatus(Ljava/lang/String;I)V

    .line 327
    :cond_4e
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->isInstalling()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Another language is already installing.  Adding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to queue to process later."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_40

    .line 332
    :cond_73
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v1, "STEP"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->get:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-direct {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->createCommand(Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 335
    iget-object v1, v0, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "languageId"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    goto :goto_40
.end method

.method public onDownloadStatusResponse(Lcom/swype/android/connect/util/Command;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    if-ltz p2, :cond_2d

    .line 505
    sget-object v0, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->downloadLangPack:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 506
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 508
    rem-int/lit8 v0, v1, 0x3

    if-eqz v0, :cond_1f

    rem-int/lit8 v0, v1, 0x64

    if-nez v0, :cond_2c

    .line 509
    :cond_1f
    iget-object v0, p1, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "languageId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/manager/LanguageManager;->sendLanguageDownloadStatus(Ljava/lang/String;I)V

    .line 521
    :cond_2c
    :goto_2c
    return-void

    .line 514
    :cond_2d
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/LanguageManager;->unwind()V

    .line 516
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto :goto_2c
.end method

.method public onFileResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 252
    sget-object v0, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->downloadLangPack:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 253
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/LanguageManager;->processDownloadLanguagePackResponse(Lcom/swype/android/connect/util/Response;)V

    .line 255
    :cond_11
    return-void
.end method

.method public onIOExceptionResponse(Lcom/swype/android/connect/util/Command;)V
    .registers 6
    .parameter "command"

    .prologue
    const/4 v3, 0x1

    .line 525
    if-eqz p1, :cond_23

    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    sget-object v2, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->downloadLangPack:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-virtual {v2}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 527
    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "languageId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 529
    invoke-direct {p0, v0, v3, v3}, Lcom/swype/android/connect/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V

    .line 530
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    .line 534
    .end local v0           #lang:Ljava/lang/String;
    :cond_23
    return-void
.end method

.method public onResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter

    .prologue
    .line 239
    sget-object v0, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->list:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 240
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/LanguageManager;->processRequestLanguagesListResponse(Lcom/swype/android/connect/util/Response;)V

    .line 248
    :cond_11
    :goto_11
    return-void

    .line 241
    :cond_12
    sget-object v0, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->get:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 242
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/LanguageManager;->processGetLanguagePackResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_11

    .line 243
    :cond_24
    sget-object v0, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 244
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/LanguageManager;->processAckLanguagePackResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_11

    .line 245
    :cond_36
    sget-object v0, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->status:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 246
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/LanguageManager;->processSendStatusResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_11
.end method

.method public prepareForUpgrade()V
    .registers 5

    .prologue
    .line 825
    const-string v0, "prepareForUpgrade()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "LANGUAGE_UPGRADE_DATA"

    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getAllMetadata()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 830
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    monitor-enter v0

    .line 831
    :try_start_1e
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getAllLanguages()Ljava/util/Set;

    move-result-object v1

    .line 832
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->clear()V

    .line 833
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_42

    .line 834
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 835
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    goto :goto_2e

    .line 833
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1

    .line 837
    :cond_45
    return-void
.end method

.method public receivedLicense()V
    .registers 5

    .prologue
    .line 944
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->updateLanguagesPendingLicense()V

    .line 946
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x36

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/swype/android/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 947
    return-void
.end method

.method public removeLanguage(Ljava/lang/String;)V
    .registers 5
    .parameter "language"

    .prologue
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeLanguage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v1, "STEP"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, p1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 618
    return-void
.end method

.method public removeLanguages(Ljava/lang/String;)V
    .registers 9
    .parameter "languages"

    .prologue
    .line 625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeLanguages("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 626
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_24
    if-ge v1, v3, :cond_38

    aget-object v2, v0, v1

    .line 627
    .local v2, lang:Ljava/lang/String;
    iget-object v4, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const-string v5, "STEP"

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 629
    .end local v2           #lang:Ljava/lang/String;
    :cond_38
    iget-object v4, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5, p1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 630
    iget-object v4, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v5, 0x36

    invoke-virtual {v4, v5}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 631
    return-void
.end method

.method public requestLanguagesList()V
    .registers 3

    .prologue
    .line 262
    sget-object v1, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->list:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-direct {p0, v1}, Lcom/swype/android/connect/manager/LanguageManager;->createCommand(Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 263
    .local v0, command:Lcom/swype/android/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 264
    return-void
.end method

.method public sendStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    const-string v0, "SendStatus()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 482
    sget-object v0, Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;->status:Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;

    invoke-direct {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->createCommand(Lcom/swype/android/connect/manager/LanguageManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 483
    iget-object v1, v0, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "languageId"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v1, v0, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "status"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    if-eqz p3, :cond_1d

    .line 486
    iput-object p3, v0, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 488
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 489
    return-void
.end method

.method public setDisplayLanguages(Ljava/util/HashMap;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 868
    const-string v0, "setDisplayLanguages()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 869
    iput-object p1, p0, Lcom/swype/android/connect/manager/LanguageManager;->languagesAvailForDownload:Ljava/util/HashMap;

    .line 870
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LanguageManager;->saveAvailableLanguages()V

    .line 871
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languagesAvailForDownload:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 872
    const/4 v0, 0x1

    iput v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->downloadListState:I

    .line 876
    :goto_15
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "DOWNLOAD_LIST_STATE"

    iget v2, p0, Lcom/swype/android/connect/manager/LanguageManager;->downloadListState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/swype/android/connect/util/FilePreference;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 877
    return-void

    .line 874
    :cond_23
    const/4 v0, 0x2

    iput v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->downloadListState:I

    goto :goto_15
.end method

.method public start()V
    .registers 3

    .prologue
    .line 204
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 206
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LanguageManager;->loadPreferences()V

    .line 207
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 208
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LanguageManager;->processQueuedInstalls()V

    .line 209
    iget v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->downloadListState:I

    if-nez v0, :cond_1a

    .line 210
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/LanguageManager;->requestLanguagesList()V

    .line 216
    :goto_19
    return-void

    .line 214
    :cond_1a
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 215
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public unwind()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 695
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 698
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 699
    invoke-direct {p0, v0, v5, v4}, Lcom/swype/android/connect/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V

    goto :goto_3c

    .line 701
    :cond_4c
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 702
    invoke-direct {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->doNotify(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public upgrade()V
    .registers 6

    .prologue
    .line 846
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 847
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v2, "LANGUAGE_UPGRADE_DATA"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 848
    if-eqz v0, :cond_18

    .line 849
    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    .line 851
    :cond_18
    iget v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->downloadListState:I

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    move v2, v0

    .line 853
    :goto_1e
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 854
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 855
    if-eqz v2, :cond_43

    if-eqz v2, :cond_46

    iget-object v4, p0, Lcom/swype/android/connect/manager/LanguageManager;->languagesAvailForDownload:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 856
    :cond_43
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    .line 858
    :cond_46
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 851
    :cond_4a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1e

    .line 860
    :cond_4d
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v2, "LANGUAGE_UPGRADE_DATA"

    invoke-static {v1}, Lcom/swype/android/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return-void
.end method
