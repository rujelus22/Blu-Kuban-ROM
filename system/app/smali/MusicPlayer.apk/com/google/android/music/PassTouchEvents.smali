.class public Lcom/google/android/music/PassTouchEvents;
.super Landroid/view/View;
.source "PassTouchEvents.java"


# instance fields
.field private mSendEventsTo:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/PassTouchEvents;->mSendEventsTo:Landroid/view/View;

    .line 19
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/music/PassTouchEvents;->mSendEventsTo:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/music/PassTouchEvents;->mSendEventsTo:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setSendEventsTo(Landroid/view/View;)V
    .registers 2
    .parameter "sendEventsTo"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/music/PassTouchEvents;->mSendEventsTo:Landroid/view/View;

    .line 23
    return-void
.end method
