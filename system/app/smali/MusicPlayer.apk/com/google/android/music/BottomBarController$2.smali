.class Lcom/google/android/music/BottomBarController$2;
.super Landroid/content/BroadcastReceiver;
.source "BottomBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/BottomBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/BottomBarController;


# direct methods
.method constructor <init>(Lcom/google/android/music/BottomBarController;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/music/BottomBarController$2;->this$0:Lcom/google/android/music/BottomBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 245
    :cond_14
    iget-object v1, p0, Lcom/google/android/music/BottomBarController$2;->this$0:Lcom/google/android/music/BottomBarController;

    #calls: Lcom/google/android/music/BottomBarController;->updateHasPlaylist()V
    invoke-static {v1}, Lcom/google/android/music/BottomBarController;->access$900(Lcom/google/android/music/BottomBarController;)V

    .line 247
    :cond_19
    return-void
.end method
