.class Lcom/sec/android/app/music/TrackBrowserActivity$43;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2533
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$43;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 2536
    const/4 v1, 0x1

    new-array v0, v1, [J

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$43;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1500(Lcom/sec/android/app/music/TrackBrowserActivity;)J

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 2539
    .local v0, selectedItem:[J
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$43;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/music/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    .line 2540
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$43;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mRequeryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1700(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2541
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$43;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mRequeryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1700(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2543
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$43;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mRequeryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1700(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2544
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$43;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #calls: Lcom/sec/android/app/music/TrackBrowserActivity;->finishActivityIfNoItem()V
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2700(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    .line 2545
    return-void
.end method
