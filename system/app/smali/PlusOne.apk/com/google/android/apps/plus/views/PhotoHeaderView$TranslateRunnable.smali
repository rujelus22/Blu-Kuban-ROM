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
    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mLastRunTime:J

    .line 1207
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 1208
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1191
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z

    return v0
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/high16 v9, 0x447a

    const/4 v4, 0x0

    .line 1237
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mStop:Z

    if-eqz v5, :cond_8

    .line 1282
    :cond_7
    :goto_7
    return-void

    .line 1242
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1243
    .local v1, now:J
    iget-wide v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mLastRunTime:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_69

    iget-wide v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mLastRunTime:J

    sub-long v5, v1, v5

    long-to-float v5, v5

    div-float v0, v5, v9

    .line 1244
    .local v0, delta:F
    :goto_1b
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    mul-float/2addr v7, v0

    #calls: Lcom/google/android/apps/plus/views/PhotoHeaderView;->translate(FF)V
    invoke-static {v5, v6, v7}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->access$200(Lcom/google/android/apps/plus/views/PhotoHeaderView;FF)V

    .line 1245
    iput-wide v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mLastRunTime:J

    .line 1248
    mul-float v3, v9, v0

    .line 1249
    .local v3, slowDown:F
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_6b

    .line 1250
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    sub-float/2addr v5, v3

    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    .line 1251
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_3d

    .line 1252
    iput v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    .line 1260
    :cond_3d
    :goto_3d
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_79

    .line 1261
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    sub-float/2addr v5, v3

    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    .line 1262
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_50

    .line 1263
    iput v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    .line 1273
    :cond_50
    :goto_50
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_5f

    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    cmpl-float v4, v5, v4

    if-nez v4, :cond_5f

    .line 1274
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->stop()V

    .line 1278
    :cond_5f
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mStop:Z

    if-nez v4, :cond_7

    .line 1281
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .end local v0           #delta:F
    .end local v3           #slowDown:F
    :cond_69
    move v0, v4

    .line 1243
    goto :goto_1b

    .line 1255
    .restart local v0       #delta:F
    .restart local v3       #slowDown:F
    :cond_6b
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    add-float/2addr v5, v3

    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    .line 1256
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3d

    .line 1257
    iput v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    goto :goto_3d

    .line 1266
    :cond_79
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    add-float/2addr v5, v3

    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    .line 1267
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_50

    .line 1268
    iput v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    goto :goto_50
.end method

.method public start(FF)Z
    .registers 7
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1214
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z

    if-eqz v2, :cond_7

    .line 1223
    :goto_6
    return v0

    .line 1217
    :cond_7
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mLastRunTime:J

    .line 1218
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityX:F

    .line 1219
    iput p2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mVelocityY:F

    .line 1220
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mStop:Z

    .line 1221
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z

    .line 1222
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 1223
    goto :goto_6
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z

    .line 1231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mStop:Z

    .line 1232
    return-void
.end method
