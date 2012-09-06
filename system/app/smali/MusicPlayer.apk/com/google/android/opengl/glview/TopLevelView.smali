.class public Lcom/google/android/opengl/glview/TopLevelView;
.super Lcom/google/android/opengl/glview/Scroller;
.source "TopLevelView.java"


# instance fields
.field private mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

.field private mOwner:Lcom/google/android/opengl/glview/Listener;


# direct methods
.method public constructor <init>(IFFLcom/google/android/opengl/glview/Listener;)V
    .registers 5
    .parameter "id"
    .parameter "minSizeW"
    .parameter "minSizeH"
    .parameter "owner"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Scroller;-><init>(IFF)V

    .line 25
    iput-object p4, p0, Lcom/google/android/opengl/glview/TopLevelView;->mOwner:Lcom/google/android/opengl/glview/Listener;

    .line 26
    return-void
.end method


# virtual methods
.method public getNextListener()Lcom/google/android/opengl/glview/Listener;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mOwner:Lcom/google/android/opengl/glview/Listener;

    return-object v0
.end method

.method public route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 16
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 35
    iget-object v1, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    if-eqz v1, :cond_1c

    .line 36
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    .local v0, currentTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 37
    invoke-interface/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView$EventTracker;->trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I

    move-result v8

    .line 38
    .local v8, result:I
    and-int/lit8 v1, v8, 0x2

    if-eqz v1, :cond_17

    .line 39
    iput-object v6, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    .line 41
    :cond_17
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_1c

    .line 52
    .end local v0           #currentTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;
    .end local v8           #result:I
    :goto_1b
    return-object v0

    .line 45
    :cond_1c
    invoke-super/range {p0 .. p5}, Lcom/google/android/opengl/glview/Scroller;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v7

    .line 46
    .local v7, newTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;
    if-eqz v7, :cond_36

    sget-object v1, Lcom/google/android/opengl/glview/TopLevelView;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    if-eq v7, v1, :cond_36

    .line 47
    iget-object v1, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    if-eqz v1, :cond_34

    .line 48
    iget-object v1, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    const/4 v2, 0x7

    move-object v3, v6

    move-object v4, v6

    move v5, v9

    move v6, v9

    invoke-interface/range {v1 .. v6}, Lcom/google/android/opengl/glview/GLView$EventTracker;->trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I

    .line 50
    :cond_34
    iput-object v7, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    :cond_36
    move-object v0, v7

    .line 52
    goto :goto_1b
.end method
