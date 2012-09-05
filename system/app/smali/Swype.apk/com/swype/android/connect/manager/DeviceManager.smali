.class public Lcom/swype/android/connect/manager/DeviceManager;
.super Lcom/swype/android/connect/manager/AbstractCommandManager;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/manager/DeviceManager$1;,
        Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;
    }
.end annotation


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "device"

.field public static final DEVICE_PREFERENCE:Ljava/lang/String; = "DEVICE_ID"

.field private static final DEVICE_PROPERTIES_KEY_PREFIX:Ljava/lang/String; = "DEVICE_PROPERTIES_"

.field private static final DEVICE_TEMP_PREFERENCE:Ljava/lang/String; = "DEVICE_ACK_ID"

.field private static final DEVICE_TRANSACTION_PREFERENCE:Ljava/lang/String; = "DEVICE_TRANSID"

.field public static final DEVICE_TRIAL_PREFERENCE:Ljava/lang/String; = "DEVICE_LENGTH"

.field public static final SWYPER_ID_PREFERENCE:Ljava/lang/String; = "SWYPER_ID"

.field public static final SWYPER_TEMP_PREFERENCE:Ljava/lang/String; = "TEMP_SWYPER_ID"

.field public static final TIMER_DEFAULT_DELAY_PREFERENCE:Ljava/lang/String; = "DEFAULT_DELAY"

.field public static final TIMER_POLLING_FREQUENCY_PREFERENCE:Ljava/lang/String; = "POLLING_FREQUENCY"

.field public static final TIMER_REPORTING_FREQUENCY_PREFERENCE:Ljava/lang/String; = "REPORTING_FREQUENCY"


# instance fields
.field private volatile deviceId:Ljava/lang/String;

.field private deviceProperties:Ljava/util/HashMap;
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

.field private volatile preAckDeviceId:Ljava/lang/String;

.field private volatile preAckSwyperId:Ljava/lang/String;

.field private volatile swyperId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 121
    const/4 v0, 0x3

    iput v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->version:I

    .line 122
    const-string v0, "device"

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->commandFamily:Ljava/lang/String;

    .line 123
    return-void
.end method

.method private createCommand(Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;)Lcom/swype/android/connect/util/Command;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 687
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 689
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$1;->$SwitchMap$com$swype$android$connect$manager$DeviceManager$ValidCommands:[I

    invoke-virtual {p1}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_9e

    .line 724
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string v1, "deviceProperties"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->update:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 727
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 730
    :goto_2c
    return-object v0

    .line 691
    :pswitch_2d
    const-string v1, "deviceType"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v1, "deviceProperties"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->register:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 694
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 695
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    .line 696
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->needDevice:Z

    goto :goto_2c

    .line 699
    :pswitch_4c
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 702
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 703
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->needDevice:Z

    .line 704
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    goto :goto_2c

    .line 707
    :pswitch_68
    const-string v1, "deviceProperties"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 709
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 710
    iget-object v1, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    goto :goto_2c

    .line 713
    :pswitch_80
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->timers:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 714
    iput-boolean v4, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 715
    iput-boolean v4, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    goto :goto_2c

    .line 718
    :pswitch_8f
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->getSwyperId:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 719
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 720
    iput-boolean v4, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    goto :goto_2c

    .line 689
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_4c
        :pswitch_68
        :pswitch_80
        :pswitch_8f
    .end packed-switch
.end method

.method public static getSavedProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 741
    const-string v0, "ConnectPrefs"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 743
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    return-object v0
.end method

.method public static getSavedSwyperId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 734
    const-string v0, "ConnectPrefs"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 736
    const-string v1, "SWYPER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    return-object v0
.end method

.method private processDeviceValidateRequest(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter

    .prologue
    .line 496
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "propertiesToValidate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method private processRegisterDeviceAckResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 377
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/connect/manager/DeviceManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 414
    :cond_d
    :goto_d
    return-void

    .line 381
    :cond_e
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "INVALID_TRANSACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "INVALID_ARGUMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 386
    :cond_2c
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 387
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 388
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 389
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 390
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 391
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEVICE_ACK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TEMP_SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    sget-object v1, Lcom/swype/android/connect/ConnectClient$DeviceState;->INVALID:Lcom/swype/android/connect/ConnectClient$DeviceState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->setDeviceIdState(Lcom/swype/android/connect/ConnectClient$DeviceState;)V

    .line 399
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto :goto_d

    .line 400
    :cond_64
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 401
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 402
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRegisterDeviceAckResponse() swyperId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 405
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 406
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 407
    invoke-direct {p0}, Lcom/swype/android/connect/manager/DeviceManager;->savePreferences()V

    .line 409
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->backupNow()V

    .line 410
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 411
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 412
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method private processRegisterDeviceResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x22

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 292
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->register:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v4}, Lcom/swype/android/connect/manager/DeviceManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 333
    :cond_e
    :goto_e
    return-void

    .line 297
    :cond_f
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0, v3}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 299
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 300
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 301
    iput-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 302
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 303
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "swyperId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 304
    iput-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    sget-object v1, Lcom/swype/android/connect/ConnectClient$DeviceState;->PROCESSING:Lcom/swype/android/connect/ConnectClient$DeviceState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->setDeviceIdState(Lcom/swype/android/connect/ConnectClient$DeviceState;)V

    .line 306
    invoke-direct {p0}, Lcom/swype/android/connect/manager/DeviceManager;->savePreferences()V

    .line 307
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 308
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->registerDeviceAck()V

    goto :goto_e

    .line 310
    :cond_4c
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "INVALID_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "INVALID_ARGUMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 313
    :cond_60
    iput-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 314
    iput-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 315
    iput-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 316
    iput-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 317
    iput-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 318
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEVICE_ACK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const-string v1, "TEMP_SWYPER_ID"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    sget-object v1, Lcom/swype/android/connect/ConnectClient$DeviceState;->INVALID:Lcom/swype/android/connect/ConnectClient$DeviceState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->setDeviceIdState(Lcom/swype/android/connect/ConnectClient$DeviceState;)V

    .line 329
    iget v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->lastCommandRetryCount:I

    if-ge v0, v3, :cond_e

    .line 330
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/swype/android/connect/ConnectClient;->postMessageDelayed(IJ)V

    goto/16 :goto_e
.end method

.method private processRequestSwyperIdResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 611
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 612
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "swyperId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 613
    invoke-direct {p0}, Lcom/swype/android/connect/manager/DeviceManager;->savePreferences()V

    .line 615
    :cond_19
    return-void
.end method

.method private processRequestTimersResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 567
    const-string v0, "processRequestTimersResponse()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 568
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 569
    const/4 v0, 0x0

    .line 570
    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    .line 571
    const-string v2, "defaultDelay"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 573
    :try_start_1b
    const-string v2, "defaultDelay"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultDelay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 575
    iget-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v4, "DEFAULT_DELAY"

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_4e} :catch_d3

    move v0, v5

    .line 580
    :cond_4f
    :goto_4f
    const-string v2, "pollingFrequency"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 582
    :try_start_57
    const-string v2, "pollingFrequency"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pollingFrequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 584
    iget-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v4, "POLLING_FREQUENCY"

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_8a} :catch_d1

    move v0, v5

    .line 589
    :cond_8b
    :goto_8b
    const-string v2, "reportingFrequency"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 591
    :try_start_93
    const-string v2, "reportingFrequency"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportingFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v3, "REPORTING_FREQUENCY"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_c6} :catch_cf

    move v0, v5

    .line 598
    :cond_c7
    :goto_c7
    if-eqz v0, :cond_ce

    .line 599
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->overrideTimerValues()V

    .line 602
    :cond_ce
    return-void

    :catch_cf
    move-exception v1

    goto :goto_c7

    :catch_d1
    move-exception v2

    goto :goto_8b

    :catch_d3
    move-exception v2

    goto/16 :goto_4f
.end method

.method private processUpdateDeviceRegistrationResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x24

    .line 475
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->update:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/swype/android/connect/manager/DeviceManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 493
    :cond_c
    :goto_c
    return-void

    .line 479
    :cond_d
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 480
    invoke-direct {p0}, Lcom/swype/android/connect/manager/DeviceManager;->savePreferences()V

    .line 481
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 483
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->backupNow()V

    goto :goto_c

    .line 485
    :cond_26
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 486
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->update:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/connect/manager/DeviceManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->lastCommandRetryCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_c

    .line 488
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/swype/android/connect/ConnectClient;->postMessageDelayed(IJ)V

    goto :goto_c

    .line 490
    :cond_4d
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "INVALID_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 491
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->registerDevice()V

    goto :goto_c
.end method

.method private processValidateDeviceRegistrationResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x25

    .line 529
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/swype/android/connect/manager/DeviceManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 544
    :cond_c
    :goto_c
    return-void

    .line 534
    :cond_d
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 536
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "INVALID_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 537
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/connect/manager/DeviceManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->lastCommandRetryCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_3d

    .line 539
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/swype/android/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 541
    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->systemInvalidate()V

    goto :goto_c
.end method

.method public static retrieveSerializedProperties(Lcom/swype/android/connect/ConnectClient;)Ljava/util/HashMap;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swype/android/connect/ConnectClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 660
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 661
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 662
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 663
    const-string v3, "DEVICE_PROPERTIES_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 664
    const-string v3, "DEVICE_ID"

    const-string v4, "DEVICE_PROPERTIES_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 666
    const-string v3, "DEVICE_PROPERTIES_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/swype/android/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 669
    :cond_52
    const-string v3, "DEVICE_PROPERTIES_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 675
    :cond_64
    return-object v0
.end method

.method private savePreferences()V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_6c

    .line 231
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "DEVICE_ACK_ID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_d
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_72

    .line 237
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "DEVICE_TRANSID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_1a
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    if-eqz v0, :cond_78

    .line 243
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "TEMP_SWYPER_ID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_27
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 249
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "SWYPER_ID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    const-string v1, "SWYPER_ID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :goto_3d
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 256
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "DEVICE_ID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    const-string v1, "DEVICE_ID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_53
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 263
    const-string v1, "DEVICE_ID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-static {v2}, Lcom/swype/android/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-static {v1, v0}, Lcom/swype/android/connect/manager/DeviceManager;->saveSerializedProperties(Lcom/swype/android/connect/ConnectClient;Ljava/util/HashMap;)V

    .line 265
    return-void

    .line 233
    :cond_6c
    const-string v0, "DEVICE_ACK_ID"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_d

    .line 239
    :cond_72
    const-string v0, "DEVICE_TRANSID"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_1a

    .line 245
    :cond_78
    const-string v0, "TEMP_SWYPER_ID"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_27

    .line 252
    :cond_7e
    const-string v0, "SWYPER_ID"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public static saveSerializedProperties(Lcom/swype/android/connect/ConnectClient;Ljava/util/HashMap;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swype/android/connect/ConnectClient;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 644
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 645
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVICE_PROPERTIES_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 648
    :cond_39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 649
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .parameter "type"
    .parameter "data"

    .prologue
    .line 205
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    .line 175
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 628
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->loadPreferences()V

    .line 630
    :cond_7
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public loadPreferences()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "DEVICE_ID"

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "DEVICE_TRANSID"

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "DEVICE_ACK_ID"

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "SWYPER_ID"

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "TEMP_SWYPER_ID"

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 219
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    sget-object v1, Lcom/swype/android/connect/ConnectClient$DeviceState;->VALID:Lcom/swype/android/connect/ConnectClient$DeviceState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->setDeviceIdState(Lcom/swype/android/connect/ConnectClient$DeviceState;)V

    .line 222
    :cond_3e
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    .line 223
    return-void
.end method

.method public onResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter

    .prologue
    .line 180
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->register:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 181
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/DeviceManager;->processRegisterDeviceResponse(Lcom/swype/android/connect/util/Response;)V

    .line 200
    :cond_11
    :goto_11
    return-void

    .line 182
    :cond_12
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 183
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/DeviceManager;->processRegisterDeviceAckResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_11

    .line 184
    :cond_24
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->update:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 185
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/DeviceManager;->processUpdateDeviceRegistrationResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_11

    .line 186
    :cond_36
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 187
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/DeviceManager;->processValidateDeviceRegistrationResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_11

    .line 188
    :cond_48
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->timers:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 189
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/DeviceManager;->processRequestTimersResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_11

    .line 190
    :cond_5a
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->getSwyperId:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 191
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/DeviceManager;->processRequestSwyperIdResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_11

    .line 194
    :cond_6c
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "propertiesToValidate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 195
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/DeviceManager;->processDeviceValidateRequest(Lcom/swype/android/connect/util/Response;)V

    goto :goto_11
.end method

.method public postStart()V
    .registers 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->requestTimers()V

    .line 169
    return-void
.end method

.method public registerDevice()V
    .registers 4

    .prologue
    .line 274
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->register:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-direct {p0, v1}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 275
    .local v0, command:Lcom/swype/android/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 276
    iget-object v1, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    sget-object v2, Lcom/swype/android/connect/ConnectClient$DeviceState;->PROCESSING:Lcom/swype/android/connect/ConnectClient$DeviceState;

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/ConnectClient;->setDeviceIdState(Lcom/swype/android/connect/ConnectClient$DeviceState;)V

    .line 277
    iget-object v1, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 278
    return-void
.end method

.method public registerDeviceAck()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 343
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 344
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-direct {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 345
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 346
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 364
    :goto_19
    return-void

    .line 348
    :cond_1a
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEVICE_ACK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TEMP_SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    .line 355
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 356
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 357
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 358
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 359
    iput-object v3, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    sget-object v1, Lcom/swype/android/connect/ConnectClient$DeviceState;->INVALID:Lcom/swype/android/connect/ConnectClient$DeviceState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->setDeviceIdState(Lcom/swype/android/connect/ConnectClient$DeviceState;)V

    .line 361
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->registerDevice()V

    goto :goto_19
.end method

.method public requestSwyperId()V
    .registers 3

    .prologue
    .line 605
    const-string v1, "requestSwyperId()"

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 606
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->getSwyperId:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-direct {p0, v1}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 607
    .local v0, command:Lcom/swype/android/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 608
    return-void
.end method

.method public requestTimers()V
    .registers 3

    .prologue
    .line 553
    const-string v1, "requestTimers()"

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 554
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->timers:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-direct {p0, v1}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 555
    .local v0, command:Lcom/swype/android/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 556
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 129
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 130
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->loadPreferences()V

    .line 132
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 133
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 134
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 136
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    .line 164
    :cond_2a
    :goto_2a
    return-void

    .line 139
    :cond_2b
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 140
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 143
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->registerDeviceAck()V

    goto :goto_2a

    .line 146
    :cond_3b
    const-string v0, "DeviceManager- deviceId state mismatch"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->registerDevice()V

    goto :goto_2a

    .line 149
    :cond_44
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_54

    .line 150
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    .line 151
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->registerDevice()V

    goto :goto_2a

    .line 153
    :cond_54
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->updateDeviceRegistration()V

    .line 156
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-nez v0, :cond_62

    .line 157
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/DeviceManager;->requestSwyperId()V

    .line 160
    :cond_62
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 161
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public updateDeviceRegistration()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 424
    sget-object v0, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->update:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-direct {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v1

    .line 427
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-static {v0}, Lcom/swype/android/connect/manager/DeviceManager;->retrieveSerializedProperties(Lcom/swype/android/connect/ConnectClient;)Ljava/util/HashMap;

    move-result-object v0

    .line 428
    iget-object v2, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v5}, Lcom/swype/android/connect/ConnectClient;->compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    .line 429
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v3

    .line 430
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 433
    if-eqz v2, :cond_24

    array-length v0, v2

    if-nez v0, :cond_25

    .line 461
    :cond_24
    :goto_24
    return-void

    :cond_25
    move v6, v5

    .line 437
    :goto_26
    array-length v0, v2

    if-ge v5, v0, :cond_5b

    .line 438
    aget-object v7, v2, v5

    .line 439
    aget-object v0, v2, v5

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79

    if-eqz v0, :cond_79

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_79

    .line 441
    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v0, "SWYPE_VERSION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "SWIB"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 445
    :cond_56
    const/4 v0, 0x1

    .line 437
    :goto_57
    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_26

    .line 451
    :cond_5b
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 452
    if-eqz v6, :cond_68

    .line 453
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->notifyPossibleUpgrade()V

    .line 456
    :cond_68
    iget-object v0, v1, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "deviceProperties"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-virtual {p0, v1}, Lcom/swype/android/connect/manager/DeviceManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 458
    iget-object v0, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto :goto_24

    :cond_79
    move v0, v6

    goto :goto_57
.end method

.method public validateDeviceData()V
    .registers 4

    .prologue
    .line 511
    sget-object v1, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-direct {p0, v1}, Lcom/swype/android/connect/manager/DeviceManager;->createCommand(Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 513
    .local v0, command:Lcom/swype/android/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/DeviceManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 514
    iget-object v1, p0, Lcom/swype/android/connect/manager/DeviceManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 515
    return-void
.end method
