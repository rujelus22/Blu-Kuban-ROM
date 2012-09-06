.class Ljackpal/androidterm/Term$EmulatorViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Term.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmulatorViewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;

.field private view:Ljackpal/androidterm/emulatorview/EmulatorView;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/emulatorview/EmulatorView;)V
    .registers 3
    .parameter
    .parameter "view"

    .prologue
    .line 210
    iput-object p1, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->this$0:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 211
    iput-object p2, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->view:Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 212
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 222
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    .line 224
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1f

    .line 226
    iget-object v0, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->showPrevious()V

    .line 231
    :goto_1d
    const/4 v0, 0x1

    .line 233
    :goto_1e
    return v0

    .line 229
    :cond_1f
    iget-object v0, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->showNext()V

    goto :goto_1d

    .line 233
    :cond_29
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    .line 216
    iget-object v0, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->this$0:Ljackpal/androidterm/Term;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->view:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->getVisibleWidth()I

    move-result v3

    iget-object v4, p0, Ljackpal/androidterm/Term$EmulatorViewGestureListener;->view:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v4}, Ljackpal/androidterm/emulatorview/EmulatorView;->getVisibleHeight()I

    move-result v4

    #calls: Ljackpal/androidterm/Term;->doUIToggle(IIII)V
    invoke-static {v0, v1, v2, v3, v4}, Ljackpal/androidterm/Term;->access$900(Ljackpal/androidterm/Term;IIII)V

    .line 217
    const/4 v0, 0x1

    return v0
.end method
