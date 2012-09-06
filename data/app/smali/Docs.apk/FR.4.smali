.class public LFR;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:F

.field private final a:J

.field final synthetic a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

.field private a:Z

.field private final b:F

.field private final b:J

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;IFFFFF)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LFR;->a:J

    .line 53
    iget-object v0, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v0

    iput v0, p0, LFR;->f:F

    .line 54
    iget-object v0, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v0

    iput v0, p0, LFR;->g:F

    .line 55
    iget-object v0, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v0

    iput v0, p0, LFR;->h:F

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, LFR;->a:Z

    .line 60
    int-to-long v0, p2

    iput-wide v0, p0, LFR;->b:J

    .line 61
    iput p3, p0, LFR;->a:F

    .line 62
    iput p4, p0, LFR;->b:F

    .line 63
    iput p7, p0, LFR;->e:F

    .line 64
    iput p5, p0, LFR;->c:F

    .line 65
    iput p6, p0, LFR;->d:F

    .line 66
    invoke-static {p1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method


# virtual methods
.method public a(FFFF)F
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    mul-float v0, p2, p4

    add-float/2addr v0, p3

    const/high16 v1, 0x3f00

    mul-float/2addr v1, p1

    mul-float/2addr v1, p4

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    .line 95
    return v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, LFR;->a:Z

    .line 100
    iget-object v0, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    .line 71
    iget-boolean v0, p0, LFR;->a:Z

    if-eqz v0, :cond_5

    .line 90
    :cond_4
    :goto_4
    return-void

    .line 74
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LFR;->a:J

    sub-long/2addr v0, v2

    .line 75
    iget-wide v2, p0, LFR;->b:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    .line 76
    iget-wide v0, p0, LFR;->b:J

    .line 79
    :cond_14
    iget-object v2, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget v3, p0, LFR;->c:F

    iget v4, p0, LFR;->a:F

    iget v5, p0, LFR;->f:F

    long-to-float v6, v0

    invoke-virtual {p0, v3, v4, v5, v6}, LFR;->a(FFFF)F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F

    .line 81
    iget-object v2, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget v3, p0, LFR;->d:F

    iget v4, p0, LFR;->b:F

    iget v5, p0, LFR;->g:F

    long-to-float v6, v0

    invoke-virtual {p0, v3, v4, v5, v6}, LFR;->a(FFFF)F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F

    .line 83
    iget-object v2, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget v3, p0, LFR;->h:F

    iget v4, p0, LFR;->e:F

    iget v5, p0, LFR;->h:F

    sub-float/2addr v4, v5

    long-to-float v5, v0

    mul-float/2addr v4, v5

    iget-wide v5, p0, LFR;->b:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F

    .line 85
    iget-object v2, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v2}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V

    .line 86
    iget-object v2, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->invalidate()V

    .line 87
    iget-wide v2, p0, LFR;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, LFR;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method
