.class Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;
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
    name = "TranslateRunnable"
.end annotation


# instance fields
.field private final mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

.field private mLastRunTime:J

.field private mRunning:Z

.field private mStop:Z

.field private mVelocityX:F

.field private mVelocityY:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V
    .registers 4
    .parameter "header"

    .prologue
    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1410
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mLastRunTime:J

    .line 1411
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 1412
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1395
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z

    return v0
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/high16 v10, 0x447a

    const/4 v5, 0x0

    .line 1441
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mStop:Z

    if-eqz v6, :cond_8

    .line 1486
    :cond_7
    :goto_7
    return-void

    .line 1446
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1447
    .local v2, now:J
    iget-wide v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mLastRunTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_71

    iget-wide v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mLastRunTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    div-float v0, v6, v10

    .line 1448
    .local v0, delta:F
    :goto_1b
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    mul-float/2addr v7, v0

    iget v8, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    mul-float/2addr v8, v0

    #calls: Lcom/google/android/apps/plus/views/PhotoHeaderView;->translate(FF)Z
    invoke-static {v6, v7, v8}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->access$200(Lcom/google/android/apps/plus/views/PhotoHeaderView;FF)Z

    move-result v1

    .line 1449
    .local v1, didTranslate:Z
    iput-wide v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mLastRunTime:J

    .line 1451
    mul-float v4, v10, v0

    .line 1452
    .local v4, slowDown:F
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_73

    .line 1453
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    sub-float/2addr v6, v4

    iput v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    .line 1454
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_3e

    .line 1455
    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    .line 1463
    :cond_3e
    :goto_3e
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_81

    .line 1464
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    sub-float/2addr v6, v4

    iput v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    .line 1465
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_51

    .line 1466
    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    .line 1476
    :cond_51
    :goto_51
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_5d

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_5f

    :cond_5d
    if-nez v1, :cond_67

    .line 1477
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->stop()V

    .line 1478
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    #calls: Lcom/google/android/apps/plus/views/PhotoHeaderView;->snap()V
    invoke-static {v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->access$300(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V

    .line 1482
    :cond_67
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mStop:Z

    if-nez v5, :cond_7

    .line 1485
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v5, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .end local v0           #delta:F
    .end local v1           #didTranslate:Z
    .end local v4           #slowDown:F
    :cond_71
    move v0, v5

    .line 1447
    goto :goto_1b

    .line 1458
    .restart local v0       #delta:F
    .restart local v1       #didTranslate:Z
    .restart local v4       #slowDown:F
    :cond_73
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    add-float/2addr v6, v4

    iput v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    .line 1459
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_3e

    .line 1460
    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    goto :goto_3e

    .line 1469
    :cond_81
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    add-float/2addr v6, v4

    iput v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    .line 1470
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_51

    .line 1471
    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    goto :goto_51
.end method

.method public start(FF)Z
    .registers 7
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1418
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z

    if-eqz v2, :cond_7

    .line 1427
    :goto_6
    return v0

    .line 1421
    :cond_7
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mLastRunTime:J

    .line 1422
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    .line 1423
    iput p2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    .line 1424
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mStop:Z

    .line 1425
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z

    .line 1426
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 1427
    goto :goto_6
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z

    .line 1435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mStop:Z

    .line 1436
    return-void
.end method
