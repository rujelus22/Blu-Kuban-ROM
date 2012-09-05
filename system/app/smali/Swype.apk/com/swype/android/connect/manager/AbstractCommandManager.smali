.class public abstract Lcom/swype/android/connect/manager/AbstractCommandManager;
.super Ljava/lang/Object;
.source "AbstractCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;,
        Lcom/swype/android/connect/manager/AbstractCommandManager$ValidCommands;
    }
.end annotation


# static fields
.field public static final antispamDelay:I = 0x5

.field public static final maxRetriesBeforeFailure:I = 0x3


# instance fields
.field protected alarmUniqueId:I

.field protected client:Lcom/swype/android/connect/ConnectClient;

.field protected commandFamily:Ljava/lang/String;

.field protected lastCommand:Ljava/lang/String;

.field protected lastCommandRetryCount:I

.field protected lastCommandTimestamp:Ljava/lang/Long;

.field protected managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

.field protected transactionId:Ljava/lang/String;

.field protected version:I


# direct methods
.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->DISABLED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->alarmUniqueId:I

    .line 187
    iput-object p1, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->client:Lcom/swype/android/connect/ConnectClient;

    .line 188
    return-void
.end method

.method public static convertDaysToTimeStamp(I)J
    .registers 3
    .parameter "days"

    .prologue
    .line 404
    mul-int/lit8 v0, p0, 0x18

    invoke-static {v0}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertHoursToTimeStamp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertDaysToTimeStamp(IJ)J
    .registers 5
    .parameter "days"
    .parameter "timeStampMillis"

    .prologue
    .line 418
    mul-int/lit8 v0, p0, 0x18

    invoke-static {v0, p1, p2}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertHoursToTimeStamp(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertHoursToTimeStamp(I)J
    .registers 3
    .parameter "hours"

    .prologue
    .line 378
    mul-int/lit8 v0, p0, 0x3c

    invoke-static {v0}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertMinutesToTimeStamp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertHoursToTimeStamp(IJ)J
    .registers 5
    .parameter "hours"
    .parameter "timeStampMillis"

    .prologue
    .line 392
    mul-int/lit8 v0, p0, 0x3c

    invoke-static {v0, p1, p2}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertMinutesToTimeStamp(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertMillisToTimeStamp(J)J
    .registers 4
    .parameter "millis"

    .prologue
    .line 300
    invoke-static {}, Lcom/swype/android/connect/manager/AbstractCommandManager;->getCurrentTime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertMillisToTimeStamp(JJ)J
    .registers 6
    .parameter "millis"
    .parameter "timeStampMillis"

    .prologue
    .line 314
    add-long v0, p2, p0

    return-wide v0
.end method

.method public static convertMinutesToTimeStamp(I)J
    .registers 5
    .parameter "minutes"

    .prologue
    .line 352
    const-wide/16 v0, 0x3c

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertSecondsToTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertMinutesToTimeStamp(IJ)J
    .registers 7
    .parameter "minutes"
    .parameter "timeStampMillis"

    .prologue
    .line 366
    const-wide/16 v0, 0x3c

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertSecondsToMillis(J)J
    .registers 4
    .parameter "seconds"

    .prologue
    .line 427
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static convertSecondsToTimeStamp(J)J
    .registers 4
    .parameter "seconds"

    .prologue
    .line 326
    invoke-static {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertSecondsToMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertSecondsToTimeStamp(JJ)J
    .registers 6
    .parameter "seconds"
    .parameter "timeStampMillis"

    .prologue
    .line 340
    invoke-static {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertSecondsToMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentTime()J
    .registers 2

    .prologue
    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 287
    return-wide v0
.end method


# virtual methods
.method public abstract alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected calcMessageSendDelay()J
    .registers 5

    .prologue
    .line 431
    const-wide/high16 v0, 0x4000

    iget v2, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertSecondsToMillis(J)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    .line 432
    double-to-long v0, v0

    return-wide v0
.end method

.method protected createCommand(Ljava/lang/String;)Lcom/swype/android/connect/util/Command;
    .registers 4
    .parameter "action"

    .prologue
    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v0, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lcom/swype/android/connect/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v1

    return-object v1
.end method

.method protected createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;
    .registers 5
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/swype/android/connect/util/Command;"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_7

    .line 136
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;)Lcom/swype/android/connect/util/Command;

    move-result-object v1

    .line 144
    :goto_6
    return-object v1

    .line 138
    :cond_7
    new-instance v0, Lcom/swype/android/connect/util/Command;

    invoke-direct {v0}, Lcom/swype/android/connect/util/Command;-><init>()V

    .line 139
    .local v0, command:Lcom/swype/android/connect/util/Command;
    iget-object v1, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    .line 140
    iget v1, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->version:I

    iput v1, v0, Lcom/swype/android/connect/util/Command;->version:I

    .line 141
    iput-object p1, v0, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    .line 142
    iput-object p2, v0, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 143
    iput-object p0, v0, Lcom/swype/android/connect/util/Command;->callbackManager:Lcom/swype/android/connect/manager/AbstractCommandManager;

    move-object v1, v0

    .line 144
    goto :goto_6
.end method

.method public abstract destroy()V
.end method

.method protected generateIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 229
    const-string v1, "ALARM_CLASS"

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "ALARM_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->alarmUniqueId:I

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 233
    return-object v0
.end method

.method public getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 440
    iget v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->version:I

    return v0
.end method

.method public onDownloadStatusResponse(Lcom/swype/android/connect/util/Command;II)V
    .registers 4
    .parameter "command"
    .parameter "downloaded"
    .parameter "total"

    .prologue
    .line 178
    return-void
.end method

.method public onFileResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 170
    return-void
.end method

.method public onIOExceptionResponse(Lcom/swype/android/connect/util/Command;)V
    .registers 2
    .parameter "command"

    .prologue
    .line 174
    return-void
.end method

.method public abstract onResponse(Lcom/swype/android/connect/util/Response;)V
.end method

.method public postStart()V
    .registers 1

    .prologue
    .line 97
    return-void
.end method

.method protected preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preProcessResponse() command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 459
    const-string v1, "NONE"

    .line 462
    :try_start_2c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isExpectedResponse"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 463
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preProcessResponse() isExpectedResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_64} :catch_96

    .line 470
    if-nez v0, :cond_b3

    .line 472
    iget v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_94

    .line 473
    iget-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/manager/AbstractCommandManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, p3, v2, v3}, Lcom/swype/android/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preProcessResponse() -- Response from server is not an expected response.  Command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Response Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    :cond_94
    move v0, v7

    .line 478
    :goto_95
    return v0

    .line 465
    :catch_96
    move-exception v0

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preProcessResponse() exception invoking isExpectedResponse !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    move v0, v6

    .line 467
    goto :goto_95

    :cond_b3
    move v0, v6

    goto :goto_95
.end method

.method protected removeLongTermTimer(Landroid/app/PendingIntent;)V
    .registers 4
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 242
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 243
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 244
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    return-void
.end method

.method protected removePreferences([Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, p1, v2

    .line 265
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 267
    :cond_16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    return-void
.end method

.method protected sendCommand(Lcom/swype/android/connect/util/Command;)V
    .registers 4
    .parameter

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sendCommand() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/swype/android/connect/util/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    sget-object v1, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->DISABLED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 120
    iget-object v0, p1, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/AbstractCommandManager;->setLastCommand(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/ConnectClient;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 126
    :goto_50
    return-void

    .line 123
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCommand() attempting to send command when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has not completed starting. Attempted command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/swype/android/connect/util/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_50
.end method

.method protected setAlarmAt(JLandroid/app/PendingIntent;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 200
    if-eqz p4, :cond_15

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 205
    :goto_14
    return-void

    .line 203
    :cond_15
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_14
.end method

.method protected setAlarmInDays(ILandroid/app/PendingIntent;Z)V
    .registers 5
    .parameter "days"
    .parameter "operation"
    .parameter "wakeup"

    .prologue
    .line 208
    mul-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0, p2, p3}, Lcom/swype/android/connect/manager/AbstractCommandManager;->setAlarmInHours(ILandroid/app/PendingIntent;Z)V

    .line 209
    return-void
.end method

.method protected setAlarmInHours(ILandroid/app/PendingIntent;Z)V
    .registers 5
    .parameter "hours"
    .parameter "operation"
    .parameter "wakeup"

    .prologue
    .line 212
    mul-int/lit8 v0, p1, 0x3c

    invoke-virtual {p0, v0, p2, p3}, Lcom/swype/android/connect/manager/AbstractCommandManager;->setAlarmInMinutes(ILandroid/app/PendingIntent;Z)V

    .line 213
    return-void
.end method

.method protected setAlarmInMinutes(ILandroid/app/PendingIntent;Z)V
    .registers 5
    .parameter "minutes"
    .parameter "operation"
    .parameter "wakeup"

    .prologue
    .line 216
    mul-int/lit8 v0, p1, 0x3c

    invoke-virtual {p0, v0, p2, p3}, Lcom/swype/android/connect/manager/AbstractCommandManager;->setAlarmInSeconds(ILandroid/app/PendingIntent;Z)V

    .line 217
    return-void
.end method

.method protected setAlarmInSeconds(ILandroid/app/PendingIntent;Z)V
    .registers 9
    .parameter "seconds"
    .parameter "operation"
    .parameter "wakeup"

    .prologue
    .line 220
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/swype/android/connect/manager/AbstractCommandManager;->convertSecondsToTimeStamp(J)J

    move-result-wide v0

    .line 221
    .local v0, tiggerAtTime:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlarmInSeconds() Current: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/swype/android/connect/manager/AbstractCommandManager;->getCurrentTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] At: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Milli: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/swype/android/connect/manager/AbstractCommandManager;->setAlarmAt(JLandroid/app/PendingIntent;Z)V

    .line 224
    return-void
.end method

.method protected setLastCommand(Ljava/lang/String;)V
    .registers 4
    .parameter "command"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 272
    iget v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    .line 276
    :goto_e
    iput-object p1, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->lastCommand:Ljava/lang/String;

    .line 277
    invoke-static {}, Lcom/swype/android/connect/manager/AbstractCommandManager;->getCurrentTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->lastCommandTimestamp:Ljava/lang/Long;

    .line 278
    return-void

    .line 274
    :cond_1b
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    goto :goto_e
.end method

.method public abstract start()V
.end method
