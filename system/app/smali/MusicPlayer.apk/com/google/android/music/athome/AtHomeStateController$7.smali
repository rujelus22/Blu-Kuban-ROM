.class Lcom/google/android/music/athome/AtHomeStateController$7;
.super Landroid/content/BroadcastReceiver;
.source "AtHomeStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeStateController;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeStateController;)V
    .registers 2
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeStateController$7;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 468
    const-string v0, "com.android.music.playbackfailed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 469
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController$7;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #calls: Lcom/google/android/music/athome/AtHomeStateController;->switchToLocalOnFatalError()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeStateController;->access$300(Lcom/google/android/music/athome/AtHomeStateController;)V

    .line 471
    :cond_11
    return-void
.end method
