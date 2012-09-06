.class Lcom/google/android/music/PlayingIndicator$1;
.super Landroid/content/BroadcastReceiver;
.source "PlayingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlayingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/PlayingIndicator;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlayingIndicator;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/music/PlayingIndicator$1;->this$0:Lcom/google/android/music/PlayingIndicator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 100
    const-string v1, "playstate"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    .local v0, isPlaying:Z
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator$1;->this$0:Lcom/google/android/music/PlayingIndicator;

    #getter for: Lcom/google/android/music/PlayingIndicator;->mCurrentState:I
    invoke-static {v1}, Lcom/google/android/music/PlayingIndicator;->access$000(Lcom/google/android/music/PlayingIndicator;)I

    move-result v1

    if-ne v1, v2, :cond_18

    .line 104
    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator$1;->this$0:Lcom/google/android/music/PlayingIndicator;

    #calls: Lcom/google/android/music/PlayingIndicator;->setPlayState(I)V
    invoke-static {v1, v3}, Lcom/google/android/music/PlayingIndicator;->access$100(Lcom/google/android/music/PlayingIndicator;I)V

    .line 108
    :cond_17
    :goto_17
    return-void

    .line 105
    :cond_18
    if-nez v0, :cond_17

    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator$1;->this$0:Lcom/google/android/music/PlayingIndicator;

    #getter for: Lcom/google/android/music/PlayingIndicator;->mCurrentState:I
    invoke-static {v1}, Lcom/google/android/music/PlayingIndicator;->access$000(Lcom/google/android/music/PlayingIndicator;)I

    move-result v1

    if-ne v1, v3, :cond_17

    .line 106
    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator$1;->this$0:Lcom/google/android/music/PlayingIndicator;

    #calls: Lcom/google/android/music/PlayingIndicator;->setPlayState(I)V
    invoke-static {v1, v2}, Lcom/google/android/music/PlayingIndicator;->access$100(Lcom/google/android/music/PlayingIndicator;I)V

    goto :goto_17
.end method
