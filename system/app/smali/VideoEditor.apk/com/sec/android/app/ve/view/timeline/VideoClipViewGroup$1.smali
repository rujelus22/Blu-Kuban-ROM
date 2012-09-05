.class Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$1;
.super Landroid/os/Handler;
.source "VideoClipViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 82
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_38

    .line 112
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 84
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 85
    .local v1, objs:[Ljava/lang/Object;
    aget-object v2, v1, v7

    check-cast v2, Landroid/widget/ImageView;

    .line 86
    .local v2, targetView:Landroid/widget/ImageView;
    const/4 v6, 0x1

    aget-object v0, v1, v6

    check-cast v0, Landroid/graphics/Bitmap;

    .line 87
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x2

    aget-object v6, v1, v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 88
    .local v3, time:F
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 89
    .local v4, timeTag:I
    int-to-float v6, v4

    cmpl-float v6, v3, v6

    if-nez v6, :cond_6

    .line 90
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 103
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #objs:[Ljava/lang/Object;
    .end local v2           #targetView:Landroid/widget/ImageView;
    .end local v3           #time:F
    .end local v4           #timeTag:I
    :pswitch_30
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 104
    .local v5, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    #setter for: Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mGoingForLongPress:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->access$0(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;Z)V

    goto :goto_6

    .line 82
    :pswitch_data_38
    .packed-switch 0xa
        :pswitch_6
        :pswitch_30
        :pswitch_7
    .end packed-switch
.end method
