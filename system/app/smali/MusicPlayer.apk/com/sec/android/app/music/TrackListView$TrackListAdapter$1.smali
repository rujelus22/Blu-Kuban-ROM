.class Lcom/sec/android/app/music/TrackListView$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackListView$TrackListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$1;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1403
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$1;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$1;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vh.divider.setOnTouchListener onTouch...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const/4 v0, 0x1

    return v0
.end method
