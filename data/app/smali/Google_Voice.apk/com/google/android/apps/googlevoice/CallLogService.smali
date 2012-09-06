.class public Lcom/google/android/apps/googlevoice/CallLogService;
.super Landroid/app/Service;
.source "CallLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/CallLogService$3;,
        Lcom/google/android/apps/googlevoice/CallLogService$Listener;,
        Lcom/google/android/apps/googlevoice/CallLogService$Handler;,
        Lcom/google/android/apps/googlevoice/CallLogService$StatusType;
    }
.end annotation


# static fields
.field public static final EXTRA_ACCESS_NUMBER:Ljava/lang/String; = "com.google.android.apps.googlevoice.CallLogService.ACCESS_NUMBER"

.field public static final EXTRA_NUMBER_TO_CALL:Ljava/lang/String; = "com.google.android.apps.googlevoice.CallLogService.NUMBER_TO_CALL"

.field public static final EXTRA_STATUS_MARKER:Ljava/lang/String; = "com.google.android.apps.googlevoice.CallLogService.STATUS_MARKER"

.field private static final ID_CREDENTIALS:I = 0x3e9


# instance fields
.field private binder:Lcom/google/android/apps/googlevoice/LocalBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/googlevoice/LocalBinder",
            "<",
            "Lcom/google/android/apps/googlevoice/CallLogService;",
            ">;"
        }
    .end annotation
.end field

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private handler:Lcom/google/android/apps/googlevoice/CallLogService$Handler;

.field private listener:Lcom/google/android/apps/googlevoice/CallLogService$Listener;

.field private originalNumber:Ljava/lang/String;

.field private request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

.field private shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

.field private taskRunner:Lcom/googlex/common/task/TaskRunner;

.field private versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->listener:Lcom/google/android/apps/googlevoice/CallLogService$Listener;

    .line 375
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/CallLogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->onDoneGetAccessNumber()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/CallLogService;)Lcom/google/android/apps/googlevoice/ShadowNumbers;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/CallLogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->startGetAccessNumber()V

    return-void
.end method

.method private declared-synchronized callThroughFailed()V
    .registers 2

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->doneMakingCall()V

    .line 206
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->maybeStopObservingCallLog()V

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->listener:Lcom/google/android/apps/googlevoice/CallLogService$Listener;

    if-eqz v0, :cond_1d

    .line 209
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_16

    .line 210
    const-string v0, "call through failed, notifying listener"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 212
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->listener:Lcom/google/android/apps/googlevoice/CallLogService$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/CallLogService$Listener;->onAccessNumberFailure()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_27

    .line 218
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 214
    :cond_1d
    :try_start_1d
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1b

    .line 215
    const-string v0, "call through failed but there\'s no listener"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_27

    goto :goto_1b

    .line 205
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized callThroughFailedToAuthenticate()V
    .registers 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->doneMakingCall()V

    .line 223
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->maybeStopObservingCallLog()V

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->listener:Lcom/google/android/apps/googlevoice/CallLogService$Listener;

    if-eqz v0, :cond_1d

    .line 226
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_16

    .line 227
    const-string v0, "call through auth failed, notifying listener"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 229
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->listener:Lcom/google/android/apps/googlevoice/CallLogService$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/CallLogService$Listener;->onAccessNumberAuthenticationFailure()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_27

    .line 235
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 231
    :cond_1d
    :try_start_1d
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1b

    .line 232
    const-string v0, "call through auth failed but there\'s no listener"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_27

    goto :goto_1b

    .line 222
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized callThroughSucceeded(Ljava/lang/String;)V
    .registers 3
    .parameter "number"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->listener:Lcom/google/android/apps/googlevoice/CallLogService$Listener;

    if-eqz v0, :cond_1e

    .line 191
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_e

    .line 192
    const-string v0, "call through succeeded, notifying listener"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 194
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCallSetupEventLogger()Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onAccessNumberLookupSucceeded()V

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->listener:Lcom/google/android/apps/googlevoice/CallLogService$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/CallLogService$Listener;->onAccessNumberSuccess(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_28

    .line 201
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 197
    :cond_1e
    :try_start_1e
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1c

    .line 198
    const-string v0, "call through succeeded but there\'s no listener"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    goto :goto_1c

    .line 190
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maybeStartObservingCallLog()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/SetForegroundHelper;->invokeSetForeground(Landroid/app/Service;Z)V

    .line 249
    :cond_c
    return-void
.end method

.method private maybeStopObservingCallLog()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 253
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/SetForegroundHelper;->invokeSetForeground(Landroid/app/Service;Z)V

    .line 255
    :cond_c
    return-void
.end method

.method private declared-synchronized onDoneGetAccessNumber()V
    .registers 9

    .prologue
    .line 279
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/google/android/apps/googlevoice/CallLogService;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v1, callLogServiceIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    if-eqz v6, :cond_5e

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->isCompletedOrException()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 281
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->hasException()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 282
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 283
    .local v3, ex:Ljava/lang/Exception;
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_3c

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call-through request has an exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 286
    :cond_3c
    instance-of v6, v3, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v6, :cond_63

    check-cast v3, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local v3           #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v6

    sget-object v7, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v6, v7, :cond_63

    .line 288
    const-string v6, "com.google.android.apps.googlevoice.CallLogService.STATUS_MARKER"

    sget-object v7, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->AUTHENTICATION_FAILURE:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->ordinal()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_5e

    .line 291
    const-string v6, "call-through request authentication failed"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 329
    :cond_5e
    :goto_5e
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/CallLogService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_6f

    .line 330
    monitor-exit p0

    return-void

    .line 294
    :cond_63
    :try_start_63
    const-string v6, "com.google.android.apps.googlevoice.CallLogService.STATUS_MARKER"

    sget-object v7, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->NO_ACCESS_NUMBER:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->ordinal()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_6f

    goto :goto_5e

    .line 279
    .end local v1           #callLogServiceIntent:Landroid/content/Intent;
    :catchall_6f
    move-exception v6

    monitor-exit p0

    throw v6

    .line 298
    .restart local v1       #callLogServiceIntent:Landroid/content/Intent;
    :cond_72
    const/4 v5, 0x0

    .line 300
    .local v5, success:Z
    :try_start_73
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->getNormalizedOutgoingNumber()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, normalizedOutgoingNumber:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->getAccessNumber()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, accessNumber:Ljava/lang/String;
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_99

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "access number is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 305
    :cond_99
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->getAccessNumberIsShadowNumber()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 306
    invoke-direct {p0, v4, v0}, Lcom/google/android/apps/googlevoice/CallLogService;->storeShadowNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_a4
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v6, v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccessNumber(Ljava/lang/String;)V

    .line 309
    const-string v6, "com.google.android.apps.googlevoice.CallLogService.STATUS_MARKER"

    sget-object v7, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->GOT_ACCESS_NUMBER:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->ordinal()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v6, "com.google.android.apps.googlevoice.CallLogService.ACCESS_NUMBER"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_b9
    .catchall {:try_start_73 .. :try_end_b9} :catchall_107
    .catch Ljava/lang/IllegalStateException; {:try_start_73 .. :try_end_b9} :catch_c6

    .line 312
    const/4 v5, 0x1

    .line 322
    if-nez v5, :cond_5e

    .line 324
    :try_start_bc
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCallSetupEventLogger()Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onExceptionOnDoneGetAccessNumber()V
    :try_end_c5
    .catchall {:try_start_bc .. :try_end_c5} :catchall_6f

    goto :goto_5e

    .line 313
    .end local v0           #accessNumber:Ljava/lang/String;
    .end local v4           #normalizedOutgoingNumber:Ljava/lang/String;
    :catch_c6
    move-exception v2

    .line 314
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_c7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 315
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_ea

    .line 316
    const-string v6, "Get access number failed."

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 318
    :cond_ea
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clearAccessNumber()V

    .line 319
    const-string v6, "com.google.android.apps.googlevoice.CallLogService.STATUS_MARKER"

    sget-object v7, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->NO_ACCESS_NUMBER:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->ordinal()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_fa
    .catchall {:try_start_c7 .. :try_end_fa} :catchall_107

    .line 322
    if-nez v5, :cond_5e

    .line 324
    :try_start_fc
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCallSetupEventLogger()Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onExceptionOnDoneGetAccessNumber()V

    goto/16 :goto_5e

    .line 322
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catchall_107
    move-exception v6

    if-nez v5, :cond_113

    .line 324
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCallSetupEventLogger()Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onExceptionOnDoneGetAccessNumber()V

    :cond_113
    throw v6
    :try_end_114
    .catchall {:try_start_fc .. :try_end_114} :catchall_6f
.end method

.method private declared-synchronized startGetAccessNumber()V
    .registers 6

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createCallThroughRpc()Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    .line 260
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->getOriginalNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->setOutgoingNumber(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, subscriberNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 263
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->setSubscriberNumber(Ljava/lang/String;)V

    .line 265
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallLogService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->setDeviceNumber(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/CallLogService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->setCarrierHint(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->setUseShadowNumber(Z)V

    .line 270
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;

    new-instance v2, Lcom/googlex/common/task/Task;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallLogService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    new-instance v4, Lcom/google/android/apps/googlevoice/CallLogService$1;

    invoke-direct {v4, p0}, Lcom/google/android/apps/googlevoice/CallLogService$1;-><init>(Lcom/google/android/apps/googlevoice/CallLogService;)V

    invoke-direct {v2, v3, v4}, Lcom/googlex/common/task/Task;-><init>(Lcom/googlex/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/net/CallThroughRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_58

    .line 276
    monitor-exit p0

    return-void

    .line 259
    .end local v0           #subscriberNumber:Ljava/lang/String;
    :catchall_58
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private storeShadowNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "destinationNumber"
    .parameter "shadowNumber"

    .prologue
    .line 336
    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    .line 338
    new-instance v0, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->setDestinationNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->setShadowNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;-><init>(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)V

    .line 343
    .local v0, mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->handler:Lcom/google/android/apps/googlevoice/CallLogService$Handler;

    new-instance v2, Lcom/google/android/apps/googlevoice/CallLogService$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/googlevoice/CallLogService$2;-><init>(Lcom/google/android/apps/googlevoice/CallLogService;Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/CallLogService$Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    .end local v0           #mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    :cond_23
    return-void
.end method


# virtual methods
.method public declared-synchronized getOriginalNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->originalNumber:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->binder:Lcom/google/android/apps/googlevoice/LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 94
    new-instance v0, Lcom/google/android/apps/googlevoice/CallLogService$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/CallLogService$Handler;-><init>(Lcom/google/android/apps/googlevoice/CallLogService;Lcom/google/android/apps/googlevoice/CallLogService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->handler:Lcom/google/android/apps/googlevoice/CallLogService$Handler;

    .line 95
    new-instance v0, Lcom/google/android/apps/googlevoice/LocalBinder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/LocalBinder;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->binder:Lcom/google/android/apps/googlevoice/LocalBinder;

    .line 96
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getShadowNumbers()Lcom/google/android/apps/googlevoice/ShadowNumbers;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 104
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/CallLogObserver;->initializeSingleton(Lcom/google/android/apps/googlevoice/CallLogService;)V

    .line 106
    :cond_4b
    return-void
.end method

.method public declared-synchronized onStart(Landroid/content/Intent;I)V
    .registers 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->maybeStartObservingCallLog()V

    .line 120
    if-nez p1, :cond_11

    .line 121
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_f

    .line 122
    const-string v3, "CallLogService.onStart(): No Intent, doing nothing!"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_59

    .line 187
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 127
    :cond_11
    :try_start_11
    const-string v3, "com.google.android.apps.googlevoice.CallLogService.STATUS_MARKER"

    sget-object v4, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->UNKNOWN:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 128
    .local v2, statusInt:I
    invoke-static {}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->values()[Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    move-result-object v3

    aget-object v1, v3, v2

    .line 129
    .local v1, status:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_3d

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallLogService: receive request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 133
    :cond_3d
    sget-object v3, Lcom/google/android/apps/googlevoice/CallLogService$3;->$SwitchMap$com$google$android$apps$googlevoice$CallLogService$StatusType:[I

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_ac

    goto :goto_f

    .line 135
    :pswitch_49
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_52

    .line 136
    const-string v3, "call abandoned"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 141
    :cond_52
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->maybeStopObservingCallLog()V

    .line 145
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/CallLogService;->request:Lcom/google/android/apps/googlevoice/net/CallThroughRpc;
    :try_end_58
    .catchall {:try_start_11 .. :try_end_58} :catchall_59

    goto :goto_f

    .line 118
    .end local v1           #status:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;
    .end local v2           #statusInt:I
    :catchall_59
    move-exception v3

    monitor-exit p0

    throw v3

    .line 151
    .restart local v1       #status:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;
    .restart local v2       #statusInt:I
    :pswitch_5c
    :try_start_5c
    const-string v3, "com.google.android.apps.googlevoice.CallLogService.NUMBER_TO_CALL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/CallLogService;->setOriginalNumber(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->getOriginalNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_71

    .line 153
    const-string v3, "Original number is null"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_f

    .line 156
    :cond_71
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallLogService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clearAccessNumber()V

    .line 157
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_7f

    .line 158
    const-string v3, "Ensure credentials are loaded"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 160
    :cond_7f
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallLogService;->handler:Lcom/google/android/apps/googlevoice/CallLogService$Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/google/android/apps/googlevoice/CallLogService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, credentialsCompleted:Landroid/os/Message;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallLogService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v0, v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    goto :goto_f

    .line 167
    .end local v0           #credentialsCompleted:Landroid/os/Message;
    :pswitch_8e
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_97

    .line 168
    const-string v3, "Call through succeeded"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 170
    :cond_97
    const-string v3, "com.google.android.apps.googlevoice.CallLogService.ACCESS_NUMBER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/CallLogService;->callThroughSucceeded(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 175
    :pswitch_a2
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->callThroughFailed()V

    goto/16 :goto_f

    .line 181
    :pswitch_a7
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallLogService;->callThroughFailedToAuthenticate()V
    :try_end_aa
    .catchall {:try_start_5c .. :try_end_aa} :catchall_59

    goto/16 :goto_f

    .line 133
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_49
        :pswitch_5c
        :pswitch_8e
        :pswitch_a2
        :pswitch_a7
    .end packed-switch
.end method

.method public declared-synchronized setListener(Lcom/google/android/apps/googlevoice/CallLogService$Listener;)V
    .registers 3
    .parameter "newListener"

    .prologue
    .line 353
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->listener:Lcom/google/android/apps/googlevoice/CallLogService$Listener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 354
    monitor-exit p0

    return-void

    .line 353
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOriginalNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "originalNumber"

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallLogService;->originalNumber:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 243
    monitor-exit p0

    return-void

    .line 242
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
