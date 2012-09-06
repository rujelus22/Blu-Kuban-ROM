.class Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$2;
.super Ljava/lang/Object;
.source "PlaySongsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->processSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

.field final synthetic val$songlist:Lcom/google/android/music/medialist/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;Lcom/google/android/music/medialist/SongList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$2;->this$1:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    iput-object p2, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$2;->val$songlist:Lcom/google/android/music/medialist/SongList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.PLAY_FOUND_ITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, i:Landroid/content/Intent;
    const-string v1, "songlist"

    iget-object v2, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$2;->val$songlist:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$2;->this$1:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    iget-object v1, v1, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/music/PlaySongsActivity;->startActivity(Landroid/content/Intent;)V

    .line 317
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$2;->this$1:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    iget-object v1, v1, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    invoke-virtual {v1}, Lcom/google/android/music/PlaySongsActivity;->finish()V

    .line 318
    return-void
.end method
