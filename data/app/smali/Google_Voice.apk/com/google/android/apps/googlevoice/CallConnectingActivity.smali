.class public Lcom/google/android/apps/googlevoice/CallConnectingActivity;
.super Landroid/app/Activity;
.source "CallConnectingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;
    }
.end annotation


# static fields
.field private static final CONFIRM_CALL_WITH_GOOGLE_VOICE_DIALOG:I = 0x2

.field private static final FAILED_CALL_DIALOG:I = 0x1

.field private static final ID_AUTHENTICATION_REQUEST:I = 0x3ea

.field private static final ID_AUTH_TOKEN_INVALIDATED:I = 0x3e9

.field private static final ID_CALL_PREPARE_AUTHENTICATION_FAILURE:I = 0x7d3

.field private static final ID_CALL_PREPARE_FAILURE:I = 0x7d2

.field private static final ID_CALL_PREPARE_SUCCESS:I = 0x7d1


# instance fields
.field private authenticating:Z

.field private authenticationTokenWasInvalidated:Z

.field private callWithGoogleVoice:Ljava/lang/Boolean;

.field private conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

.field private contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private endCallButton:Landroid/widget/Button;

.field private fakeEndCallButton:Landroid/view/View;

.field private fillContactInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private googleVoiceAuthenticationFailed:Z

.field private googleVoiceCallSetupFailed:Z

.field private handler:Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;

.field private labelText:Landroid/widget/TextView;

.field private log:Lcom/google/android/apps/common/log/GLog;

.field private nameText:Landroid/widget/TextView;

.field private numberText:Landroid/widget/TextView;

.field private originalNumber:Ljava/lang/String;

.field private startedConnectingCall:J

.field private versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callWithGoogleVoice:Ljava/lang/Boolean;

    .line 71
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceCallSetupFailed:Z

    .line 72
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceAuthenticationFailed:Z

    .line 73
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticationTokenWasInvalidated:Z

    .line 74
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticating:Z

    .line 81
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->visible:Z

    .line 504
    return-void
.end method

.method private abandonAttempt()V
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    if-eqz v0, :cond_9

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/CallConduit$Call;->abandon()V

    .line 362
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    .line 363
    return-void
.end method

.method private abandonCall()V
    .registers 1

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonAttempt()V

    .line 374
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->finish()V

    .line 375
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Lcom/google/android/apps/common/log/GLog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/googlevoice/CallConnectingActivity;Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->handleConfirmCallWithGoogleVoice(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/google/android/apps/googlevoice/CallConnectingActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticationTokenWasInvalidated:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticateIfNecessaryAndPossible()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->onCallPrepared()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->onCallPreparationFailure()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->onCallPreparationAuthenticationFailure()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonCall()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Lcom/google/android/apps/googlevoice/system/VersionHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->nameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->labelText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->numberText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/googlevoice/CallConnectingActivity;Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->handleFailedCall(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private declared-synchronized authenticateIfNecessaryAndPossible()V
    .registers 3

    .prologue
    .line 387
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticating:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callWithGoogleVoice:Ljava/lang/Boolean;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callWithGoogleVoice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceAuthenticationFailed:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticationTokenWasInvalidated:Z

    if-eqz v0, :cond_23

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticating:Z

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const/16 v1, 0x3ea

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->authenticate(Landroid/app/Activity;I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 393
    :cond_23
    monitor-exit p0

    return-void

    .line 387
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private callDirectly(Ljava/lang/String;)V
    .registers 4
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 378
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonAttempt()V

    .line 379
    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 380
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDoNotCallNumber(Ljava/lang/String;)V

    .line 381
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callWithGoogleVoice:Ljava/lang/Boolean;

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->dialNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->finish()V

    .line 384
    return-void
.end method

.method private callThroughConduit()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 284
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "callThroughConduit"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    if-eqz v2, :cond_13

    .line 287
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/CallConduit$Call;->complete()V

    .line 288
    iput-object v6, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    .line 291
    :cond_13
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v1

    .line 292
    .local v1, voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    .line 293
    .local v0, event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_CONNECT_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->startedConnectingCall:J

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setDuration(J)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 295
    invoke-interface {v0, v6}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->finish()V

    .line 297
    return-void
.end method

.method private handleConfirmCallWithGoogleVoice(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling confirmation to call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->i(Ljava/lang/String;)V

    .line 422
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 423
    packed-switch p2, :pswitch_data_62

    .line 449
    :cond_20
    :goto_20
    return-void

    .line 426
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "Will call with Google Voice"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 428
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callWithGoogleVoice:Ljava/lang/Boolean;

    .line 430
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/CallConduit$Call;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 431
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callThroughConduit()V

    goto :goto_20

    .line 432
    :cond_41
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceCallSetupFailed:Z

    if-eqz v0, :cond_20

    .line 435
    invoke-direct {p0, v4}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 436
    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showDialogIfVisible(I)V

    .line 437
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticateIfNecessaryAndPossible()V

    goto :goto_20

    .line 443
    :pswitch_4f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "Will directly call without Google Voice"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, v4}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 445
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callDirectly(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonCall()V

    goto :goto_20

    .line 423
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_21
        :pswitch_4f
    .end packed-switch
.end method

.method private handleFailedCall(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling failed call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->i(Ljava/lang/String;)V

    .line 397
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 398
    packed-switch p2, :pswitch_data_4e

    .line 418
    :goto_20
    return-void

    .line 401
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "Will retry call"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 402
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callWithGoogleVoice:Ljava/lang/Boolean;

    .line 403
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceCallSetupFailed:Z

    .line 404
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceAuthenticationFailed:Z

    .line 405
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticationTokenWasInvalidated:Z

    .line 406
    invoke-direct {p0, v4}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 407
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->prepareCall()V

    goto :goto_20

    .line 412
    :pswitch_3b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "Will try direct call"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callDirectly(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonCall()V

    goto :goto_20

    .line 398
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_21
        :pswitch_3b
    .end packed-switch
.end method

.method private onCallPreparationAuthenticationFailure()V
    .registers 7

    .prologue
    const/16 v5, 0x3e9

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "onCallPrepareAuthenticationFailure()"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 249
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceCallSetupFailed:Z

    .line 250
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceAuthenticationFailed:Z

    .line 251
    iput-boolean v4, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticationTokenWasInvalidated:Z

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->handler:Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;

    invoke-virtual {v1, v5}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->handler:Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V

    .line 257
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonAttempt()V

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callWithGoogleVoice:Ljava/lang/Boolean;

    if-eqz v0, :cond_2f

    .line 263
    invoke-direct {p0, v4}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 264
    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showDialogIfVisible(I)V

    .line 266
    :cond_2f
    return-void
.end method

.method private onCallPreparationFailure()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "onCallPreparationFailure()"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 270
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceCallSetupFailed:Z

    .line 271
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceAuthenticationFailed:Z

    .line 272
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonAttempt()V

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callWithGoogleVoice:Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    .line 278
    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 279
    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showDialogIfVisible(I)V

    .line 281
    :cond_1a
    return-void
.end method

.method private onCallPrepared()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceCallSetupFailed:Z

    .line 238
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceAuthenticationFailed:Z

    .line 239
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticationTokenWasInvalidated:Z

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callWithGoogleVoice:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 243
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callThroughConduit()V

    .line 245
    :cond_12
    return-void
.end method

.method private prepareCall()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, conduit:Lcom/google/android/apps/googlevoice/CallConduit;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    .line 213
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getConduits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/CallConduit;

    .line 214
    .local v0, candidate:Lcom/google/android/apps/googlevoice/CallConduit;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v4, "Checking candidate conduit"

    invoke-interface {v3, v4}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/google/android/apps/googlevoice/CallConduit;->canPlaceCall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 216
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v4, "Found matching conduit"

    invoke-interface {v3, v4}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 217
    move-object v1, v0

    .line 221
    .end local v0           #candidate:Lcom/google/android/apps/googlevoice/CallConduit;
    :cond_32
    if-eqz v1, :cond_61

    .line 222
    iput-boolean v5, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceCallSetupFailed:Z

    .line 223
    iput-boolean v5, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->googleVoiceAuthenticationFailed:Z

    .line 224
    iput-boolean v5, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticationTokenWasInvalidated:Z

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->startedConnectingCall:J

    .line 226
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->handler:Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;

    const/16 v5, 0x7d1

    invoke-virtual {v4, v5}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->handler:Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;

    const/16 v6, 0x7d2

    invoke-virtual {v5, v6}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->handler:Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/apps/googlevoice/CallConduit;->prepareCall(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;)Lcom/google/android/apps/googlevoice/CallConduit$Call;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->conduitCall:Lcom/google/android/apps/googlevoice/CallConduit$Call;

    .line 234
    :goto_60
    return-void

    .line 231
    :cond_61
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v4, "No matching conduit; placing the call directly"

    invoke-interface {v3, v4}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callDirectly(Ljava/lang/String;)V

    goto :goto_60
.end method

.method private showDialogIfVisible(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->visible:Z

    if-eqz v0, :cond_7

    .line 500
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showDialog(I)V

    .line 502
    :cond_7
    return-void
.end method

.method private showEndCallButton(Z)V
    .registers 6
    .parameter "show"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 452
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->endCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->fakeEndCallButton:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 453
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->fakeEndCallButton:Landroid/view/View;

    if-eqz p1, :cond_1b

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->endCallButton:Landroid/widget/Button;

    if-eqz p1, :cond_1d

    :goto_17
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 456
    :cond_1a
    return-void

    :cond_1b
    move v0, v2

    .line 453
    goto :goto_10

    :cond_1d
    move v2, v1

    .line 454
    goto :goto_17
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 488
    packed-switch p1, :pswitch_data_c

    .line 494
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 496
    :goto_6
    return-void

    .line 490
    :pswitch_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticating:Z

    goto :goto_6

    .line 488
    nop

    :pswitch_data_c
    .packed-switch 0x3ea
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget-object v2, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 96
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    .line 98
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "onCreate()"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 100
    new-instance v2, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;

    invoke-direct {v2, p0, v4}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;-><init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;Lcom/google/android/apps/googlevoice/CallConnectingActivity$1;)V

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->handler:Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 104
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getContactApiHelper()Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    .line 105
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    .line 106
    .local v1, voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clearDoNotCallNumber()V

    .line 108
    const-string v2, "com.google.android.apps.googlevoice.CallLogService.NUMBER_TO_CALL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->prepareCall()V

    .line 113
    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->requestWindowFeature(I)Z

    .line 116
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 117
    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->call_connecting_donut:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->setContentView(I)V

    .line 126
    :cond_63
    :goto_63
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_95

    .line 129
    :cond_6f
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->finish()V

    .line 190
    :goto_7c
    return-void

    .line 119
    :cond_7d
    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->call_connecting:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->setContentView(I)V

    .line 120
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsHoneycombOrLater()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 121
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->callConnectingScreen:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_63

    .line 134
    :cond_95
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->name:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->nameText:Landroid/widget/TextView;

    .line 135
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->label:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->labelText:Landroid/widget/TextView;

    .line 136
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->phoneNumber:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->numberText:Landroid/widget/TextView;

    .line 137
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->endButton:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->endCallButton:Landroid/widget/Button;

    .line 138
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->fakeEndButton:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->fakeEndCallButton:Landroid/view/View;

    .line 140
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->endCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_d3

    .line 143
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->endCallButton:Landroid/widget/Button;

    new-instance v3, Lcom/google/android/apps/googlevoice/CallConnectingActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$1;-><init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_d3
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->nameText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->labelText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->numberText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v2, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;-><init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->fillContactInfoTask:Landroid/os/AsyncTask;

    .line 181
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->fillContactInfoTask:Landroid/os/AsyncTask;

    new-array v3, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-eq v2, v3, :cond_106

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK_INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-ne v2, v3, :cond_10f

    .line 184
    :cond_106
    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 185
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showDialogIfVisible(I)V

    goto/16 :goto_7c

    .line 187
    :cond_10f
    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->showEndCallButton(Z)V

    .line 188
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->callWithGoogleVoice:Ljava/lang/Boolean;

    goto/16 :goto_7c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/high16 v3, 0x104

    .line 301
    packed-switch p1, :pswitch_data_8a

    .line 353
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an unexpected onCreateDialog request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 354
    const/4 v0, 0x0

    :goto_1e
    return-object v0

    .line 303
    :pswitch_1f
    const-string v0, "CallConnectingActivity: Call through failed"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->call_through_failed:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/CallConnectingActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$5;-><init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$array;->failed_call_options:I

    new-instance v2, Lcom/google/android/apps/googlevoice/CallConnectingActivity$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$4;-><init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/CallConnectingActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$3;-><init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1e

    .line 328
    :pswitch_57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->confirm_call_with_google_voice:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/CallConnectingActivity$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$8;-><init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$array;->confirm_call_with_google_voice_options:I

    new-instance v2, Lcom/google/android/apps/googlevoice/CallConnectingActivity$7;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$7;-><init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/CallConnectingActivity$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$6;-><init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1e

    .line 301
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_57
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 461
    const/4 v0, 0x4

    if-ne p1, v0, :cond_33

    .line 462
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got a back key-down event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 464
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "abandoning call"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonCall()V

    .line 466
    const/4 v0, 0x1

    .line 469
    :goto_32
    return v0

    :cond_33
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_32
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 475
    const/4 v0, 0x4

    if-ne p1, v0, :cond_33

    .line 476
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got a back key-up event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-nez v0, :cond_33

    .line 478
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "abandoning call"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonCall()V

    .line 480
    const/4 v0, 0x1

    .line 483
    :goto_32
    return v0

    :cond_33
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_32
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->visible:Z

    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 196
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->visible:Z

    .line 202
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->fillContactInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 208
    return-void
.end method
