.class Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;
.super Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewActivateFocusTracker"
.end annotation


# instance fields
.field private mKeyCode:I

.field private mLongpressDetected:Z

.field final synthetic this$0:Lcom/google/android/opengl/glview/GridView;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GridView;III)V
    .registers 5
    .parameter
    .parameter "sourceViewId"
    .parameter "gridIndex"
    .parameter "keyCode"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->this$0:Lcom/google/android/opengl/glview/GridView;

    .line 738
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;-><init>(Lcom/google/android/opengl/glview/GridView;II)V

    .line 739
    iput p4, p0, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->mKeyCode:I

    .line 740
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
    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 744
    packed-switch p1, :pswitch_data_42

    :cond_6
    :pswitch_6
    move v0, v3

    .line 776
    :cond_7
    :goto_7
    return v0

    .line 746
    :pswitch_8
    float-to-int v1, p4

    .line 747
    .local v1, keyCode:I
    float-to-int v2, p5

    .line 748
    .local v2, keyFlags:I
    iget v4, p0, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->mKeyCode:I

    if-ne v4, v1, :cond_6

    .line 749
    iget-boolean v4, p0, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->mLongpressDetected:Z

    if-nez v4, :cond_7

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_7

    .line 750
    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->mLongpressDetected:Z

    .line 751
    invoke-virtual {p0, v3}, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->highlightTracked(Z)V

    .line 752
    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->listenTracked(I)Z

    goto :goto_7

    .line 759
    .end local v1           #keyCode:I
    .end local v2           #keyFlags:I
    :pswitch_21
    float-to-int v1, p4

    .line 760
    .restart local v1       #keyCode:I
    float-to-int v2, p5

    .line 761
    .restart local v2       #keyFlags:I
    iget v5, p0, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->mKeyCode:I

    if-ne v5, v1, :cond_6

    .line 762
    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_3b

    .line 763
    .local v0, canceled:Z
    :goto_2b
    iget-boolean v5, p0, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->mLongpressDetected:Z

    if-nez v5, :cond_39

    if-nez v0, :cond_39

    .line 764
    invoke-virtual {p0, v3}, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->highlightTracked(Z)V

    .line 765
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->listenTracked(I)Z

    :cond_39
    move v0, v4

    .line 767
    goto :goto_7

    .end local v0           #canceled:Z
    :cond_3b
    move v0, v3

    .line 762
    goto :goto_2b

    .line 772
    .end local v1           #keyCode:I
    .end local v2           #keyFlags:I
    :pswitch_3d
    invoke-virtual {p0, v3}, Lcom/google/android/opengl/glview/GridView$GridViewActivateFocusTracker;->highlightTracked(Z)V

    move v0, v4

    .line 773
    goto :goto_7

    .line 744
    :pswitch_data_42
    .packed-switch 0x7
        :pswitch_3d
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_21
    .end packed-switch
.end method
