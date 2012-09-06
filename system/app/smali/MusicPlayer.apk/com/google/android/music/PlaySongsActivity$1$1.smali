.class Lcom/google/android/music/PlaySongsActivity$1$1;
.super Ljava/lang/Object;
.source "PlaySongsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/PlaySongsActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/PlaySongsActivity$1;

.field final synthetic val$accountMatch:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaySongsActivity$1;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/music/PlaySongsActivity$1$1;->this$1:Lcom/google/android/music/PlaySongsActivity$1;

    iput-boolean p2, p0, Lcom/google/android/music/PlaySongsActivity$1$1;->val$accountMatch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 106
    iget-boolean v0, p0, Lcom/google/android/music/PlaySongsActivity$1$1;->val$accountMatch:Z

    if-eqz v0, :cond_1a

    .line 107
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity$1$1;->this$1:Lcom/google/android/music/PlaySongsActivity$1;

    iget-object v0, v0, Lcom/google/android/music/PlaySongsActivity$1;->this$0:Lcom/google/android/music/PlaySongsActivity;

    sget-object v1, Lcom/google/android/music/PlaySongsActivity$CheckState;->WAITING_FOR_SYNC:Lcom/google/android/music/PlaySongsActivity$CheckState;

    #calls: Lcom/google/android/music/PlaySongsActivity;->startState(Lcom/google/android/music/PlaySongsActivity$CheckState;)V
    invoke-static {v0, v1}, Lcom/google/android/music/PlaySongsActivity;->access$100(Lcom/google/android/music/PlaySongsActivity;Lcom/google/android/music/PlaySongsActivity$CheckState;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity$1$1;->this$1:Lcom/google/android/music/PlaySongsActivity$1;

    iget-object v0, v0, Lcom/google/android/music/PlaySongsActivity$1;->this$0:Lcom/google/android/music/PlaySongsActivity;

    #getter for: Lcom/google/android/music/PlaySongsActivity;->mAsyncWorker:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;
    invoke-static {v0}, Lcom/google/android/music/PlaySongsActivity;->access$200(Lcom/google/android/music/PlaySongsActivity;)Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->sendEmptyMessage(I)Z

    .line 116
    :goto_19
    return-void

    .line 110
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity$1$1;->this$1:Lcom/google/android/music/PlaySongsActivity$1;

    iget-object v0, v0, Lcom/google/android/music/PlaySongsActivity$1;->this$0:Lcom/google/android/music/PlaySongsActivity;

    #getter for: Lcom/google/android/music/PlaySongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;
    invoke-static {v0}, Lcom/google/android/music/PlaySongsActivity;->access$300(Lcom/google/android/music/PlaySongsActivity;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    const-string v1, "failure"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "failureReason"

    aput-object v4, v2, v3

    const-string v3, "accountMismatch"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "activeScreen"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/music/PlaySongsActivity$1$1;->this$1:Lcom/google/android/music/PlaySongsActivity$1;

    iget-object v4, v4, Lcom/google/android/music/PlaySongsActivity$1;->this$0:Lcom/google/android/music/PlaySongsActivity;

    invoke-virtual {v4}, Lcom/google/android/music/PlaySongsActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity$1$1;->this$1:Lcom/google/android/music/PlaySongsActivity$1;

    iget-object v0, v0, Lcom/google/android/music/PlaySongsActivity$1;->this$0:Lcom/google/android/music/PlaySongsActivity;

    sget-object v1, Lcom/google/android/music/PlaySongsActivity$CheckState;->ACCOUNT_MATCH_FAILURE:Lcom/google/android/music/PlaySongsActivity$CheckState;

    #calls: Lcom/google/android/music/PlaySongsActivity;->startState(Lcom/google/android/music/PlaySongsActivity$CheckState;)V
    invoke-static {v0, v1}, Lcom/google/android/music/PlaySongsActivity;->access$100(Lcom/google/android/music/PlaySongsActivity;Lcom/google/android/music/PlaySongsActivity$CheckState;)V

    goto :goto_19
.end method
