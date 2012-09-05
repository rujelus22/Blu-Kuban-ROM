.class Lcom/sec/android/app/music/AudioPreview$15;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 1941
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1946
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v5, v5, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    if-eqz v5, :cond_c

    .line 1995
    :cond_b
    :goto_b
    return-void

    .line 1949
    :cond_c
    if-eqz p2, :cond_b

    .line 1952
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1953
    .local v0, action:Ljava/lang/String;
    const-string v5, "command"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1955
    .local v1, cmd:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mActivityUpdateReceiver() cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mActivityUpdateReceiver() action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    const-string v5, "pause"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 1961
    const-string v5, "from"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1962
    .local v2, from:Ljava/lang/String;
    const-string v5, "playingUri"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1964
    .local v3, playingUri:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "CMDPAUSE(%s,%s,%s)"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v8, v8, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v8, :cond_7a

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7a
    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    if-eqz v2, :cond_b8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    if-eqz v3, :cond_b8

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v4, :cond_b8

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 1970
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v5, "CMDPAUSE, But it is mine...Not pause"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1973
    :cond_b8
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v4}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto/16 :goto_b

    .line 1974
    .end local v2           #from:Ljava/lang/String;
    .end local v3           #playingUri:Ljava/lang/String;
    :cond_bf
    const-string v5, "togglepause"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd

    .line 1975
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v4}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 1976
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v4}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto/16 :goto_b

    .line 1978
    :cond_d6
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v4}, Lcom/sec/android/app/music/AudioPreview;->startPlay()V

    goto/16 :goto_b

    .line 1980
    :cond_dd
    const-string v5, "stop"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1981
    const-string v5, "from"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1982
    .restart local v2       #from:Ljava/lang/String;
    const-string v5, "playingUri"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1984
    .restart local v3       #playingUri:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v5, v5, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "CMDSTOP(%s,%s,%s)"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v8, v8, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v8, :cond_10b

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_10b
    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    if-eqz v2, :cond_149

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_149

    if-eqz v3, :cond_149

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v4, :cond_149

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 1989
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v5, "CMDSTOP, But it is mine...Not stop"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1992
    :cond_149
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$15;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v4}, Lcom/sec/android/app/music/AudioPreview;->stopPlay()V

    goto/16 :goto_b
.end method
