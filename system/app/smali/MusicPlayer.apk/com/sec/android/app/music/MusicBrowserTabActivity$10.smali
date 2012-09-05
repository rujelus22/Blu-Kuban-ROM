.class Lcom/sec/android/app/music/MusicBrowserTabActivity$10;
.super Landroid/os/Handler;
.source "MusicBrowserTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$10;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 590
    iget-object v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$10;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const-string v4, "tip_dialog_pref_music"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 591
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "show_flag"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 593
    .local v1, showFlag:Z
    if-eqz v1, :cond_2f

    .line 594
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, status:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 597
    invoke-static {}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NO SD Card"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v2           #status:Ljava/lang/String;
    :cond_2f
    :goto_2f
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 603
    return-void

    .line 599
    .restart local v2       #status:Ljava/lang/String;
    :cond_33
    iget-object v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$10;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->showDialog(I)V

    goto :goto_2f
.end method
