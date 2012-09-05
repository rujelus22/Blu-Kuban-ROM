.class public Lcom/android/keytracer/keytracerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "keytracerBroadcastReceiver.java"


# instance fields
.field private final OEM_DFT_EVENT:B

.field private final OEM_FUNCTION_ID_FACTORY:B

.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/android/keytracer/keytracerBroadcastReceiver;->OEM_DFT_EVENT:B

    .line 31
    const/16 v0, 0x12

    iput-byte v0, p0, Lcom/android/keytracer/keytracerBroadcastReceiver;->OEM_FUNCTION_ID_FACTORY:B

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keytracer/keytracerBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private keytraceStart()V
    .registers 3

    .prologue
    .line 120
    const-string v0, "net.cdma.factory.KEYTRACE"

    const-string v1, "START"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "keytracerBroadcastReceiver"

    const-string v1, "KeytraceStart() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method private keytraceStop()V
    .registers 3

    .prologue
    .line 142
    const-string v0, "net.cdma.factory.KEYTRACE"

    const-string v1, "STOP"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "keytracerBroadcastReceiver"

    const-string v1, "KeytraceStop() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/keytracer/keytracerBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.keytracer.sendKeytraceData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 53
    const-string v0, "keytracerBroadcastReceiver"

    const-string v1, "Intent is Wrong. Check intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_15
    :goto_15
    return-void

    .line 62
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.keytracer.keytraceStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 63
    const-string v0, "keytracerBroadcastReceiver"

    const-string v1, "KEYTRACE_START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/android/keytracer/keytracerBroadcastReceiver;->keytraceStart()V

    goto :goto_15

    .line 66
    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.keytracer.keytraceStop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 67
    const-string v0, "keytracerBroadcastReceiver"

    const-string v1, "KEYTRACE_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/android/keytracer/keytracerBroadcastReceiver;->keytraceStop()V

    goto :goto_15
.end method
