.class public Lcom/samsung/internal/AndroidSprintExtensionService;
.super Landroid/app/Service;
.source "AndroidSprintExtensionService.java"


# static fields
.field public static final Log_Tag:Z = true

.field private static final TAG:Ljava/lang/String; = "AndroidSprintExtensionService"


# instance fields
.field private DEBUG_LOG:Z

.field private mSprintExtension:Lcom/samsungframeworks/internal/SprintExtension;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->DEBUG_LOG:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 16

    .prologue
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .local v4, mdn:J
    const-wide/16 v6, 0x0

    .line 27
    .local v6, msid:J
    const/4 v8, 0x0

    .line 28
    .local v8, nai:Ljava/lang/String;
    const/4 v9, 0x0

    .line 30
    .local v9, naiPassword:Ljava/lang/String;
    const/4 v11, 0x0

    .line 33
    .local v11, setup:Ljava/lang/String;
    iget-boolean v12, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->DEBUG_LOG:Z

    if-eqz v12, :cond_12

    .line 34
    const-string v12, "AndroidSprintExtensionService"

    const-string v13, "onCreate"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_12
    new-instance v12, Lcom/samsungframeworks/internal/SprintExtension;

    invoke-direct {v12, p0}, Lcom/samsungframeworks/internal/SprintExtension;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->mSprintExtension:Lcom/samsungframeworks/internal/SprintExtension;

    .line 39
    const-string v12, "iphoneinfo"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v0

    .line 41
    .local v0, IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;
    const-string v12, "isprintextension"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    if-nez v12, :cond_10d

    .line 42
    const-string v12, "isprintextension"

    iget-object v13, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->mSprintExtension:Lcom/samsungframeworks/internal/SprintExtension;

    invoke-static {v12, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 43
    iget-boolean v12, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->DEBUG_LOG:Z

    if-eqz v12, :cond_3d

    .line 44
    const-string v12, "AndroidSprintExtensionService"

    const-string v13, "send com.sprint.android.SPRINTEXTENSION_STARTED"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_3d
    new-instance v1, Landroid/content/Intent;

    const-string v12, "com.sprint.android.SPRINTEXTENSION_STARTED"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, broadcast:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/internal/AndroidSprintExtensionService;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    iget-object v12, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->mSprintExtension:Lcom/samsungframeworks/internal/SprintExtension;

    iget-object v13, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->mSprintExtension:Lcom/samsungframeworks/internal/SprintExtension;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, num:Ljava/lang/String;
    if-eqz v10, :cond_5f

    .line 51
    :try_start_56
    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v10}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_5e} :catch_10e

    move-result-wide v4

    .line 57
    :cond_5f
    :goto_5f
    iget-object v12, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->mSprintExtension:Lcom/samsungframeworks/internal/SprintExtension;

    iget-object v13, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->mSprintExtension:Lcom/samsungframeworks/internal/SprintExtension;

    const/16 v13, 0x23

    invoke-virtual {v12, v13}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 58
    if-eqz v10, :cond_74

    .line 60
    :try_start_6b
    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v10}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_6b .. :try_end_73} :catch_12a

    move-result-wide v6

    .line 66
    :cond_74
    :goto_74
    iget-object v12, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->mSprintExtension:Lcom/samsungframeworks/internal/SprintExtension;

    iget-object v13, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->mSprintExtension:Lcom/samsungframeworks/internal/SprintExtension;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 69
    :try_start_7d
    invoke-interface {v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_NAI_PASSWORD()Ljava/lang/String;

    move-result-object v9

    .line 70
    invoke-interface {v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSetUpCompleted()Ljava/lang/String;
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_84} :catch_146

    move-result-object v11

    .line 75
    :goto_85
    iget-boolean v12, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->DEBUG_LOG:Z

    if-eqz v12, :cond_b9

    .line 76
    const-string v12, "AndroidSprintExtensionService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_b9
    const-wide/16 v12, 0x2710

    cmp-long v12, v4, v12

    if-ltz v12, :cond_199

    const-wide/16 v12, 0x2710

    cmp-long v12, v6, v12

    if-ltz v12, :cond_199

    if-eqz v8, :cond_199

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_199

    if-eqz v9, :cond_199

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_199

    .line 79
    if-eqz v11, :cond_f9

    const-string v12, "false"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f9

    .line 80
    const-string v12, "AndroidSprintExtensionService"

    const-string v13, "send com.sprint.android.ACTION_SETUP_COMPLETED"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Landroid/content/Intent;

    .end local v1           #broadcast:Landroid/content/Intent;
    const-string v12, "com.sprint.android.ACTION_SETUP_COMPLETED"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v1       #broadcast:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/internal/AndroidSprintExtensionService;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    :try_start_f4
    const-string v12, "true"

    invoke-interface {v0, v12}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSetUpCompleted(Ljava/lang/String;)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_f9} :catch_162

    .line 92
    :cond_f9
    :goto_f9
    iget-object v12, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->mSprintExtension:Lcom/samsungframeworks/internal/SprintExtension;

    invoke-virtual {v12, v0}, Lcom/samsungframeworks/internal/SprintExtension;->getCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_10d

    .line 93
    const-string v12, "AndroidSprintExtensionService"

    const-string v13, "force to change CDMA SLOT1"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v12, 0x1

    :try_start_10a
    invoke-interface {v0, v12}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->requestDataProfile(I)I
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_10d} :catch_17e

    .line 105
    .end local v1           #broadcast:Landroid/content/Intent;
    .end local v10           #num:Ljava/lang/String;
    :cond_10d
    :goto_10d
    return-void

    .line 52
    .restart local v1       #broadcast:Landroid/content/Intent;
    .restart local v10       #num:Ljava/lang/String;
    :catch_10e
    move-exception v12

    move-object v2, v12

    .line 53
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v12, "AndroidSprintExtensionService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ID_MDN error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5f

    .line 61
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_12a
    move-exception v12

    move-object v2, v12

    .line 62
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const-string v12, "AndroidSprintExtensionService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ID_MSID error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_74

    .line 71
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_146
    move-exception v12

    move-object v3, v12

    .line 72
    .local v3, ex:Landroid/os/RemoteException;
    const-string v12, "AndroidSprintExtensionService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetSetUpCompleted RemoteException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_85

    .line 86
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_162
    move-exception v12

    move-object v3, v12

    .line 87
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v12, "AndroidSprintExtensionService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetSetUpCompleted RemoteException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f9

    .line 96
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_17e
    move-exception v3

    .line 97
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v12, "AndroidSprintExtensionService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetSetUpCompleted RemoteException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10d

    .line 102
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_199
    const-string v12, "AndroidSprintExtensionService"

    const-string v13, "Fail to proceed the Activation"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10d
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->DEBUG_LOG:Z

    if-eqz v0, :cond_b

    .line 119
    const-string v0, "AndroidSprintExtensionService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_b
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/samsung/internal/AndroidSprintExtensionService;->DEBUG_LOG:Z

    if-eqz v0, :cond_b

    .line 111
    const-string v0, "AndroidSprintExtensionService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_b
    return-void
.end method
