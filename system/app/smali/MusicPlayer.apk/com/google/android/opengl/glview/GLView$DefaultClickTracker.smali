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
    .line 671
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 673
    return-void
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

    .line 677
    packed-switch p1, :pswitch_data_5e

    move v0, v2

    .line 706
    :goto_7
    return v0

    .line 679
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 680
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_7

    .line 684
    :pswitch_1d
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 685
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2, v1, v3, p2, v4}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_7

    .line 689
    :pswitch_30
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    move v0, v1

    .line 690
    goto :goto_7

    .line 693
    :pswitch_37
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {p2, p3}, Lcom/google/android/opengl/glview/GLView;->distanceSquared(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result v0

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4f

    .line 694
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    :cond_4f
    move v0, v2

    .line 696
    goto :goto_7

    .line 699
    :pswitch_51
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    move v0, v2

    .line 700
    goto :goto_7

    .line 703
    :pswitch_58
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    goto :goto_7

    .line 677
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
