.class Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;
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
    name = "ScaleRunnable"
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private final mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

.field private mRunning:Z

.field private mStartScale:F

.field private mStartTime:J

.field private mStop:Z

.field private mTargetScale:F

.field private mVelocity:F

.field private mZoomingIn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V
    .registers 2
    .parameter "header"

    .prologue
    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 1335
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1370
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mStop:Z

    if-eqz v5, :cond_5

    .line 1389
    :cond_4
    :goto_4
    return-void

    .line 1375
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1376
    .local v3, now:J
    iget-wide v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mStartTime:J

    sub-long v0, v3, v5

    .line 1377
    .local v0, ellapsed:J
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mStartScale:F

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mVelocity:F

    long-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v2, v5, v6

    .line 1378
    .local v2, newScale:F
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mCenterX:F

    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mCenterY:F

    #calls: Lcom/google/android/apps/plus/views/PhotoHeaderView;->scale(FFF)V
    invoke-static {v5, v2, v6, v7}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->access$100(Lcom/google/android/apps/plus/views/PhotoHeaderView;FFF)V

    .line 1381
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mTargetScale:F

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_2f

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mZoomingIn:Z

    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mTargetScale:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_47

    const/4 v5, 0x1

    :goto_2d
    if-ne v6, v5, :cond_3d

    .line 1382
    :cond_2f
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mTargetScale:F

    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mCenterX:F

    iget v8, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mCenterY:F

    #calls: Lcom/google/android/apps/plus/views/PhotoHeaderView;->scale(FFF)V
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->access$100(Lcom/google/android/apps/plus/views/PhotoHeaderView;FFF)V

    .line 1383
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->stop()V

    .line 1386
    :cond_3d
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mStop:Z

    if-nez v5, :cond_4

    .line 1387
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v5, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 1381
    :cond_47
    const/4 v5, 0x0

    goto :goto_2d
.end method

.method public start(FFFF)Z
    .registers 10
    .parameter "startScale"
    .parameter "targetScale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1341
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mRunning:Z

    if-eqz v0, :cond_7

    .line 1357
    :goto_6
    return v2

    .line 1345
    :cond_7
    iput p3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mCenterX:F

    .line 1346
    iput p4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mCenterY:F

    .line 1349
    iput p2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mTargetScale:F

    .line 1350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mStartTime:J

    .line 1351
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mStartScale:F

    .line 1352
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mTargetScale:F

    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mStartScale:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_35

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mZoomingIn:Z

    .line 1353
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mTargetScale:F

    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mStartScale:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x4396

    div-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mVelocity:F

    .line 1354
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mRunning:Z

    .line 1355
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mStop:Z

    .line 1356
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->post(Ljava/lang/Runnable;)Z

    move v2, v1

    .line 1357
    goto :goto_6

    :cond_35
    move v0, v2

    .line 1352
    goto :goto_1e
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mRunning:Z

    .line 1365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->mStop:Z

    .line 1366
    return-void
.end method
