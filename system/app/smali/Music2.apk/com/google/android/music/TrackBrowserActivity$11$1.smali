.class Lcom/google/android/music/TrackBrowserActivity$11$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity$11;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/TrackBrowserActivity$11;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity$11;)V
    .registers 2
    .parameter

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$11$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$11;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1839
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$11;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1841
    :cond_15
    return-void
.end method
