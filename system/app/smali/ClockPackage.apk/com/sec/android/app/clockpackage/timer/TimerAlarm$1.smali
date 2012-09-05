.class Lcom/sec/android/app/clockpackage/timer/TimerAlarm$1;
.super Landroid/telephony/PhoneStateListener;
.source "TimerAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/timer/TimerAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .parameter "state"
    .parameter "ignored"

    .prologue
    .line 70
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V

    .line 73
    :cond_9
    return-void
.end method
