.class Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$2;
.super Landroid/content/BroadcastReceiver;
.source "MusicSettingsMusicMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3f

    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mFinishApp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;

    new-instance v3, Lcom/sec/android/app/music/common/util/BatteryChecker;

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/common/util/OnLowBatteryListener;

    invoke-direct {v3, v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;-><init>(Lcom/sec/android/app/music/common/util/OnLowBatteryListener;)V

    #setter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v2, v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->access$102(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->access$100(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    :cond_3f
    return-void
.end method
