.class Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;
.super Ljava/lang/Object;
.source "AlarmReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 453
    const-string v0, "AlarmReceiver"

    const-string v1, "mHandler.postDelayed(new Runnable() {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->release()V

    .line 455
    return-void
.end method
