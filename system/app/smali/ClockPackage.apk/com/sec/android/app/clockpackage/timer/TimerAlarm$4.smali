.class Lcom/sec/android/app/clockpackage/timer/TimerAlarm$4;
.super Ljava/lang/Object;
.source "TimerAlarm.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->initViews()V
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
    .line 201
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$4;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 203
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    .line 205
    if-ne v1, p2, :cond_9

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$4;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V

    .line 209
    :cond_8
    :goto_8
    return-void

    .line 207
    :cond_9
    const/4 v0, 0x2

    if-ne v0, p2, :cond_8

    goto :goto_8
.end method
