.class Lcom/google/android/music/RecentBrowserActivity$2;
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
    .line 550
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

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
    .line 553
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #setter for: Lcom/google/android/music/RecentBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/music/RecentBrowserActivity;->access$002(Lcom/google/android/music/RecentBrowserActivity;Z)Z

    .line 554
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    new-instance v1, Lcom/google/android/music/RecentBrowserActivity$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/RecentBrowserActivity$2$1;-><init>(Lcom/google/android/music/RecentBrowserActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/RecentBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method
