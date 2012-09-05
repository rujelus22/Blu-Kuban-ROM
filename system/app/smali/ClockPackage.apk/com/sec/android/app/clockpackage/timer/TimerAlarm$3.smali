.class Lcom/sec/android/app/clockpackage/timer/TimerAlarm$3;
.super Ljava/lang/Object;
.source "TimerAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->onCreate(Landroid/os/Bundle;)V
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
    .line 119
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 121
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/PowerController;->release()V

    .line 122
    return-void
.end method
