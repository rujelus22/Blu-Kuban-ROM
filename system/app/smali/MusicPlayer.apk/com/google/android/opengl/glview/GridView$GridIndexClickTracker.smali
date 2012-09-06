.class Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;
.super Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridIndexClickTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/glview/GridView;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GridView;II)V
    .registers 4
    .parameter
    .parameter "sourceViewId"
    .parameter "gridIndex"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;->this$0:Lcom/google/android/opengl/glview/GridView;

    .line 689
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;-><init>(Lcom/google/android/opengl/glview/GridView;II)V

    .line 690
    return-void
.end method


# virtual methods
.method public trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I
    .registers 9
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 694
    packed-switch p1, :pswitch_data_3e

    move v0, v1

    .line 724
    :goto_6
    return v0

    .line 696
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;->highlightTracked(Z)V

    .line 697
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;->listenTracked(I)Z

    goto :goto_6

    .line 701
    :pswitch_10
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;->highlightTracked(Z)V

    .line 702
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;->listenTracked(I)Z

    goto :goto_6

    .line 706
    :pswitch_19
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;->highlightTracked(Z)V

    .line 707
    const/4 v0, 0x2

    goto :goto_6

    .line 710
    :pswitch_1e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;->testAndFlagsTracked(I)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p2, p3}, Lcom/google/android/opengl/glview/GLView;->distanceSquared(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result v0

    const/high16 v2, 0x4248

    cmpl-float v0, v0, v2

    if-lez v0, :cond_32

    .line 712
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;->highlightTracked(Z)V

    :cond_32
    move v0, v1

    .line 714
    goto :goto_6

    .line 717
    :pswitch_34
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;->highlightTracked(Z)V

    move v0, v1

    .line 718
    goto :goto_6

    .line 721
    :pswitch_39
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GridView$GridIndexClickTracker;->highlightTracked(Z)V

    goto :goto_6

    .line 694
    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_7
        :pswitch_10
        :pswitch_1e
        :pswitch_34
        :pswitch_19
        :pswitch_39
    .end packed-switch
.end method
