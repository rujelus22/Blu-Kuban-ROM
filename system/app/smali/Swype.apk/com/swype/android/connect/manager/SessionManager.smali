.class public Lcom/swype/android/connect/manager/SessionManager;
.super Lcom/swype/android/connect/manager/AbstractCommandManager;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/manager/SessionManager$ValidCommands;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "session"

.field private static final POLL:Ljava/lang/String; = "POLL"

.field protected static POLLING_INTERVAL:I = 0x0

.field protected static final POLL_RESPONSE_ARRAY:Ljava/lang/String; = "tasks"


# instance fields
.field private volatile sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/swype/android/connect/manager/SessionManager;->$assertionsDisabled:Z

    .line 27
    const/16 v0, 0x14

    sput v0, Lcom/swype/android/connect/manager/SessionManager;->POLLING_INTERVAL:I

    return-void

    .line 21
    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/swype/android/connect/manager/SessionManager;->version:I

    .line 67
    const-string v0, "session"

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->commandFamily:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private determineNextPoll()V
    .registers 5

    .prologue
    .line 184
    sget v0, Lcom/swype/android/connect/manager/SessionManager;->POLLING_INTERVAL:I

    int-to-long v0, v0

    invoke-static {}, Lcom/swype/android/connect/manager/SessionManager;->getCurrentTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/swype/android/connect/manager/SessionManager;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v0

    .line 185
    const-class v2, Lcom/swype/android/connect/manager/SessionManager;

    const-string v3, "POLL"

    invoke-virtual {p0, v2, v3}, Lcom/swype/android/connect/manager/SessionManager;->generateIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 186
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/swype/android/connect/manager/SessionManager;->setAlarmAt(JLandroid/app/PendingIntent;Z)V

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next Poll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/swype/android/connect/manager/SessionManager;->POLLING_INTERVAL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private loadPreferences()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v1, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "SESSION_ID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 288
    const-string v1, "SESSION_TRANSID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/connect/manager/SessionManager;->transactionId:Ljava/lang/String;

    .line 289
    return-void
.end method

.method private processCreateSessionResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 5
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 194
    sget-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->create:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v2, 0x26

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/connect/manager/SessionManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 209
    :cond_13
    :goto_13
    return-void

    .line 198
    :cond_14
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 199
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    sget-object v1, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 202
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 203
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/SessionManager;->poll()V

    .line 204
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto :goto_13

    .line 206
    :cond_3f
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "VALIDATE_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private processInvalidateSessionResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 5
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 237
    sget-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->invalidate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/connect/manager/SessionManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 248
    :cond_13
    :goto_13
    return-void

    .line 242
    :cond_14
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    sget-object v1, Lcom/swype/android/connect/ConnectClient$SessionState;->INVALID:Lcom/swype/android/connect/ConnectClient$SessionState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->setSessionState(Lcom/swype/android/connect/ConnectClient$SessionState;)V

    goto :goto_13

    .line 245
    :cond_29
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 246
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/SessionManager;->invalidateSession()V

    goto :goto_13
.end method

.method private processPollResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 8
    .parameter "response"

    .prologue
    .line 251
    const-string v3, "Received Message Response from Server"

    invoke-static {v3}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 253
    sget-object v3, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->poll:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    iget-object v4, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {p0, v3, v4, v5}, Lcom/swype/android/connect/manager/SessionManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 283
    :goto_11
    return-void

    .line 258
    :cond_12
    iget-object v3, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 261
    iget-object v3, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v4, "tasks"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    iget-object v3, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v4, "tasks"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_75

    .line 265
    :try_start_32
    iget-object v3, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v4, "tasks"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 266
    .local v2, tasks:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_75

    .line 267
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, taskString:Ljava/lang/String;
    const-string v3, "MESSAGE_AVAILABLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    const-string v3, "SEND_REPORTING"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    const-string v3, "UDPATE_LICENSE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    const-string v3, "UPGRADE_AVAILABLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 273
    :cond_67
    iget-object v3, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v3, v1}, Lcom/swype/android/connect/ConnectClient;->performTask(Ljava/lang/String;)V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_6c} :catch_6f

    .line 266
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 278
    .end local v0           #i:I
    .end local v1           #taskString:Ljava/lang/String;
    .end local v2           #tasks:Lorg/json/JSONArray;
    :catch_6f
    move-exception v3

    const-string v3, "Exception processing poll responses"

    invoke-static {v3}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 282
    :cond_75
    iget-object v3, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto :goto_11
.end method

.method private processValidateSessionResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 5
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 214
    sget-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v2, 0x27

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/connect/manager/SessionManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 232
    :cond_13
    :goto_13
    return-void

    .line 219
    :cond_14
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 221
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    sget-object v1, Lcom/swype/android/connect/ConnectClient$SessionState;->VALID:Lcom/swype/android/connect/ConnectClient$SessionState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->setSessionState(Lcom/swype/android/connect/ConnectClient$SessionState;)V

    .line 223
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    sget-object v1, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 224
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 225
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/SessionManager;->poll()V

    .line 226
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto :goto_13

    .line 228
    :cond_42
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/SessionManager;->createSession()V

    goto :goto_13
.end method

.method private savePreferences()V
    .registers 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    const-string v1, "SESSION_ID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    const-string v1, "SESSION_TRANSID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/SessionManager;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .parameter "type"
    .parameter "data"

    .prologue
    .line 111
    const-string v0, "POLL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 112
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/SessionManager;->poll()V

    .line 114
    :cond_b
    return-void
.end method

.method public createSession()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v2, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/swype/android/connect/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, deviceId:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 133
    :goto_9
    return-void

    .line 125
    :cond_a
    sget-object v2, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->create:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-virtual {v2}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/swype/android/connect/manager/SessionManager;->createCommand(Ljava/lang/String;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 126
    .local v0, command:Lcom/swype/android/connect/util/Command;
    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->deviceId:Ljava/lang/String;

    .line 127
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    .line 129
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 131
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/SessionManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 132
    iget-object v2, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto :goto_9
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 310
    invoke-direct {p0}, Lcom/swype/android/connect/manager/SessionManager;->loadPreferences()V

    .line 312
    :cond_7
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public invalidateSession()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 154
    sget-boolean v0, Lcom/swype/android/connect/manager/SessionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :cond_f
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 168
    :goto_13
    return-void

    .line 160
    :cond_14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->invalidate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/SessionManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 163
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 164
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    .line 166
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/SessionManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 167
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto :goto_13
.end method

.method public onResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 92
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->transactionId:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->create:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 95
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/SessionManager;->processCreateSessionResponse(Lcom/swype/android/connect/util/Response;)V

    .line 106
    :cond_15
    :goto_15
    invoke-direct {p0}, Lcom/swype/android/connect/manager/SessionManager;->savePreferences()V

    .line 107
    return-void

    .line 96
    :cond_19
    sget-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 97
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/SessionManager;->processValidateSessionResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_15

    .line 98
    :cond_2b
    sget-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->invalidate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 99
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/SessionManager;->processInvalidateSessionResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_15

    .line 100
    :cond_3d
    sget-object v0, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->poll:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 101
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/SessionManager;->processPollResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_15
.end method

.method public poll()V
    .registers 4

    .prologue
    .line 174
    const-string v1, "Session.Poll"

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->poll:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/manager/SessionManager;->createCommand(Ljava/lang/String;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 176
    .local v0, command:Lcom/swype/android/connect/util/Command;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/swype/android/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 177
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/SessionManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 178
    iget-object v1, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 180
    invoke-direct {p0}, Lcom/swype/android/connect/manager/SessionManager;->determineNextPoll()V

    .line 181
    return-void
.end method

.method public resetSession()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 320
    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->transactionId:Ljava/lang/String;

    .line 321
    invoke-direct {p0}, Lcom/swype/android/connect/manager/SessionManager;->savePreferences()V

    .line 322
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 72
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 73
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "POLLING_FREQUENCY"

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->getConfigurationIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/swype/android/connect/manager/SessionManager;->POLLING_INTERVAL:I

    .line 75
    invoke-direct {p0}, Lcom/swype/android/connect/manager/SessionManager;->loadPreferences()V

    .line 76
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 77
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/SessionManager;->createSession()V

    .line 84
    :cond_20
    :goto_20
    return-void

    .line 78
    :cond_21
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 79
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/SessionManager;->validateSession()V

    goto :goto_20

    .line 80
    :cond_29
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 81
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 82
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto :goto_20
.end method

.method public systemInvalidateSession()V
    .registers 2

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public validateSession()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 136
    sget-boolean v0, Lcom/swype/android/connect/manager/SessionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 138
    :cond_f
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 139
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/SessionManager;->createSession()V

    .line 151
    :goto_16
    return-void

    .line 143
    :cond_17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/swype/android/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->validate:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/SessionManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 146
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 147
    iput-boolean v3, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    .line 149
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/SessionManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 150
    iget-object v0, p0, Lcom/swype/android/connect/manager/SessionManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto :goto_16
.end method
