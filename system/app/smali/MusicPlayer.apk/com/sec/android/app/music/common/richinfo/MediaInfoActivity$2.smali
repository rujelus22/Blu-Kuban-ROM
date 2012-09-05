.class Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$2;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_39

    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mFinishApp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_39

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$2;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    new-instance v2, Lcom/sec/android/app/music/common/util/BatteryChecker;

    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$2;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/music/common/util/BatteryChecker;-><init>(Lcom/sec/android/app/music/common/util/OnLowBatteryListener;)V

    #setter for: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v1, v2}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$102(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$2;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$100(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$2;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    :cond_39
    return-void
.end method
