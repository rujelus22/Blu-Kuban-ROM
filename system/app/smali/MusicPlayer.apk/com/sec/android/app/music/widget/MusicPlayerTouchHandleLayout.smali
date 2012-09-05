.class public Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;
.super Landroid/widget/RelativeLayout;
.source "MusicPlayerTouchHandleLayout.java"


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field private mDoFling:Z

.field private mDoNotAnything:Z

.field private mFlingHandler:Landroid/os/Handler;

.field private mTouchHandler:Landroid/os/Handler;

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v0, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoFling:Z

    .line 46
    iput-boolean v0, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoNotAnything:Z

    .line 50
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 59
    .local v0, action:I
    packed-switch v0, :pswitch_data_aa

    .line 113
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 61
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mX:F

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mY:F

    .line 64
    const v6, 0x7f0c0073

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, mainView:Landroid/view/View;
    const v6, 0x7f0c0080

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 66
    .local v4, progressBarPanelView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v5, v6, v7

    .line 69
    .local v5, upperboundControlPanel:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v7, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_46

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_46

    .line 71
    iput-boolean v8, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoNotAnything:Z

    .line 79
    :goto_43
    iput-boolean v9, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoFling:Z

    goto :goto_9

    .line 73
    :cond_46
    iput-boolean v9, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoNotAnything:Z

    goto :goto_43

    .line 82
    .end local v3           #mainView:Landroid/view/View;
    .end local v4           #progressBarPanelView:Landroid/view/View;
    .end local v5           #upperboundControlPanel:I
    :pswitch_49
    iget-boolean v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoNotAnything:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoFling:Z

    if-nez v6, :cond_9

    .line 83
    iget-object v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mTouchHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mTouchHandler:Landroid/os/Handler;

    const/16 v8, 0x21

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 88
    :pswitch_63
    iget v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v1, v6, v7

    .line 89
    .local v1, dX:F
    iget v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v2, v6, v7

    .line 90
    .local v2, dY:F
    iget-boolean v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoFling:Z

    if-nez v6, :cond_84

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x4248

    cmpl-float v6, v6, v7

    if-lez v6, :cond_84

    .line 91
    iput-boolean v8, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoNotAnything:Z

    goto :goto_9

    .line 94
    :cond_84
    iget-boolean v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoNotAnything:Z

    if-nez v6, :cond_9

    .line 95
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x42c8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    .line 96
    iput-boolean v8, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoFling:Z

    .line 97
    iput-boolean v8, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mDoNotAnything:Z

    .line 98
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_a2

    .line 99
    iget-object v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_9

    .line 101
    :cond_a2
    iget-object v6, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_9

    .line 59
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_e
        :pswitch_49
        :pswitch_63
    .end packed-switch
.end method

.method public setFlingHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mFlingHandler:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method public setTouchDownHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->mTouchHandler:Landroid/os/Handler;

    .line 122
    return-void
.end method
