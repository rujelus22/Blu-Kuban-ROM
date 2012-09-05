.class Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$9;
.super Landroid/content/BroadcastReceiver;
.source "MusicSettingsEqEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V
    .registers 2
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$9;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 861
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 862
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

    .line 864
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$9;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    new-instance v3, Lcom/sec/android/app/music/common/util/BatteryChecker;

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$9;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1400(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/common/util/OnLowBatteryListener;

    invoke-direct {v3, v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;-><init>(Lcom/sec/android/app/music/common/util/OnLowBatteryListener;)V

    #setter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v2, v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1302(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    .line 865
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$9;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1300(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Lcom/sec/android/app/music/common/util/BatteryChecker;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$9;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 867
    :cond_3f
    return-void
.end method
