.class Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "MusicSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$7;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMediaReceiver:onReceive() is called,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$7;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->finish()V

    .line 422
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_MOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_34
    :goto_34
    return-void

    .line 423
    :cond_35
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 425
    :cond_45
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$7;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->finish()V

    goto :goto_34
.end method
