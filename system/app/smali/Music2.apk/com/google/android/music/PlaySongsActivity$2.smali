.class Lcom/google/android/music/PlaySongsActivity$2;
.super Ljava/lang/Object;
.source "PlaySongsActivity.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaySongsActivity;
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
    .line 301
    iput-object p1, p0, Lcom/google/android/music/PlaySongsActivity$2;->this$0:Lcom/google/android/music/PlaySongsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 5
    .parameter "which"

    .prologue
    .line 303
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity$2;->this$0:Lcom/google/android/music/PlaySongsActivity;

    #calls: Lcom/google/android/music/PlaySongsActivity;->isSyncActive()Z
    invoke-static {v1}, Lcom/google/android/music/PlaySongsActivity;->access$400(Lcom/google/android/music/PlaySongsActivity;)Z

    move-result v0

    .line 305
    .local v0, syncActive:Z
    if-nez v0, :cond_12

    .line 306
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity$2;->this$0:Lcom/google/android/music/PlaySongsActivity;

    #getter for: Lcom/google/android/music/PlaySongsActivity;->mAsyncWorker:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;
    invoke-static {v1}, Lcom/google/android/music/PlaySongsActivity;->access$200(Lcom/google/android/music/PlaySongsActivity;)Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->sendEmptyMessage(I)Z

    .line 308
    :cond_12
    return-void
.end method
