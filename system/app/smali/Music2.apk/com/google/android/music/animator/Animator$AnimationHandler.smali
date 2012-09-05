.class Lcom/google/android/music/animator/Animator$AnimationHandler;
.super Landroid/os/Handler;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/animator/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/animator/Animator$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/google/android/music/animator/Animator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    .line 291
    const/4 v1, 0x1

    .line 292
    .local v1, callAgain:Z
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_11e

    .line 355
    :cond_6
    :goto_6
    return-void

    .line 296
    :pswitch_7
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$000()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1b

    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1c

    .line 297
    :cond_1b
    const/4 v1, 0x0

    .line 299
    :cond_1c
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$200()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 300
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_25
    if-ge v5, v2, :cond_49

    .line 301
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$200()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/animator/Animator;

    .line 303
    .local v0, anim:Lcom/google/android/music/animator/Animator;
    #getter for: Lcom/google/android/music/animator/Animator;->mStartDelay:J
    invoke-static {v0}, Lcom/google/android/music/animator/Animator;->access$300(Lcom/google/android/music/animator/Animator;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_41

    .line 304
    #calls: Lcom/google/android/music/animator/Animator;->startAnimation()V
    invoke-static {v0}, Lcom/google/android/music/animator/Animator;->access$400(Lcom/google/android/music/animator/Animator;)V

    .line 300
    :goto_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 306
    :cond_41
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 309
    .end local v0           #anim:Lcom/google/android/music/animator/Animator;
    :cond_49
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$200()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 314
    .end local v2           #count:I
    .end local v5           #i:I
    :pswitch_50
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 318
    .local v3, currentTime:J
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 319
    .local v7, numDelayedAnims:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5d
    if-ge v5, v7, :cond_79

    .line 320
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/animator/Animator;

    .line 321
    .restart local v0       #anim:Lcom/google/android/music/animator/Animator;
    #calls: Lcom/google/android/music/animator/Animator;->delayedAnimationFrame(J)Z
    invoke-static {v0, v3, v4}, Lcom/google/android/music/animator/Animator;->access$500(Lcom/google/android/music/animator/Animator;J)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 322
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$600()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 324
    .end local v0           #anim:Lcom/google/android/music/animator/Animator;
    :cond_79
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$600()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_ac

    .line 325
    const/4 v5, 0x0

    :goto_84
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$600()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_a5

    .line 326
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$600()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/animator/Animator;

    .line 327
    .restart local v0       #anim:Lcom/google/android/music/animator/Animator;
    #calls: Lcom/google/android/music/animator/Animator;->startAnimation()V
    invoke-static {v0}, Lcom/google/android/music/animator/Animator;->access$400(Lcom/google/android/music/animator/Animator;)V

    .line 328
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    .line 330
    .end local v0           #anim:Lcom/google/android/music/animator/Animator;
    :cond_a5
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$600()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 335
    :cond_ac
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$000()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 336
    .local v6, numAnims:I
    const/4 v5, 0x0

    :goto_b5
    if-ge v5, v6, :cond_d1

    .line 337
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$000()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/animator/Animator;

    .line 338
    .restart local v0       #anim:Lcom/google/android/music/animator/Animator;
    #calls: Lcom/google/android/music/animator/Animator;->animationFrame(J)Z
    invoke-static {v0, v3, v4}, Lcom/google/android/music/animator/Animator;->access$700(Lcom/google/android/music/animator/Animator;J)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 339
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$800()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_ce
    add-int/lit8 v5, v5, 0x1

    goto :goto_b5

    .line 342
    .end local v0           #anim:Lcom/google/android/music/animator/Animator;
    :cond_d1
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$800()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_fd

    .line 343
    const/4 v5, 0x0

    :goto_dc
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$800()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_f6

    .line 344
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$800()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/animator/Animator;

    #calls: Lcom/google/android/music/animator/Animator;->endAnimation()V
    invoke-static {v8}, Lcom/google/android/music/animator/Animator;->access$900(Lcom/google/android/music/animator/Animator;)V

    .line 343
    add-int/lit8 v5, v5, 0x1

    goto :goto_dc

    .line 346
    :cond_f6
    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$800()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 351
    :cond_fd
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$000()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_113

    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 352
    :cond_113
    const/4 v8, 0x1

    invoke-static {}, Lcom/google/android/music/animator/Animator;->access$1000()J

    move-result-wide v9

    invoke-virtual {p0, v8, v9, v10}, Lcom/google/android/music/animator/Animator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 292
    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_50
    .end packed-switch
.end method
