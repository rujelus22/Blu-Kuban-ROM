.class Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;
.super Ljava/lang/Object;
.source "SharedSongsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->processGetShared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

.field final synthetic val$songList:Lcom/google/android/music/medialist/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;Lcom/google/android/music/medialist/SongList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    iput-object p2, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;->val$songList:Lcom/google/android/music/medialist/SongList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    iget-object v1, v1, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    const-class v2, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    const-string v1, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "medialist"

    iget-object v2, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;->val$songList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 291
    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    iget-object v1, v1, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/music/SharedSongsActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$3;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    iget-object v0, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v0}, Lcom/google/android/music/SharedSongsActivity;->finish()V

    .line 293
    return-void
.end method
