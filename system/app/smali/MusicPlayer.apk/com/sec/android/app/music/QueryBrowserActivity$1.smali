.class Lcom/sec/android/app/music/QueryBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/QueryBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/app/music/QueryBrowserActivity$1;->this$0:Lcom/sec/android/app/music/QueryBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$1;->this$0:Lcom/sec/android/app/music/QueryBrowserActivity;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$1;->this$0:Lcom/sec/android/app/music/QueryBrowserActivity;

    #getter for: Lcom/sec/android/app/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->access$000(Lcom/sec/android/app/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    return-void
.end method
