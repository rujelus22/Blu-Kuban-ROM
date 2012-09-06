.class Lcom/google/android/music/PlaySongsActivity$3;
.super Landroid/database/ContentObserver;
.source "PlaySongsActivity.java"


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
.method constructor <init>(Lcom/google/android/music/PlaySongsActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/google/android/music/PlaySongsActivity$3;->this$0:Lcom/google/android/music/PlaySongsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity$3;->this$0:Lcom/google/android/music/PlaySongsActivity;

    #getter for: Lcom/google/android/music/PlaySongsActivity;->mAsyncWorker:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;
    invoke-static {v0}, Lcom/google/android/music/PlaySongsActivity;->access$200(Lcom/google/android/music/PlaySongsActivity;)Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->sendEmptyMessage(I)Z

    .line 378
    return-void
.end method
