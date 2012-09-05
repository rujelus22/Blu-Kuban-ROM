.class Lcom/sec/android/app/music/TrackBrowserActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$3;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    if-eqz v1, :cond_61

    .line 239
    sget-object v2, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    monitor-enter v2

    .line 240
    :try_start_13
    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_60

    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mFinishApp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_60

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$3;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$300(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    move-result-object v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$3;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$300(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v3, :cond_43

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$3;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$300(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 245
    :cond_43
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$3;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    new-instance v3, Lcom/sec/android/app/music/common/util/BatteryChecker;

    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$3;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v3, v4}, Lcom/sec/android/app/music/common/util/BatteryChecker;-><init>(Lcom/sec/android/app/music/common/util/OnLowBatteryListener;)V

    #setter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v1, v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$302(Lcom/sec/android/app/music/TrackBrowserActivity;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$3;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$300(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/app/Activity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity$3;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    :cond_60
    monitor-exit v2

    .line 250
    :cond_61
    return-void

    .line 248
    :catchall_62
    move-exception v1

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_13 .. :try_end_64} :catchall_62

    throw v1
.end method
