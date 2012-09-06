.class Lcom/google/android/music/MusicEventLogger$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicEventLogger;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/music/MusicEventLogger$1;->this$0:Lcom/google/android/music/MusicEventLogger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/music/MusicEventLogger$1;->this$0:Lcom/google/android/music/MusicEventLogger;

    #calls: Lcom/google/android/music/MusicEventLogger;->updateUploadAccount()V
    invoke-static {v0}, Lcom/google/android/music/MusicEventLogger;->access$000(Lcom/google/android/music/MusicEventLogger;)V

    .line 43
    return-void
.end method
