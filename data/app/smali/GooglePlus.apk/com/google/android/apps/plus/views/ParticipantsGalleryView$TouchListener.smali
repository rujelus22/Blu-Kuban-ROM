.class Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ParticipantsGalleryView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ParticipantsGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field private final avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/views/OverlayedAvatarView;)V
    .registers 5
    .parameter
    .parameter "avatarView"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 152
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 155
    iput-object p2, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 157
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->access$000(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 199
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 200
    .local v0, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->access$000(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;->onAvatarDoubleClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V

    .line 202
    .end local v0           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->access$000(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 187
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 188
    .local v0, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->access$000(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;->onAvatarClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V

    .line 190
    .end local v0           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_33
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
