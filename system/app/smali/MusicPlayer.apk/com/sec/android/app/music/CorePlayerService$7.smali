.class Lcom/sec/android/app/music/CorePlayerService$7;
.super Landroid/content/BroadcastReceiver;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 2
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 978
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 981
    const-string v5, "CorePlayerService"

    const-string v6, "mSystemReceiver:onReceive(action=ACTION_SHUTDOWN) is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v5}, Lcom/sec/android/app/music/CorePlayerService;->stop()V

    .line 984
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v5}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    .line 1013
    :cond_23
    :goto_23
    return-void

    .line 985
    :cond_24
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 986
    const-string v5, "level"

    const/16 v8, 0x64

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 987
    .local v1, battScale:I
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 990
    .local v2, plugType:I
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    if-gt v1, v6, :cond_85

    if-nez v2, :cond_85

    move v5, v6

    :goto_41
    #setter for: Lcom/sec/android/app/music/CorePlayerService;->bLowBattery:Z
    invoke-static {v8, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$1902(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 991
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->bLowBattery:Z
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$1900(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 992
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v5}, Lcom/sec/android/app/music/CorePlayerService;->stop()V

    .line 993
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2000(Lcom/sec/android/app/music/CorePlayerService;)Landroid/app/ActivityManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 994
    .local v3, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    .line 995
    .local v4, runningTask:Ljava/lang/String;
    const-string v5, "com.sec.android.app.music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 996
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v5}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090141

    invoke-static {v5, v6}, Lcom/sec/android/app/music/MusicUtils;->makeNoti_New_MessageForClosingAPK(Landroid/content/Context;I)V

    .line 1000
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v5}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_23

    .end local v3           #rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #runningTask:Ljava/lang/String;
    :cond_85
    move v5, v7

    .line 990
    goto :goto_41

    .line 1004
    .end local v1           #battScale:I
    .end local v2           #plugType:I
    :cond_87
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1006
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mIsShowNotification:Z
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2100(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1009
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v5}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    .line 1010
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$7;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v5}, Lcom/sec/android/app/music/CorePlayerService;->showNotification()V

    goto :goto_23
.end method
