.class final Lcom/sdgtl/mediahub/spr/customview/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field b:F

.field c:Z

.field d:J

.field e:J

.field final synthetic f:Lcom/sdgtl/mediahub/spr/customview/e;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/e;F)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/i;->f:Lcom/sdgtl/mediahub/spr/customview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/i;->c:Z

    iput p2, p0, Lcom/sdgtl/mediahub/spr/customview/i;->b:F

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/customview/i;->e:J

    iget v0, p1, Lcom/sdgtl/mediahub/spr/customview/e;->g:F

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/i;->a:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/customview/i;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/i;->c:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/high16 v2, 0x3f80

    iget-wide v3, p0, Lcom/sdgtl/mediahub/spr/customview/i;->d:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/customview/i;->e:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/i;->f:Lcom/sdgtl/mediahub/spr/customview/e;

    iget v4, p0, Lcom/sdgtl/mediahub/spr/customview/i;->a:F

    iget v5, p0, Lcom/sdgtl/mediahub/spr/customview/i;->b:F

    iget v6, p0, Lcom/sdgtl/mediahub/spr/customview/i;->a:F

    sub-float/2addr v5, v6

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, v3, Lcom/sdgtl/mediahub/spr/customview/e;->g:F

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/customview/i;->d:J

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/customview/i;->e:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_35

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/i;->f:Lcom/sdgtl/mediahub/spr/customview/e;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->post(Ljava/lang/Runnable;)Z

    :cond_35
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/i;->f:Lcom/sdgtl/mediahub/spr/customview/e;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->requestRender()V

    goto :goto_4
.end method
