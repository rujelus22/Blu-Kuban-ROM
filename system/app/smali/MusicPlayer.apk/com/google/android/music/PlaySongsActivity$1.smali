.class Lcom/google/android/music/PlaySongsActivity$1;
.super Ljava/lang/Object;
.source "PlaySongsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/PlaySongsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/PlaySongsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaySongsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/music/PlaySongsActivity$1;->this$0:Lcom/google/android/music/PlaySongsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity$1;->this$0:Lcom/google/android/music/PlaySongsActivity;

    #calls: Lcom/google/android/music/PlaySongsActivity;->doesMarketAccountMatchMusicAccount()Z
    invoke-static {v1}, Lcom/google/android/music/PlaySongsActivity;->access$000(Lcom/google/android/music/PlaySongsActivity;)Z

    move-result v0

    .line 104
    .local v0, accountMatch:Z
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity$1;->this$0:Lcom/google/android/music/PlaySongsActivity;

    new-instance v2, Lcom/google/android/music/PlaySongsActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/PlaySongsActivity$1$1;-><init>(Lcom/google/android/music/PlaySongsActivity$1;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlaySongsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method
