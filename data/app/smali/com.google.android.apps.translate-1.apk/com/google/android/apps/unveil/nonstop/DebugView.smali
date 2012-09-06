.class public Lcom/google/android/apps/unveil/nonstop/DebugView;
.super Landroid/view/View;
.source "DebugView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private final renderCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->renderCallbacks:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method private changeVisibility(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/DebugView$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/nonstop/DebugView$1;-><init>(Lcom/google/android/apps/unveil/nonstop/DebugView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/nonstop/DebugView;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->renderCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/nonstop/DebugView;->changeVisibility(Z)V

    .line 40
    return-void
.end method

.method public cycleDebugMode(Z)V
    .registers 9
    .parameter "cycleUp"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Toggling debug rendering."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/DebugView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_33

    move v0, v2

    .line 69
    .local v0, isVisible:Z
    :goto_12
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->callback:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->callback:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v4, p1}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->changeMode(Z)Z

    move-result v4

    if-nez v4, :cond_26

    :cond_1e
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->renderCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_35

    :cond_26
    move v1, v2

    .line 73
    .local v1, shouldBeVisible:Z
    :goto_27
    if-eq v0, v1, :cond_2f

    .line 74
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/nonstop/DebugView;->changeVisibility(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/DebugView;->requestLayout()V

    .line 77
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/DebugView;->postInvalidate()V

    .line 78
    return-void

    .end local v0           #isVisible:Z
    .end local v1           #shouldBeVisible:Z
    :cond_33
    move v0, v3

    .line 68
    goto :goto_12

    .restart local v0       #isVisible:Z
    :cond_35
    move v1, v3

    .line 69
    goto :goto_27
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->renderCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;

    .line 45
    .local v0, callback:Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;
    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;->draw(Landroid/graphics/Canvas;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 44
    .end local v0           #callback:Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 48
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->callback:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v2, :cond_23

    .line 49
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->callback:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->drawDebug(Landroid/graphics/Canvas;)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_17

    .line 51
    :cond_23
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setCallback(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;)V
    .registers 3
    .parameter "previewLooper"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/DebugView;->callback:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
