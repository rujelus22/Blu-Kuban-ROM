.class Lcom/google/android/music/RecentBrowserActivity$5;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "RecentBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RecentBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/RecentBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$5;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-direct {p0}, Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamabilityChanged(Z)V
    .registers 4
    .parameter "isStreamable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$5;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #setter for: Lcom/google/android/music/RecentBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/music/RecentBrowserActivity;->access$702(Lcom/google/android/music/RecentBrowserActivity;Z)Z

    .line 779
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$5;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    new-instance v1, Lcom/google/android/music/RecentBrowserActivity$5$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/RecentBrowserActivity$5$1;-><init>(Lcom/google/android/music/RecentBrowserActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/RecentBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 786
    return-void
.end method
