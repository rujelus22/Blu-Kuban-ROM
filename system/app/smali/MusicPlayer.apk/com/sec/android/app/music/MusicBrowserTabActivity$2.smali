.class Lcom/sec/android/app/music/MusicBrowserTabActivity$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 183
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$2;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPlayerStatusListener action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 197
    :cond_2f
    sget v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    if-ne v0, v4, :cond_4e

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$2;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$300(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_48

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$2;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->invalidateRightViews()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$400(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    .line 206
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$2;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->updateNowPlayingView()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$100(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    .line 213
    :cond_4d
    :goto_4d
    return-void

    .line 202
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$2;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$300(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_48

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$2;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->refreshCurrentListView()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$500(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    goto :goto_48

    .line 207
    :cond_64
    const-string v1, "com.sec.android.app.music.ADD_TO_PLAYLIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$2;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const-class v3, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$2;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4d
.end method
