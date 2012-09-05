.class Lcom/sec/android/app/clockpackage/timer/TimerReceiver$1;
.super Ljava/lang/Object;
.source "TimerReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/timer/TimerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerReceiver$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 85
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/PowerController;->release()V

    .line 86
    return-void
.end method
