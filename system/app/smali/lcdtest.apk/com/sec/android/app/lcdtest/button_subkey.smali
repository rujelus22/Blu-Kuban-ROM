.class public Lcom/sec/android/app/lcdtest/button_subkey;
.super Landroid/app/Activity;
.source "button_subkey.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFinish:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const-string v0, "SubkeyTest"

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_subkey;->TAG:Ljava/lang/String;

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 6
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_subkey;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_subkey;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 80
    :goto_a
    return v1

    .line 77
    :catch_b
    move-exception v0

    .line 78
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 80
    const/4 v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/lcdtest/button_subkey;->mFinish:Z

    .line 26
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_subkey;->setContentView(I)V

    .line 27
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_subkey;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_subkey;->mPowerManager:Landroid/os/PowerManager;

    .line 30
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_subkey;->mWindowManager:Landroid/view/IWindowManager;

    .line 31
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/lcdtest/button_subkey;->requestSystemKeyEvent(IZ)Z

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    .line 38
    if-ne p1, v1, :cond_13

    .line 39
    iput-boolean v3, p0, Lcom/sec/android/app/lcdtest/button_subkey;->mFinish:Z

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/lcdtest/button_subkey;->requestSystemKeyEvent(IZ)Z

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_subkey;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 46
    :cond_13
    return v3
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v1, 0x7f030005

    .line 51
    const/16 v0, 0x52

    if-ne p1, v0, :cond_c

    .line 52
    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/button_subkey;->setContentView(I)V

    .line 62
    :cond_a
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_16

    .line 54
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_subkey;->setContentView(I)V

    goto :goto_a

    .line 55
    :cond_16
    const/16 v0, 0x19

    if-ne p1, v0, :cond_21

    .line 56
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_subkey;->setContentView(I)V

    goto :goto_a

    .line 57
    :cond_21
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2c

    .line 58
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_subkey;->setContentView(I)V

    goto :goto_a

    .line 59
    :cond_2c
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_a

    .line 60
    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/button_subkey;->setContentView(I)V

    goto :goto_a
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 67
    const-string v0, "SubkeyTest"

    const-string v1, "On Resume Get Called "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-boolean v0, p0, Lcom/sec/android/app/lcdtest/button_subkey;->mFinish:Z

    if-eqz v0, :cond_e

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_subkey;->finish()V

    .line 70
    :cond_e
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    return-void
.end method
