.class Lcom/google/android/music/RecentBrowserActivity$2$1;
.super Ljava/lang/Object;
.source "RecentBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/RecentBrowserActivity$2;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/RecentBrowserActivity$2;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$2$1;->this$1:Lcom/google/android/music/RecentBrowserActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$2$1;->this$1:Lcom/google/android/music/RecentBrowserActivity$2;

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity;->access$600(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 557
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$2$1;->this$1:Lcom/google/android/music/RecentBrowserActivity$2;

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity;->access$600(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->notifyDataSetChanged()V

    .line 559
    :cond_15
    return-void
.end method
