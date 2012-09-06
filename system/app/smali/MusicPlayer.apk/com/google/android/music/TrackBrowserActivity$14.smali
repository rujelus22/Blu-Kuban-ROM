.class Lcom/google/android/music/TrackBrowserActivity$14;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2145
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$14;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamabilityChanged(Z)V
    .registers 4
    .parameter "isStreamable"

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$14;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/music/TrackBrowserActivity;->access$3402(Lcom/google/android/music/TrackBrowserActivity;Z)Z

    .line 2149
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$14;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$14$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/TrackBrowserActivity$14$1;-><init>(Lcom/google/android/music/TrackBrowserActivity$14;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2156
    return-void
.end method
