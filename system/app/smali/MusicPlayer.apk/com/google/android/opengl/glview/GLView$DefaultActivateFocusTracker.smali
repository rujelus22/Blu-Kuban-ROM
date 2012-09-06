.class Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;
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
    name = "DefaultActivateFocusTracker"
.end annotation


# instance fields
.field private mKeyCode:I

.field private mLongpressDetected:Z

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLView;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;I)V
    .registers 5
    .parameter
    .parameter "view"
    .parameter "keyCode"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 716
    iput p3, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mKeyCode:I

    .line 717
    return-void
.end method


# virtual methods
.method public trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I
    .registers 15
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 721
    packed-switch p1, :pswitch_data_5c

    :cond_6
    :pswitch_6
    move v0, v3

    .line 752
    :cond_7
    :goto_7
    return v0

    .line 723
    :pswitch_8
    float-to-int v1, p4

    .line 724
    .local v1, keyCode:I
    float-to-int v2, p5

    .line 725
    .local v2, keyFlags:I
    iget v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mKeyCode:I

    if-ne v4, v1, :cond_6

    .line 726
    iget-boolean v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mLongpressDetected:Z

    if-nez v4, :cond_7

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_7

    .line 727
    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mLongpressDetected:Z

    .line 728
    iget-object v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4, v3}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 729
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_7

    .line 736
    .end local v1           #keyCode:I
    .end local v2           #keyFlags:I
    :pswitch_2d
    float-to-int v1, p4

    .line 737
    .restart local v1       #keyCode:I
    float-to-int v2, p5

    .line 738
    .restart local v2       #keyFlags:I
    iget v5, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mKeyCode:I

    if-ne v5, v1, :cond_6

    .line 739
    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_53

    .line 740
    .local v0, canceled:Z
    :goto_37
    iget-boolean v5, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mLongpressDetected:Z

    if-nez v5, :cond_51

    if-nez v0, :cond_51

    .line 741
    iget-object v5, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v5, v3}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 742
    iget-object v5, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    iget-object v6, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v5, v3, v6, v7, v8}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_51
    move v0, v4

    .line 744
    goto :goto_7

    .end local v0           #canceled:Z
    :cond_53
    move v0, v3

    .line 739
    goto :goto_37

    .line 749
    .end local v1           #keyCode:I
    .end local v2           #keyFlags:I
    :pswitch_55
    iget-object v5, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v5, v3}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    move v0, v4

    .line 750
    goto :goto_7

    .line 721
    :pswitch_data_5c
    .packed-switch 0x7
        :pswitch_55
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_2d
    .end packed-switch
.end method
