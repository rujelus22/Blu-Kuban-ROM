.class Lcom/google/android/music/widgets/TrackListView$3;
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
    .line 162
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$3;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$3;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->notifyDataSetChanged()V
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$100(Lcom/google/android/music/widgets/TrackListView;)V

    .line 165
    return-void
.end method
