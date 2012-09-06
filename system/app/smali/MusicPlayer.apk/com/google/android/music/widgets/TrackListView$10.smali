.class Lcom/google/android/music/widgets/TrackListView$10;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/widgets/TrackListView;->onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/widgets/TrackListView;

.field final synthetic val$inManageMusicMode:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/TrackListView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$10;->this$0:Lcom/google/android/music/widgets/TrackListView;

    iput-boolean p2, p0, Lcom/google/android/music/widgets/TrackListView$10;->val$inManageMusicMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$10;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mInManageMusicMode:Z
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$2300(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/music/widgets/TrackListView$10;->val$inManageMusicMode:Z

    if-eq v0, v1, :cond_16

    .line 1155
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$10;->this$0:Lcom/google/android/music/widgets/TrackListView;

    iget-boolean v1, p0, Lcom/google/android/music/widgets/TrackListView$10;->val$inManageMusicMode:Z

    #setter for: Lcom/google/android/music/widgets/TrackListView;->mInManageMusicMode:Z
    invoke-static {v0, v1}, Lcom/google/android/music/widgets/TrackListView;->access$2302(Lcom/google/android/music/widgets/TrackListView;Z)Z

    .line 1156
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$10;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->postDataSetChanged()V
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$300(Lcom/google/android/music/widgets/TrackListView;)V

    .line 1158
    :cond_16
    return-void
.end method
