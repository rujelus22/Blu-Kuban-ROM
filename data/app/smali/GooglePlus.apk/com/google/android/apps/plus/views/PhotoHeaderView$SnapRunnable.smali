.class Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;
.super Ljava/lang/Object;
.source "PhotoHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/PhotoHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapRunnable"
.end annotation


# instance fields
.field private final mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

.field private mRunning:Z

.field private mStartRunTime:J

.field private mStop:Z

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V
    .registers 4
    .parameter "header"

    .prologue
    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1506
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mStartRunTime:J

    .line 1507
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 1508
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const-wide/16 v11, -0x1

    const/high16 v10, 0x7fc0

    const/high16 v9, 0x4120

    const/high16 v8, 0x42c8

    const/4 v5, 0x0

    .line 1537
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mStop:Z

    if-eqz v6, :cond_e

    .line 1578
    :cond_d
    :goto_d
    return-void

    .line 1542
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1543
    .local v1, now:J
    iget-wide v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mStartRunTime:J

    cmp-long v6, v6, v11

    if-eqz v6, :cond_55

    iget-wide v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mStartRunTime:J

    sub-long v6, v1, v6

    long-to-float v0, v6

    .line 1545
    .local v0, delta:F
    :goto_1d
    iget-wide v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mStartRunTime:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_25

    .line 1546
    iput-wide v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mStartRunTime:J

    .line 1551
    :cond_25
    cmpl-float v6, v0, v8

    if-ltz v6, :cond_57

    .line 1552
    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateX:F

    .line 1553
    .local v3, transX:F
    iget v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateY:F

    .line 1565
    .local v4, transY:F
    :cond_2d
    :goto_2d
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    #calls: Lcom/google/android/apps/plus/views/PhotoHeaderView;->translate(FF)Z
    invoke-static {v6, v3, v4}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->access$200(Lcom/google/android/apps/plus/views/PhotoHeaderView;FF)Z

    .line 1566
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateX:F

    sub-float/2addr v6, v3

    iput v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateX:F

    .line 1567
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateY:F

    sub-float/2addr v6, v4

    iput v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateY:F

    .line 1569
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateX:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_4b

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateY:F

    cmpl-float v5, v6, v5

    if-nez v5, :cond_4b

    .line 1570
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->stop()V

    .line 1574
    :cond_4b
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mStop:Z

    if-nez v5, :cond_d

    .line 1577
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v5, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->post(Ljava/lang/Runnable;)Z

    goto :goto_d

    .end local v0           #delta:F
    .end local v3           #transX:F
    .end local v4           #transY:F
    :cond_55
    move v0, v5

    .line 1543
    goto :goto_1d

    .line 1555
    .restart local v0       #delta:F
    :cond_57
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateX:F

    sub-float v7, v8, v0

    div-float/2addr v6, v7

    mul-float v3, v6, v9

    .line 1556
    .restart local v3       #transX:F
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateY:F

    sub-float v7, v8, v0

    div-float/2addr v6, v7

    mul-float v4, v6, v9

    .line 1557
    .restart local v4       #transY:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateX:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_77

    cmpl-float v6, v3, v10

    if-nez v6, :cond_79

    .line 1558
    :cond_77
    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateX:F

    .line 1560
    :cond_79
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_8b

    cmpl-float v6, v4, v10

    if-nez v6, :cond_2d

    .line 1561
    :cond_8b
    iget v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateY:F

    goto :goto_2d
.end method

.method public start(FF)Z
    .registers 7
    .parameter "translateX"
    .parameter "translateY"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1514
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mRunning:Z

    if-eqz v2, :cond_7

    .line 1523
    :goto_6
    return v0

    .line 1517
    :cond_7
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mStartRunTime:J

    .line 1518
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateX:F

    .line 1519
    iput p2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mTranslateY:F

    .line 1520
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mStop:Z

    .line 1521
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mRunning:Z

    .line 1522
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 1523
    goto :goto_6
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mRunning:Z

    .line 1531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->mStop:Z

    .line 1532
    return-void
.end method
