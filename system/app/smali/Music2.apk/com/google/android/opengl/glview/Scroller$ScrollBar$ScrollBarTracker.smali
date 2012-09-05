.class Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLView$EventTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/Scroller$ScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollBarTracker"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/Scroller$ScrollBar;)V
    .registers 4
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    invoke-static {}, Lcom/google/android/opengl/glview/Scroller;->access$400()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 242
    const-string v0, "Scroller"

    const-string v1, "started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_16
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setOverlayVisible(Z)V

    .line 245
    return-void
.end method

.method private endTracking()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 272
    invoke-static {}, Lcom/google/android/opengl/glview/Scroller;->access$400()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 273
    const-string v0, "Scroller"

    const-string v1, "endTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_12
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->updateThumbPosition()V

    .line 276
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/glview/GLView;->clearFlags(I)V

    .line 277
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/glview/GLView;->clearFlags(I)V

    .line 278
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setOverlayVisible(Z)V

    .line 279
    return-void
.end method


# virtual methods
.method public trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I
    .registers 10
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x3

    .line 249
    invoke-static {}, Lcom/google/android/opengl/glview/Scroller;->access$400()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 250
    const-string v1, "Scroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_23
    packed-switch p1, :pswitch_data_38

    .line 268
    :goto_26
    :pswitch_26
    const/4 v0, 0x1

    :goto_27
    return v0

    .line 254
    :pswitch_28
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->endTracking()V

    goto :goto_27

    .line 257
    :pswitch_2c
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->endTracking()V

    goto :goto_27

    .line 263
    :pswitch_30
    const/4 v0, 0x0

    goto :goto_27

    .line 265
    :pswitch_32
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    #calls: Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setU(Landroid/view/MotionEvent;)V
    invoke-static {v0, p3}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->access$500(Lcom/google/android/opengl/glview/Scroller$ScrollBar;Landroid/view/MotionEvent;)V

    goto :goto_26

    .line 252
    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_28
        :pswitch_30
        :pswitch_32
        :pswitch_26
        :pswitch_2c
    .end packed-switch
.end method
