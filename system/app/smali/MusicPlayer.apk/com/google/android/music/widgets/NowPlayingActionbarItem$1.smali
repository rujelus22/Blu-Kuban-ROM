.class Lcom/google/android/music/widgets/NowPlayingActionbarItem$1;
.super Landroid/content/BroadcastReceiver;
.source "NowPlayingActionbarItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/NowPlayingActionbarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/widgets/NowPlayingActionbarItem;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/NowPlayingActionbarItem;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem$1;->this$0:Lcom/google/android/music/widgets/NowPlayingActionbarItem;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem$1;->this$0:Lcom/google/android/music/widgets/NowPlayingActionbarItem;

    #calls: Lcom/google/android/music/widgets/NowPlayingActionbarItem;->updateViews()V
    invoke-static {v0}, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->access$000(Lcom/google/android/music/widgets/NowPlayingActionbarItem;)V

    .line 87
    return-void
.end method
