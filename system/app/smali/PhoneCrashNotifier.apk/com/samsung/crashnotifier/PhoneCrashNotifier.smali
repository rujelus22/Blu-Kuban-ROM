.class public Lcom/samsung/crashnotifier/PhoneCrashNotifier;
.super Landroid/app/Activity;
.source "PhoneCrashNotifier.java"


# static fields
.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field errorInfo:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private msg:Landroid/os/Message;

.field private progressDialog:Landroid/app/ProgressDialog;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;

    .line 68
    new-instance v0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;

    invoke-direct {v0, p0}, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;-><init>(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)V

    iput-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$2;

    invoke-direct {v0, p0}, Lcom/samsung/crashnotifier/PhoneCrashNotifier$2;-><init>(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)V

    iput-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/crashnotifier/PhoneCrashNotifier;Landroid/os/Message;)Landroid/os/Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;

    return-object p1
.end method


# virtual methods
.method public DeviceReset()V
    .registers 3

    .prologue
    .line 196
    sget-object v0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public displayCrashInfo(I)V
    .registers 6
    .parameter "crashType"

    .prologue
    const/4 v3, 0x1

    .line 129
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    .line 140
    :goto_8
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Doing Modem RAM Dump! \n Do not touch anything for 10 minutes. \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->errorInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 142
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 143
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 145
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44c

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_48

    .line 149
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 151
    :cond_48
    return-void

    .line 132
    :pswitch_49
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "MODEM CRASH!!"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 136
    :pswitch_51
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "HSIC CRASH!!"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 129
    nop

    :pswitch_data_5a
    .packed-switch 0x3e9
        :pswitch_49
        :pswitch_51
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 161
    sget-object v0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "Phone_crash"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    invoke-virtual {p0}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->title:Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->errorInfo:Ljava/lang/String;

    .line 168
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->setContentView(I)V

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 171
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CP_CRASH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;

    .line 176
    const-string v0, "cpcrash"

    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 178
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;

    .line 179
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 191
    :cond_6c
    :goto_6c
    const-string v0, "CrashNotifier"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 181
    :cond_74
    const-string v0, "hsiccrash"

    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 183
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;

    .line 184
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6c

    .line 186
    :cond_8e
    const-string v0, "DeviceReset"

    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 188
    invoke-virtual {p0}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->DeviceReset()V

    goto :goto_6c
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 201
    return-void
.end method
