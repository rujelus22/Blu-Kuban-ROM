.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;
.super Landroid/content/BroadcastReceiver;
.source "HangoutRingingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, state:Ljava/lang/String;
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 94
    const-string v1, "Received incoming phone call. Stopping hangout ring..."

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->stopRingActivity()V

    .line 97
    :cond_16
    return-void
.end method
