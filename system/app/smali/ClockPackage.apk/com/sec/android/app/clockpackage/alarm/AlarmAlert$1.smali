.class Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    check-cast p2, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$LoBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$LoBinder;->getService()Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    .line 153
    const-string v0, "AlarmAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    .line 159
    const-string v0, "AlarmAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method
