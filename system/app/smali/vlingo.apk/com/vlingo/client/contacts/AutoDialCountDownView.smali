.class public Lcom/vlingo/client/contacts/AutoDialCountDownView;
.super Landroid/widget/ImageButton;
.source "AutoDialCountDownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;
    }
.end annotation


# instance fields
.field m_elapsedOffset:J

.field m_isCounting:Z

.field m_onClickListener:Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;

.field m_paint:Landroid/graphics/Paint;

.field m_startTime:J

.field m_totalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_paint:Landroid/graphics/Paint;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_isCounting:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_paint:Landroid/graphics/Paint;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_isCounting:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_paint:Landroid/graphics/Paint;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_isCounting:Z

    .line 33
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->setIsCounting(Z)V

    .line 66
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->drawCountdownCircle(Landroid/graphics/Canvas;)V

    .line 101
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->draw(Landroid/graphics/Canvas;)V

    .line 102
    return-void
.end method

.method protected drawCountdownCircle(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    .line 72
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_paint:Landroid/graphics/Paint;

    if-nez v0, :cond_20

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_paint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_paint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_paint:Landroid/graphics/Paint;

    const v2, -0x8b36b6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    :cond_20
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 80
    .local v8, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v8}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 81
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 83
    .local v1, rf:Landroid/graphics/RectF;
    const/high16 v0, 0x43b4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v9, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_startTime:J

    sub-long/2addr v2, v9

    long-to-float v2, v2

    mul-float/2addr v0, v2

    iget-wide v2, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_totalTime:J

    long-to-float v2, v2

    div-float v7, v0, v2

    .line 84
    .local v7, percent:F
    float-to-int v6, v7

    .line 85
    .local v6, pct:I
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->isCounting()Z

    move-result v0

    if-nez v0, :cond_45

    .line 86
    const/4 v6, 0x0

    .line 87
    :cond_45
    const/16 v0, 0x168

    if-lt v6, v0, :cond_59

    .line 88
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->isCounting()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 89
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_onClickListener:Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->post(Ljava/lang/Runnable;)Z

    .line 92
    :cond_57
    const/16 v6, 0x168

    .line 94
    :cond_59
    const/high16 v2, 0x4387

    int-to-float v3, v6

    iget-object v5, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 95
    return-void
.end method

.method public getTimeElapsed()J
    .registers 5

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected declared-synchronized isCounting()Z
    .registers 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_isCounting:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->isCounting()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 107
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->invalidate()V

    .line 109
    :cond_c
    return-void
.end method

.method public setDuration(J)V
    .registers 3
    .parameter "ms"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_totalTime:J

    .line 54
    return-void
.end method

.method protected declared-synchronized setIsCounting(Z)V
    .registers 3
    .parameter "counting"

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_isCounting:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 41
    new-instance v0, Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;-><init>(Lcom/vlingo/client/contacts/AutoDialCountDownView;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_onClickListener:Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;

    .line 42
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_onClickListener:Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method public setTimeElapsed(J)V
    .registers 3
    .parameter "ms"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_elapsedOffset:J

    .line 62
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_elapsedOffset:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView;->m_startTime:J

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->setIsCounting(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->invalidate()V

    .line 50
    return-void
.end method
