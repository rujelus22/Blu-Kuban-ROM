.class Lcom/google/android/music/athome/AtHomeMusicServer$1;
.super Landroid/content/BroadcastReceiver;
.source "AtHomeMusicServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeMusicServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeMusicServer;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeMusicServer;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$1;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.android.music.shufflemodechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 98
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$1;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #calls: Lcom/google/android/music/athome/AtHomeMusicServer;->updateShuffleMode(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$100(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/content/Intent;)V

    .line 105
    :goto_11
    return-void

    .line 99
    :cond_12
    const-string v1, "com.google.android.music.repeatmodechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 100
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$1;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #calls: Lcom/google/android/music/athome/AtHomeMusicServer;->updateRepeatMode(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$200(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/content/Intent;)V

    goto :goto_11

    .line 103
    :cond_20
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$1;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #calls: Lcom/google/android/music/athome/AtHomeMusicServer;->updatePlayState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$300(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/content/Intent;)V

    goto :goto_11
.end method
