.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$3;
.super Ljava/lang/Object;
.source "AlarmSmartAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)V
    .registers 2
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 237
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 241
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->access$300()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 243
    const-string v0, "AlarmSmartAlarm"

    const-string v1, "smart alarm option setting canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->finish()V

    .line 247
    return-void
.end method
