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
    .line 680
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 682
    iput p3, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mKeyCode:I

    .line 683
    return-void
.end method


# virtual methods
.method public trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I
    .registers 14
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 687
    packed-switch p1, :pswitch_data_54

    :cond_5
    move v0, v3

    .line 715
    :cond_6
    :goto_6
    return v0

    .line 689
    :pswitch_7
    float-to-int v1, p4

    .line 690
    .local v1, keyCode:I
    float-to-int v2, p5

    .line 691
    .local v2, keyFlags:I
    iget v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mKeyCode:I

    if-ne v4, v1, :cond_5

    .line 692
    iget-boolean v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mLongpressDetected:Z

    if-nez v4, :cond_6

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_6

    .line 693
    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mLongpressDetected:Z

    .line 694
    iget-object v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4, v3}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 695
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6

    .line 702
    .end local v1           #keyCode:I
    .end local v2           #keyFlags:I
    :pswitch_2c
    float-to-int v1, p4

    .line 703
    .restart local v1       #keyCode:I
    float-to-int v2, p5

    .line 704
    .restart local v2       #keyFlags:I
    iget v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mKeyCode:I

    if-ne v4, v1, :cond_5

    .line 705
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_52

    .line 706
    .local v0, canceled:Z
    :goto_36
    iget-boolean v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->mLongpressDetected:Z

    if-nez v4, :cond_50

    if-nez v0, :cond_50

    .line 707
    iget-object v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4, v3}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 708
    iget-object v4, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    .line 710
    :cond_50
    const/4 v0, 0x3

    goto :goto_6

    .end local v0           #canceled:Z
    :cond_52
    move v0, v3

    .line 705
    goto :goto_36

    .line 687
    :pswitch_data_54
    .packed-switch 0xb
        :pswitch_7
        :pswitch_2c
    .end packed-switch
.end method
