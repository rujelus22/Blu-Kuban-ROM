.class Lcom/google/android/music/widgets/TrackListView$1;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/widgets/TrackListView;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/TrackListView;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$1;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$1;->this$0:Lcom/google/android/music/widgets/TrackListView;

    const/4 v1, 0x1

    #calls: Lcom/google/android/music/widgets/TrackListView;->setIsNowPlaying(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/widgets/TrackListView;->access$000(Lcom/google/android/music/widgets/TrackListView;Z)V

    .line 153
    return-void
.end method
