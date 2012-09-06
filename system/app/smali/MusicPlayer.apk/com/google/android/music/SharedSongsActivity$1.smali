.class Lcom/google/android/music/SharedSongsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SharedSongsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/SharedSongsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/SharedSongsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/SharedSongsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/music/SharedSongsActivity$1;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    const-string v0, "com.google.android.music.VERIFIED_ACCOUNTS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 104
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$1;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mAsyncWorker:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$000(Lcom/google/android/music/SharedSongsActivity;)Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->sendEmptyMessage(I)Z

    .line 106
    :cond_16
    return-void
.end method
