.class public Lcom/sprint/dsa/diagnostics/DataConnectionTest;
.super Ljava/lang/Object;
.source "DataConnectionTest.java"

# interfaces
.implements Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;,
        Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;,
        Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;
    }
.end annotation


# static fields
.field private static final STATE_CHECK_VOICE:I = 0x0

.field private static final STATE_CONNECT_WIFI:I = 0x8

.field private static final STATE_DISABLE_4G:I = 0x4

.field private static final STATE_DISABLE_AIRPLANE:I = 0x1

.field private static final STATE_DISABLE_WIFI:I = 0x7

.field private static final STATE_ENABLE_3G:I = 0x3

.field private static final STATE_ENABLE_4G:I = 0x5

.field private static final STATE_ENABLE_WIFI:I = 0x6

.field private static final STATE_RUN:I = 0x2

.field public static final STATUS_FAILURE:I = 0x3

.field public static final STATUS_FAILURE_AIRPLANEMODE:I = 0x7

.field public static final STATUS_FAILURE_INACTIVEDEVICE:I = 0x8

.field public static final STATUS_FAILURE_ONVOICECALL:I = 0x6

.field public static final STATUS_FAILURE_WIFION:I = 0x9

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_RUNNING:I = 0x1

.field public static final STATUS_SUCCESS:I = 0x2

.field public static final STATUS_USER_CANCEL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"

.field private static final WAIT_FOR_NETWORK:I = 0xf


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

.field private mListener:Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;

.field private mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

.field private mState:I

.field private mTestIsInProgress:Z

.field private mTestNetworkType:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->cm:Landroid/net/ConnectivityManager;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)I
    .registers 2
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    return v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)I
    .registers 2
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    return v0
.end method

.method static synthetic access$3(Lcom/sprint/dsa/diagnostics/DataConnectionTest;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->isNetworkAvailable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)V
    .registers 1
    .parameter

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->runTest()V

    return-void
.end method

.method static synthetic access$5(Lcom/sprint/dsa/diagnostics/DataConnectionTest;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestIsInProgress:Z

    return-void
.end method

.method static synthetic access$6(Lcom/sprint/dsa/diagnostics/DataConnectionTest;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    return-void
.end method

.method private checkAirplaneMode()Z
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 285
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaDiag;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 286
    iput v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 287
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v2, 0x7f0800ad

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, mode:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 289
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a4

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 290
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f0800a8

    new-array v5, v1, [Ljava/lang/Object;

    iget v8, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v8}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 291
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f0800b5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 292
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f080003

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 288
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;

    move v0, v7

    .line 295
    .end local v6           #mode:Ljava/lang/String;
    :goto_58
    return v0

    :cond_59
    move v0, v1

    goto :goto_58
.end method

.method private checkVoiceCall()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 299
    iput v8, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 301
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 302
    .local v7, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    .line 303
    .local v6, state:I
    if-eqz v6, :cond_37

    .line 305
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 306
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v2, 0x7f0800a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 307
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ac

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 308
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f080002

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    const/4 v5, 0x0

    move-object v1, p0

    .line 305
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;

    move v0, v8

    .line 312
    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x1

    goto :goto_36
.end method

.method private finishedTest(I)V
    .registers 5
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestIsInProgress:Z

    .line 352
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mListener:Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;

    if-eqz v0, :cond_e

    .line 353
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mListener:Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;

    invoke-interface {v0, p1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;->onStatusChange(I)V

    .line 355
    :cond_e
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    if-eqz v0, :cond_19

    .line 356
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->cancel(Z)Z

    .line 357
    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    .line 359
    :cond_19
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    if-eqz v0, :cond_24

    .line 360
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->cancel(Z)Z

    .line 361
    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    .line 363
    :cond_24
    return-void
.end method

.method private getType(I)Ljava/lang/String;
    .registers 4
    .parameter "type"

    .prologue
    .line 366
    sparse-switch p1, :sswitch_data_2c

    .line 374
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 368
    :sswitch_d
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 370
    :sswitch_17
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 372
    :sswitch_21
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 366
    nop

    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_17
        0x6 -> :sswitch_21
    .end sparse-switch
.end method

.method private isNetworkAvailable(I)Z
    .registers 8
    .parameter "networkType"

    .prologue
    const/4 v3, 0x0

    .line 418
    const/4 v1, 0x0

    .line 420
    .local v1, info:Landroid/net/NetworkInfo;
    :try_start_2
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 421
    .local v2, mCM:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_13

    move-result-object v1

    .line 425
    .end local v2           #mCM:Landroid/net/ConnectivityManager;
    :goto_10
    if-nez v1, :cond_1c

    .line 429
    :cond_12
    :goto_12
    return v3

    .line 422
    :catch_13
    move-exception v0

    .line 423
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SprintZone_Diagnostics"

    const-string v5, "isNetworkAvailable"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 426
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1c
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, p1, :cond_12

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_12

    .line 429
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    goto :goto_12
.end method

.method private logState(I)V
    .registers 2
    .parameter "networkType"

    .prologue
    .line 337
    return-void
.end method

.method private runTest()V
    .registers 3

    .prologue
    .line 340
    const/4 v0, 0x2

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 341
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    if-eqz v0, :cond_d

    .line 342
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->cancel(Z)Z

    .line 343
    :cond_d
    new-instance v0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;-><init>(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    .line 344
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 345
    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 413
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    .line 414
    return-void
.end method

.method public onOk()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 380
    iget v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    packed-switch v0, :pswitch_data_46

    .line 407
    :pswitch_6
    invoke-direct {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->runTest()V

    .line 409
    :goto_9
    return-void

    .line 382
    :pswitch_a
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    goto :goto_9

    .line 386
    :pswitch_f
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;->displaySetting(Landroid/content/Context;I)V

    .line 387
    invoke-direct {p0, v2}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    goto :goto_9

    .line 390
    :pswitch_19
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;->displaySetting(Landroid/content/Context;I)V

    .line 391
    invoke-direct {p0, v2}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    goto :goto_9

    .line 394
    :pswitch_23
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;->displaySetting(Landroid/content/Context;I)V

    .line 395
    invoke-direct {p0, v2}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    goto :goto_9

    .line 400
    :pswitch_2d
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    if-eqz v0, :cond_37

    .line 401
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->cancel(Z)Z

    .line 403
    :cond_37
    new-instance v0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;-><init>(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    .line 404
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_9

    .line 380
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_a
        :pswitch_2d
        :pswitch_6
        :pswitch_19
        :pswitch_f
        :pswitch_f
        :pswitch_2d
        :pswitch_2d
        :pswitch_23
    .end packed-switch
.end method

.method public removeListener()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    if-eqz v0, :cond_d

    .line 70
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    invoke-virtual {v0, v2}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->cancel(Z)Z

    .line 71
    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mNetworkTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;

    .line 73
    :cond_d
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    if-eqz v0, :cond_18

    .line 74
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    invoke-virtual {v0, v2}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;->cancel(Z)Z

    .line 75
    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mDataTestTask:Lcom/sprint/dsa/diagnostics/DataConnectionTest$DataTestTask;

    .line 78
    :cond_18
    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mListener:Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;

    .line 79
    return-void
.end method

.method public run3GTest()V
    .registers 13

    .prologue
    const/4 v10, 0x6

    const/4 v11, 0x3

    const/4 v9, 0x1

    .line 107
    :try_start_3
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 108
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    .line 181
    :cond_10
    :goto_10
    return-void

    .line 112
    :cond_11
    invoke-direct {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->checkAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 116
    invoke-direct {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->checkVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_152

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->logState(I)V

    .line 118
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v1, 0x7f0800a4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 120
    .local v7, info:Landroid/net/NetworkInfo;
    if-nez v7, :cond_87

    .line 121
    const/4 v0, 0x3

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 123
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 125
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v9, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v9}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 126
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v10}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 127
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f080003

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7a} :catch_7b

    goto :goto_10

    .line 177
    .end local v2           #title:Ljava/lang/String;
    .end local v7           #info:Landroid/net/NetworkInfo;
    :catch_7b
    move-exception v6

    .line 178
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "SprintZone_Diagnostics"

    const-string v1, "Unexpected exception"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    invoke-direct {p0, v11}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    goto :goto_10

    .line 129
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #title:Ljava/lang/String;
    .restart local v7       #info:Landroid/net/NetworkInfo;
    :cond_87
    :try_start_87
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 131
    .local v8, type:I
    if-nez v8, :cond_91

    .line 132
    invoke-direct {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->runTest()V

    goto :goto_10

    .line 147
    :cond_91
    if-ne v8, v10, :cond_cf

    .line 148
    const/4 v0, 0x4

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 150
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 152
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ab

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v9, 0x6

    invoke-direct {p0, v9}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 153
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x6

    invoke-direct {p0, v10}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 154
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f080003

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 150
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;

    goto/16 :goto_10

    .line 155
    :cond_cf
    if-ne v8, v9, :cond_114

    .line 157
    const/4 v0, 0x7

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 158
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 160
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v8}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    iget v9, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v9}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 161
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-direct {p0, v8}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 162
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f080003

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 158
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;

    goto/16 :goto_10

    .line 166
    :cond_114
    const/4 v0, 0x3

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 167
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 169
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v9, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v9}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 170
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v10}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 171
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f080003

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 167
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;

    goto/16 :goto_10

    .line 175
    .end local v2           #title:Ljava/lang/String;
    .end local v7           #info:Landroid/net/NetworkInfo;
    .end local v8           #type:I
    :cond_152
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_156} :catch_7b

    goto/16 :goto_10
.end method

.method public run4GTest()V
    .registers 12

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x1

    .line 186
    :try_start_2
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 187
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    .line 230
    :cond_f
    :goto_f
    return-void

    .line 191
    :cond_10
    invoke-direct {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->checkAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 194
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->logState(I)V

    .line 195
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v1, 0x7f0800a4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 197
    .local v7, info:Landroid/net/NetworkInfo;
    if-nez v7, :cond_81

    .line 198
    const/4 v0, 0x5

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 199
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 201
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v9, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v9}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 202
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v10}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 203
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f080003

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 199
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_73} :catch_74

    goto :goto_f

    .line 226
    .end local v2           #title:Ljava/lang/String;
    .end local v7           #info:Landroid/net/NetworkInfo;
    :catch_74
    move-exception v6

    .line 227
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "SprintZone_Diagnostics"

    const-string v1, "Unexpected exception"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    goto :goto_f

    .line 205
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #title:Ljava/lang/String;
    .restart local v7       #info:Landroid/net/NetworkInfo;
    :cond_81
    :try_start_81
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 207
    .local v8, type:I
    if-ne v10, v8, :cond_8b

    .line 208
    invoke-direct {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->runTest()V

    goto :goto_f

    .line 209
    :cond_8b
    if-ne v8, v9, :cond_d0

    .line 211
    const/4 v0, 0x7

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 212
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 214
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v8}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    iget v9, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v9}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 215
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-direct {p0, v8}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 216
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f080003

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 212
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;

    goto/16 :goto_f

    .line 218
    :cond_d0
    const/4 v0, 0x5

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 219
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 221
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v9, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v9}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 222
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v10}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 223
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f080003

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 219
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_10c} :catch_74

    goto/16 :goto_f
.end method

.method public runWifiTest()V
    .registers 11

    .prologue
    const/4 v3, 0x1

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 238
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    .line 279
    :cond_e
    :goto_e
    return-void

    .line 242
    :cond_f
    invoke-direct {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->checkAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 246
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->cm:Landroid/net/ConnectivityManager;

    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->logState(I)V

    .line 248
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 249
    .local v7, info:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_33

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v3, :cond_dc

    .line 250
    :cond_33
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v1, 0x7f0800a4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, title:Ljava/lang/String;
    iget v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->getType(I)Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, mode:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_5e

    .line 254
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 256
    :cond_5e
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 257
    const/16 v0, 0x8

    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 258
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 260
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800aa

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 261
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 262
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f080003

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 258
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_97} :catch_99

    goto/16 :goto_e

    .line 275
    .end local v2           #title:Ljava/lang/String;
    .end local v7           #info:Landroid/net/NetworkInfo;
    .end local v8           #mode:Ljava/lang/String;
    :catch_99
    move-exception v6

    .line 276
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "SprintZone_Diagnostics"

    const-string v1, "Unexpected exception"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->finishedTest(I)V

    goto/16 :goto_e

    .line 264
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #title:Ljava/lang/String;
    .restart local v7       #info:Landroid/net/NetworkInfo;
    .restart local v8       #mode:Ljava/lang/String;
    :cond_a7
    const/4 v0, 0x6

    :try_start_a8
    iput v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I

    .line 265
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    .line 267
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v8, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 268
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 269
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v5, 0x7f080003

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 265
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;

    goto/16 :goto_e

    .line 273
    .end local v2           #title:Ljava/lang/String;
    .end local v8           #mode:Ljava/lang/String;
    :cond_dc
    invoke-direct {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->runTest()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_df} :catch_99

    goto/16 :goto_e
.end method

.method public setListener(Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mListener:Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;

    .line 65
    return-void
.end method

.method public startTest(I)V
    .registers 5
    .parameter "testNetworkType"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestIsInProgress:Z

    if-eqz v0, :cond_12

    .line 84
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;

    const v1, 0x7f080050

    .line 85
    const/4 v2, 0x0

    .line 84
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    :goto_11
    return-void

    .line 88
    :cond_12
    iput p1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestIsInProgress:Z

    .line 91
    sparse-switch p1, :sswitch_data_28

    goto :goto_11

    .line 93
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->run3GTest()V

    goto :goto_11

    .line 96
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->run4GTest()V

    goto :goto_11

    .line 99
    :sswitch_23
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->runWifiTest()V

    goto :goto_11

    .line 91
    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_1b
        0x1 -> :sswitch_23
        0x6 -> :sswitch_1f
    .end sparse-switch
.end method
