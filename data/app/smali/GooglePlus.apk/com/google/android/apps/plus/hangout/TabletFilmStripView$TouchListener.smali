.class Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TabletFilmStripView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/TabletFilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/HangoutVideoView;)V
    .registers 5
    .parameter
    .parameter "videoView"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 106
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 109
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 111
    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;)Lcom/google/android/apps/plus/hangout/HangoutVideoView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    return-object v0
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 153
    .local v0, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->onVideoDoubleClicked(Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$800(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 154
    const/4 v1, 0x1

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #getter for: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$400(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Lcom/google/android/apps/plus/hangout/HangoutTile;

    move-result-object v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_2c

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, p4, v1

    if-lez v1, :cond_2c

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 166
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    if-eqz v1, :cond_2a

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #getter for: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$400(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Lcom/google/android/apps/plus/hangout/HangoutTile;

    move-result-object v1

    check-cast v0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->hideChild(Landroid/view/View;)V

    .line 169
    :cond_2a
    const/4 v1, 0x1

    .line 172
    :goto_2b
    return v1

    :cond_2c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_2b
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2f

    .line 183
    cmpg-float v4, p4, v6

    if-gez v4, :cond_2d

    move v0, v2

    .line 188
    .local v0, isDragging:Z
    :goto_1b
    if-eqz v0, :cond_2c

    .line 191
    new-instance v1, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener$1;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    invoke-direct {v1, p0, v4}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener$1;-><init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;Landroid/view/View;)V

    .line 200
    .local v1, shadowBuilder:Landroid/view/View$DragShadowBuilder;
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    invoke-virtual {v4, v5, v1, v6, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 202
    .end local v1           #shadowBuilder:Landroid/view/View$DragShadowBuilder;
    :cond_2c
    return v2

    .end local v0           #isDragging:Z
    :cond_2d
    move v0, v3

    .line 183
    goto :goto_1b

    .line 186
    :cond_2f
    cmpl-float v4, p4, v6

    if-lez v4, :cond_35

    move v0, v2

    .restart local v0       #isDragging:Z
    :goto_34
    goto :goto_1b

    .end local v0           #isDragging:Z
    :cond_35
    move v0, v3

    goto :goto_34
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 142
    .local v0, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->onVideoClicked(Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$700(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 144
    .end local v0           #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_27
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
