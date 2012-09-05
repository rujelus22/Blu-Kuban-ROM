.class Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;
.super Landroid/view/SurfaceView;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/PlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/PlayerView;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    .line 85
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 90
    iget-object v3, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    #getter for: Lcom/google/android/youtube/core/player/PlayerView;->videoWidth:I
    invoke-static {v3}, Lcom/google/android/youtube/core/player/PlayerView;->access$000(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v3

    invoke-static {v3, p1}, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->getDefaultSize(II)I

    move-result v2

    .line 91
    .local v2, width:I
    iget-object v3, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    #getter for: Lcom/google/android/youtube/core/player/PlayerView;->videoHeight:I
    invoke-static {v3}, Lcom/google/android/youtube/core/player/PlayerView;->access$100(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v3

    invoke-static {v3, p2}, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 92
    .local v1, height:I
    iget-object v3, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    #getter for: Lcom/google/android/youtube/core/player/PlayerView;->videoWidth:I
    invoke-static {v3}, Lcom/google/android/youtube/core/player/PlayerView;->access$000(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v3

    if-lez v3, :cond_4f

    iget-object v3, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    #getter for: Lcom/google/android/youtube/core/player/PlayerView;->videoHeight:I
    invoke-static {v3}, Lcom/google/android/youtube/core/player/PlayerView;->access$100(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v3

    if-lez v3, :cond_4f

    .line 93
    iget-object v3, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    #getter for: Lcom/google/android/youtube/core/player/PlayerView;->videoWidth:I
    invoke-static {v3}, Lcom/google/android/youtube/core/player/PlayerView;->access$000(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v3

    mul-int/2addr v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    #getter for: Lcom/google/android/youtube/core/player/PlayerView;->videoHeight:I
    invoke-static {v4}, Lcom/google/android/youtube/core/player/PlayerView;->access$100(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v4

    mul-int/2addr v4, v2

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    sub-float v0, v3, v4

    .line 94
    .local v0, aspectDeformation:F
    const v3, 0x3c23d70a

    cmpl-float v3, v0, v3

    if-lez v3, :cond_53

    .line 95
    iget-object v3, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    #getter for: Lcom/google/android/youtube/core/player/PlayerView;->videoHeight:I
    invoke-static {v3}, Lcom/google/android/youtube/core/player/PlayerView;->access$100(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v3

    mul-int/2addr v3, v2

    iget-object v4, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    #getter for: Lcom/google/android/youtube/core/player/PlayerView;->videoWidth:I
    invoke-static {v4}, Lcom/google/android/youtube/core/player/PlayerView;->access$000(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v4

    div-int v1, v3, v4

    .line 100
    .end local v0           #aspectDeformation:F
    :cond_4f
    :goto_4f
    invoke-virtual {p0, v2, v1}, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->setMeasuredDimension(II)V

    .line 101
    return-void

    .line 96
    .restart local v0       #aspectDeformation:F
    :cond_53
    const v3, -0x43dc28f6

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4f

    .line 97
    iget-object v3, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    #getter for: Lcom/google/android/youtube/core/player/PlayerView;->videoWidth:I
    invoke-static {v3}, Lcom/google/android/youtube/core/player/PlayerView;->access$000(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v3

    mul-int/2addr v3, v1

    iget-object v4, p0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/PlayerView;

    #getter for: Lcom/google/android/youtube/core/player/PlayerView;->videoHeight:I
    invoke-static {v4}, Lcom/google/android/youtube/core/player/PlayerView;->access$100(Lcom/google/android/youtube/core/player/PlayerView;)I

    move-result v4

    div-int v2, v3, v4

    goto :goto_4f
.end method
