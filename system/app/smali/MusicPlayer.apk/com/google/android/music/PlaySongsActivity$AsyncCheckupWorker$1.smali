.class Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$1;
.super Ljava/lang/Object;
.source "PlaySongsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$1;->this$1:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$1;->this$1:Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    iget-object v0, v0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    sget-object v1, Lcom/google/android/music/PlaySongsActivity$CheckState;->SYNC_FAILURE:Lcom/google/android/music/PlaySongsActivity$CheckState;

    #calls: Lcom/google/android/music/PlaySongsActivity;->startState(Lcom/google/android/music/PlaySongsActivity$CheckState;)V
    invoke-static {v0, v1}, Lcom/google/android/music/PlaySongsActivity;->access$100(Lcom/google/android/music/PlaySongsActivity;Lcom/google/android/music/PlaySongsActivity$CheckState;)V

    .line 246
    return-void
.end method
