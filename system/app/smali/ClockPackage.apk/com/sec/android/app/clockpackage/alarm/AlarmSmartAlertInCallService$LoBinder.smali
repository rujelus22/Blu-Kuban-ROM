.class public Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$LoBinder;
.super Landroid/os/Binder;
.source "AlarmSmartAlertInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$LoBinder;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;
    .registers 3

    .prologue
    .line 53
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    const-string v0, "AlarmSmartAlert"

    const-string v1, "..LocalBinder.. getService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$LoBinder;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    return-object v0
.end method
