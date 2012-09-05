.class public Lcom/sec/android/app/music/CorePlayerService$FindSong;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FindSong"
.end annotation


# instance fields
.field bNext:Z

.field bUser:Z

.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 4521
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4522
    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->bUser:Z

    .line 4525
    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->bNext:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 4536
    const-string v1, "FindSong"

    const-string v2, "run(%s,%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->bUser:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    iget-boolean v4, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->bNext:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCountFromDB()I

    move-result v1

    if-le v1, v6, :cond_60

    .line 4538
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mReadyMediaControl:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/music/CorePlayerService;->access$1102(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 4540
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4541
    .local v0, i:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->bNext:Z

    if-eqz v1, :cond_58

    .line 4542
    const-string v1, "command"

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4547
    :goto_4b
    const-string v1, "ignore_repeat_one"

    iget-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->bUser:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4548
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4554
    .end local v0           #i:Landroid/content/Intent;
    :goto_57
    return-void

    .line 4544
    .restart local v0       #i:Landroid/content/Intent;
    :cond_58
    const-string v1, "command"

    const-string v2, "previous"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4b

    .line 4550
    .end local v0           #i:Landroid/content/Intent;
    :cond_60
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v2, "com.android.music.metachanged"

    #calls: Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$800(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;)V

    .line 4551
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v2, "com.android.music.playstatechanged"

    #calls: Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$800(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;)V

    .line 4552
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCountFromDB()I

    move-result v2

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$3102(Lcom/sec/android/app/music/CorePlayerService;I)I

    goto :goto_57
.end method

.method public setFindSong(ZZ)V
    .registers 8
    .parameter "user"
    .parameter "next"

    .prologue
    .line 4529
    const-string v0, "FindSong"

    const-string v1, "setFindSong(%s,%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4530
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->bUser:Z

    .line 4531
    iput-boolean p2, p0, Lcom/sec/android/app/music/CorePlayerService$FindSong;->bNext:Z

    .line 4532
    return-void
.end method
