.class Lcom/google/android/music/dl/RingtoneNotificationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RingtoneNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/RingtoneNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/RingtoneNotificationManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/RingtoneNotificationManager;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/music/dl/RingtoneNotificationManager$1;->this$0:Lcom/google/android/music/dl/RingtoneNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 111
    .local v7, extras:Landroid/os/Bundle;
    if-nez v7, :cond_7

    .line 127
    :goto_6
    return-void

    .line 113
    :cond_7
    const-string v0, "status"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 115
    .local v2, status:I
    const-string v0, "name"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, name:Ljava/lang/String;
    const-string v0, "musicId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 119
    .local v4, id:J
    const-string v0, "filepath"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, filepath:Ljava/lang/String;
    if-nez v2, :cond_2a

    .line 124
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneNotificationManager$1;->this$0:Lcom/google/android/music/dl/RingtoneNotificationManager;

    #getter for: Lcom/google/android/music/dl/RingtoneNotificationManager;->mScheduler:Lcom/google/android/music/dl/RingtoneScheduler;
    invoke-static {v0}, Lcom/google/android/music/dl/RingtoneNotificationManager;->access$000(Lcom/google/android/music/dl/RingtoneNotificationManager;)Lcom/google/android/music/dl/RingtoneScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/RingtoneScheduler;->refreshEnabledState()V

    .line 126
    :cond_2a
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneNotificationManager$1;->this$0:Lcom/google/android/music/dl/RingtoneNotificationManager;

    move-object v1, p1

    #calls: Lcom/google/android/music/dl/RingtoneNotificationManager;->showNotification(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/music/dl/RingtoneNotificationManager;->access$100(Lcom/google/android/music/dl/RingtoneNotificationManager;Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;)V

    goto :goto_6
.end method
