.class Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;
.super Ljava/lang/Object;
.source "GLView.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLView$EventTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultClickTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/glview/GLView;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 628
    return-void
.end method

.method private distanceSquared(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F
    .registers 12
    .parameter "e0"
    .parameter "e1"

    .prologue
    .line 665
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 666
    .local v3, x0:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 667
    .local v5, y0:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 668
    .local v4, x1:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 669
    .local v6, y1:F
    sub-float v0, v3, v4

    .line 670
    .local v0, dx:F
    sub-float v1, v5, v6

    .line 671
    .local v1, dy:F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 672
    .local v2, result:F
    return v2
.end method


# virtual methods
.method public trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I
    .registers 12
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x3

    const/4 v2, 0x0

    .line 632
    packed-switch p1, :pswitch_data_5e

    move v0, v2

    .line 661
    :goto_7
    return v0

    .line 634
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 635
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_7

    .line 639
    :pswitch_1d
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 640
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2, v1, v3, p2, v4}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_7

    .line 644
    :pswitch_30
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    move v0, v1

    .line 645
    goto :goto_7

    .line 648
    :pswitch_37
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-direct {p0, p2, p3}, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->distanceSquared(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result v0

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4f

    .line 649
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    :cond_4f
    move v0, v2

    .line 651
    goto :goto_7

    .line 654
    :pswitch_51
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    move v0, v2

    .line 655
    goto :goto_7

    .line 658
    :pswitch_58
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    goto :goto_7

    .line 632
    :pswitch_data_5e
    .packed-switch 0x2
        :pswitch_8
        :pswitch_1d
        :pswitch_37
        :pswitch_51
        :pswitch_30
        :pswitch_58
    .end packed-switch
.end method
