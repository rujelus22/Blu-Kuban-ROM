.class Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$10;
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
    .line 492
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 495
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.app.music.autooffcompleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$700(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$700(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$10;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$700(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    :cond_2a
    return-void
.end method
