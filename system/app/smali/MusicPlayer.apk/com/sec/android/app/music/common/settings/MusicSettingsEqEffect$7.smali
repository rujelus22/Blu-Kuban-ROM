.class Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$7;
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
    .line 832
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$7;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 835
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 838
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$7;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->finish()V

    .line 839
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_MOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_1a
    :goto_1a
    return-void

    .line 840
    :cond_1b
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 842
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$7;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->finish()V

    goto :goto_1a
.end method
