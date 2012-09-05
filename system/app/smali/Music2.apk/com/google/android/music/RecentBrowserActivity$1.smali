.class Lcom/google/android/music/RecentBrowserActivity$1;
.super Ljava/lang/Object;
.source "RecentBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 258
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity;->access$000(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 261
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity;->access$000(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    move-result-object v0

    #calls: Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->updateAllOfflineSelectedStatuses()V
    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->access$100(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)V

    .line 263
    :cond_11
    return-void
.end method
