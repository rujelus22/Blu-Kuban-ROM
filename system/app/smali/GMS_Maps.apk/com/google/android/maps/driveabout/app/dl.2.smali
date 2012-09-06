.class Lcom/google/android/maps/driveabout/app/dL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 3
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dL;->b:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dL;->a:Z

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 882
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dL;->a:Z

    if-nez v0, :cond_11

    .line 883
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 884
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/dL;->a:Z

    .line 886
    :cond_11
    return-void

    .line 883
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 845
    .line 847
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_4e

    move v1, v0

    .line 878
    :cond_a
    :goto_a
    return v1

    .line 849
    :pswitch_b
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/dL;->a:Z

    if-nez v2, :cond_1d

    .line 850
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dL;->b:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;)Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->y()V

    goto :goto_a

    .line 852
    :cond_1d
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dL;->a:Z

    goto :goto_a

    .line 857
    :pswitch_20
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_27

    move v0, v1

    :cond_27
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_a

    .line 861
    :pswitch_2b
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dL;->a(Landroid/view/View;)V

    goto :goto_a

    .line 865
    :pswitch_2f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 866
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 868
    if-ltz v0, :cond_49

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_49

    if-ltz v2, :cond_49

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v2, v0, :cond_a

    .line 870
    :cond_49
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dL;->a(Landroid/view/View;)V

    goto :goto_a

    .line 847
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_b
        :pswitch_2f
        :pswitch_2b
    .end packed-switch
.end method
