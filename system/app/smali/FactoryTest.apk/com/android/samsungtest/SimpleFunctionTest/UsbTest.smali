.class public Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;
.super Landroid/app/Activity;
.source "UsbTest.java"


# static fields
.field private static final SET_DM:[B

.field private static final SET_NULL:[B


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final UART_PATH:Ljava/lang/String;

.field private count:I

.field private mBroadcastReceiverforUSB:Landroid/content/BroadcastReceiver;

.field private mCurrKey:I

.field private mCurrTime:J

.field mHandler:Landroid/os/Handler;

.field private mIsChanged:Z

.field private mPrevKey:I

.field private mPrevTime:J

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mbsuccess:Z

.field private final modem:[B

.field private final pda:[B

.field private phone:Lcom/android/internal/telephony/Phone;

.field pm:Landroid/os/PowerManager;

.field private txtresult:Landroid/widget/TextView;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 70
    new-array v0, v1, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->SET_DM:[B

    .line 71
    new-array v0, v1, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->SET_NULL:[B

    return-void

    .line 70
    :array_10
    .array-data 0x1
        0xct
        0x8t
        0x0t
        0x6t
        0x3t
        0x2t
    .end array-data

    .line 71
    nop

    :array_18
    .array-data 0x1
        0xct
        0x8t
        0x0t
        0x6t
        0x3t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const-string v0, "/sys/class/sec/switch/uart_sel"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->UART_PATH:Ljava/lang/String;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_34

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->pda:[B

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->modem:[B

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->phone:Lcom/android/internal/telephony/Phone;

    .line 75
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->count:I

    .line 76
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mIsChanged:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mbsuccess:Z

    .line 83
    const-string v0, "PhoneUtil"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mHandler:Landroid/os/Handler;

    .line 200
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mBroadcastReceiverforUSB:Landroid/content/BroadcastReceiver;

    return-void

    .line 67
    :array_34
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data

    .line 68
    :array_3a
    .array-data 0x1
        0x4dt
        0x4ft
        0x44t
        0x45t
        0x4dt
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->txtresult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mbsuccess:Z

    return p1
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 266
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 267
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 268
    const/4 v0, 0x1

    .line 274
    :goto_24
    return v0

    .line 272
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mPrevKey:I

    .line 273
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mPrevTime:J

    .line 274
    const/4 v0, 0x0

    goto :goto_24
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->phone:Lcom/android/internal/telephony/Phone;

    .line 90
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->setContentView(I)V

    .line 91
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->pm:Landroid/os/PowerManager;

    .line 94
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 95
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 97
    const v0, 0x7f0900e8

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 98
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mRadioGroup:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 99
    const v0, 0x7f0900e9

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->txtresult:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mBroadcastReceiverforUSB:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 187
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mBroadcastReceiverforUSB:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 240
    const-string v0, "KEYCODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWN, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mCurrKey:I

    .line 243
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mCurrTime:J

    .line 245
    const/4 v0, 0x4

    if-ne p1, v0, :cond_53

    .line 246
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_53

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_53

    .line 247
    const-string v0, "KEYCODE"

    const-string v1, "This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mbsuccess:Z

    if-eqz v0, :cond_55

    .line 250
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "USB Test PASS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v0, 0xd0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->setResult(I)V

    .line 258
    :goto_50
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->finish()V

    .line 262
    :cond_53
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_55
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "USB Test cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->setResult(I)V

    goto :goto_50
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 173
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 176
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 177
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2c} :catch_30

    .line 182
    :cond_2c
    :goto_2c
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 183
    return-void

    .line 179
    :catch_30
    move-exception v0

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2c
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_14

    .line 150
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 153
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 154
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2c} :catch_30

    .line 159
    :cond_2c
    :goto_2c
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    return-void

    .line 156
    :catch_30
    move-exception v0

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2c
.end method
