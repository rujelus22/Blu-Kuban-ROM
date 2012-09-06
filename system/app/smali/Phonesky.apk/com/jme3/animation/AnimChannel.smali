.class public final Lcom/jme3/animation/AnimChannel;
.super Ljava/lang/Object;
.source "AnimChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/animation/AnimChannel$1;
    }
.end annotation


# instance fields
.field private affectedBones:Ljava/util/BitSet;

.field private animation:Lcom/jme3/animation/Animation;

.field private blendAmount:F

.field private blendFrom:Lcom/jme3/animation/Animation;

.field private blendRate:F

.field private control:Lcom/jme3/animation/AnimControl;

.field private loopMode:Lcom/jme3/animation/LoopMode;

.field private loopModeBlendFrom:Lcom/jme3/animation/LoopMode;

.field private speed:F

.field private speedBlendFrom:F

.field private time:F

.field private timeBlendFrom:F


# direct methods
.method private static clampWrapTime(FFLcom/jme3/animation/LoopMode;)F
    .registers 6
    .parameter "t"
    .parameter "max"
    .parameter "loopMode"

    .prologue
    const/4 v0, 0x0

    .line 71
    const/high16 v1, 0x7f80

    cmpl-float v1, p1, v1

    if-nez v1, :cond_8

    .line 95
    .end local p0
    :cond_7
    :goto_7
    :pswitch_7
    return p0

    .line 74
    .restart local p0
    :cond_8
    cmpg-float v1, p0, v0

    if-gez v1, :cond_1d

    .line 76
    sget-object v1, Lcom/jme3/animation/AnimChannel$1;->$SwitchMap$com$jme3$animation$LoopMode:[I

    invoke-virtual {p2}, Lcom/jme3/animation/LoopMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    goto :goto_7

    :pswitch_18
    move p0, v0

    .line 78
    goto :goto_7

    .line 82
    :pswitch_1a
    sub-float p0, p1, p0

    goto :goto_7

    .line 84
    :cond_1d
    cmpl-float v0, p0, p1

    if-lez v0, :cond_7

    .line 85
    sget-object v0, Lcom/jme3/animation/AnimChannel$1;->$SwitchMap$com$jme3$animation$LoopMode:[I

    invoke-virtual {p2}, Lcom/jme3/animation/LoopMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    goto :goto_7

    :pswitch_2d
    move p0, p1

    .line 87
    goto :goto_7

    .line 89
    :pswitch_2f
    const/high16 v0, 0x4000

    mul-float/2addr v0, p1

    sub-float/2addr v0, p0

    neg-float p0, v0

    goto :goto_7

    .line 91
    :pswitch_35
    sub-float/2addr p0, p1

    goto :goto_7

    .line 76
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_18
        :pswitch_7
        :pswitch_1a
    .end packed-switch

    .line 85
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2f
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method getAffectedBones()Ljava/util/BitSet;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->affectedBones:Ljava/util/BitSet;

    return-object v0
.end method

.method update(FLcom/jme3/util/TempVars;)V
    .registers 11
    .parameter "tpf"
    .parameter "vars"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 321
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    if-nez v0, :cond_8

    .line 362
    :cond_7
    :goto_7
    return-void

    .line 324
    :cond_8
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->blendFrom:Lcom/jme3/animation/Animation;

    if-eqz v0, :cond_56

    .line 325
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->blendFrom:Lcom/jme3/animation/Animation;

    iget v1, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    iget v2, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    sub-float v2, v7, v2

    iget-object v3, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    move-object v4, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/animation/Animation;->setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V

    .line 327
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    iget v1, p0, Lcom/jme3/animation/AnimChannel;->speedBlendFrom:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    .line 328
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    iget-object v1, p0, Lcom/jme3/animation/AnimChannel;->blendFrom:Lcom/jme3/animation/Animation;

    invoke-virtual {v1}, Lcom/jme3/animation/Animation;->getLength()F

    move-result v1

    iget-object v2, p0, Lcom/jme3/animation/AnimChannel;->loopModeBlendFrom:Lcom/jme3/animation/LoopMode;

    invoke-static {v0, v1, v2}, Lcom/jme3/animation/AnimChannel;->clampWrapTime(FFLcom/jme3/animation/LoopMode;)F

    move-result v0

    iput v0, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    .line 331
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_43

    .line 332
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    .line 333
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->speedBlendFrom:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/animation/AnimChannel;->speedBlendFrom:F

    .line 336
    :cond_43
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    iget v1, p0, Lcom/jme3/animation/AnimChannel;->blendRate:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    .line 337
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_56

    .line 338
    iput v7, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/animation/AnimChannel;->blendFrom:Lcom/jme3/animation/Animation;

    .line 343
    :cond_56
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    iget v1, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iget v2, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    iget-object v3, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    move-object v4, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/animation/Animation;->setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V

    .line 345
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iget v1, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    .line 347
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {v0}, Lcom/jme3/animation/Animation;->getLength()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8c

    .line 348
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iget-object v1, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {v1}, Lcom/jme3/animation/Animation;->getLength()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_ae

    .line 349
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    iget-object v1, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {v1}, Lcom/jme3/animation/Animation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/jme3/animation/AnimControl;->notifyAnimCycleDone(Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V

    .line 355
    :cond_8c
    :goto_8c
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iget-object v1, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {v1}, Lcom/jme3/animation/Animation;->getLength()F

    move-result v1

    iget-object v2, p0, Lcom/jme3/animation/AnimChannel;->loopMode:Lcom/jme3/animation/LoopMode;

    invoke-static {v0, v1, v2}, Lcom/jme3/animation/AnimChannel;->clampWrapTime(FFLcom/jme3/animation/LoopMode;)F

    move-result v0

    iput v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    .line 356
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_7

    .line 357
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    .line 358
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    goto/16 :goto_7

    .line 350
    :cond_ae
    iget v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_8c

    .line 351
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    iget-object v1, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {v1}, Lcom/jme3/animation/Animation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/jme3/animation/AnimControl;->notifyAnimCycleDone(Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V

    goto :goto_8c
.end method
