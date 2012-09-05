.class Lcom/sec/android/widgetapp/calculator/Panel$3;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/calculator/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/calculator/Panel;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .registers 2
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 405
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1200(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 408
    const/4 v2, 0x0

    .local v2, fromXDelta:I
    const/4 v5, 0x0

    .local v5, toXDelta:I
    const/4 v3, 0x0

    .local v3, fromYDelta:I
    const/4 v6, 0x0

    .line 410
    .local v6, toYDelta:I
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v8, v9, :cond_3c

    .line 411
    iget-object v10, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v8

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_f6

    :cond_2b
    const/4 v8, 0x1

    :goto_2c
    iget-object v9, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mVelocity:F
    invoke-static {v9}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1400(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v9

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-lez v9, :cond_f9

    const/4 v9, 0x1

    :goto_38
    xor-int/2addr v8, v9

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z
    invoke-static {v10, v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1302(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    .line 414
    :cond_3c
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$600(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_137

    .line 415
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$900(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    .line 416
    .local v4, height:I
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1300(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v8

    if-nez v8, :cond_ff

    .line 417
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v8

    if-nez v8, :cond_fc

    neg-int v3, v4

    .line 421
    :goto_5c
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/sec/android/widgetapp/calculator/Panel$State;->TRACKING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v8, v9, :cond_10e

    .line 422
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1500(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v8

    int-to-float v9, v3

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F
    invoke-static {v9}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1500(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v9

    int-to-float v10, v6

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_91

    .line 423
    iget-object v9, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1300(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v8

    if-nez v8, :cond_10c

    const/4 v8, 0x1

    :goto_8d
    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z
    invoke-static {v9, v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1302(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    .line 424
    move v6, v3

    .line 426
    :cond_91
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1500(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v8

    float-to-int v3, v8

    .line 430
    :cond_98
    :goto_98
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v8, v9, :cond_121

    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mLinearFlying:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1600(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v8

    if-eqz v8, :cond_121

    .line 431
    const/high16 v8, 0x447a

    sub-int v9, v6, v3

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mVelocity:F
    invoke-static {v10}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1400(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 433
    .local v1, calculatedDuration:I
    const/16 v8, 0x14

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 463
    .end local v4           #height:I
    :goto_c2
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v9, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F
    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1502(Lcom/sec/android/widgetapp/calculator/Panel;F)F

    move-result v9

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F
    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1802(Lcom/sec/android/widgetapp/calculator/Panel;F)F

    .line 464
    if-nez v1, :cond_1f1

    .line 465
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    sget-object v9, Lcom/sec/android/widgetapp/calculator/Panel$State;->READY:Lcom/sec/android/widgetapp/calculator/Panel$State;

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/calculator/Panel;->access$002(Lcom/sec/android/widgetapp/calculator/Panel;Lcom/sec/android/widgetapp/calculator/Panel$State;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    .line 467
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1300(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v8

    if-eqz v8, :cond_f0

    .line 468
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$500(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/widgetapp/calculator/Panel;->onBtnFocus(Z)V

    .line 472
    :cond_f0
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #calls: Lcom/sec/android/widgetapp/calculator/Panel;->postProcess()V
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1900(Lcom/sec/android/widgetapp/calculator/Panel;)V

    .line 486
    :goto_f5
    return-void

    .line 411
    .end local v1           #calculatedDuration:I
    :cond_f6
    const/4 v8, 0x0

    goto/16 :goto_2c

    :cond_f9
    const/4 v9, 0x0

    goto/16 :goto_38

    .restart local v4       #height:I
    :cond_fc
    move v3, v4

    .line 417
    goto/16 :goto_5c

    .line 419
    :cond_ff
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v8

    if-nez v8, :cond_10a

    neg-int v6, v4

    :goto_108
    goto/16 :goto_5c

    :cond_10a
    move v6, v4

    goto :goto_108

    .line 423
    :cond_10c
    const/4 v8, 0x0

    goto :goto_8d

    .line 427
    :cond_10e
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v8, v9, :cond_98

    .line 428
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1500(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v8

    float-to-int v3, v8

    goto/16 :goto_98

    .line 435
    :cond_121
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mDuration:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v8

    sub-int v9, v6, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I
    invoke-static {v9}, Lcom/sec/android/widgetapp/calculator/Panel;->access$900(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v9

    div-int v1, v8, v9

    .restart local v1       #calculatedDuration:I
    goto :goto_c2

    .line 439
    .end local v1           #calculatedDuration:I
    .end local v4           #height:I
    :cond_137
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$800(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v7

    .line 440
    .local v7, width:I
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1300(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v8

    if-nez v8, :cond_1b9

    .line 441
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1b7

    neg-int v2, v7

    .line 445
    :goto_14f
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/sec/android/widgetapp/calculator/Panel$State;->TRACKING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v8, v9, :cond_1c8

    .line 446
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1800(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v8

    int-to-float v9, v2

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F
    invoke-static {v9}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1800(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v9

    int-to-float v10, v5

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_184

    .line 447
    iget-object v9, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1300(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v8

    if-nez v8, :cond_1c6

    const/4 v8, 0x1

    :goto_180
    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z
    invoke-static {v9, v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1302(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    .line 448
    move v5, v2

    .line 450
    :cond_184
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1800(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v8

    float-to-int v2, v8

    .line 454
    :cond_18b
    :goto_18b
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v8, v9, :cond_1da

    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mLinearFlying:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1600(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v8

    if-eqz v8, :cond_1da

    .line 455
    const/high16 v8, 0x447a

    sub-int v9, v5, v2

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mVelocity:F
    invoke-static {v10}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1400(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 457
    .restart local v1       #calculatedDuration:I
    const/16 v8, 0x14

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_c2

    .end local v1           #calculatedDuration:I
    :cond_1b7
    move v2, v7

    .line 441
    goto :goto_14f

    .line 443
    :cond_1b9
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1c4

    neg-int v5, v7

    :goto_1c3
    goto :goto_14f

    :cond_1c4
    move v5, v7

    goto :goto_1c3

    .line 447
    :cond_1c6
    const/4 v8, 0x0

    goto :goto_180

    .line 451
    :cond_1c8
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v8, v9, :cond_18b

    .line 452
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1800(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v8

    float-to-int v2, v8

    goto :goto_18b

    .line 459
    :cond_1da
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mDuration:I
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v8

    sub-int v9, v5, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I
    invoke-static {v9}, Lcom/sec/android/widgetapp/calculator/Panel;->access$800(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v9

    div-int v1, v8, v9

    .restart local v1       #calculatedDuration:I
    goto/16 :goto_c2

    .line 476
    .end local v7           #width:I
    :cond_1f1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v8, v2

    int-to-float v9, v5

    int-to-float v10, v3

    int-to-float v11, v6

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 477
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 478
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2000(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 480
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v8, v9, :cond_228

    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mLinearFlying:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1600(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v8

    if-eqz v8, :cond_228

    .line 481
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 485
    :cond_221
    :goto_221
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v8, v0}, Lcom/sec/android/widgetapp/calculator/Panel;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_f5

    .line 482
    :cond_228
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2100(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/animation/Interpolator;

    move-result-object v8

    if-eqz v8, :cond_221

    .line 483
    iget-object v8, p0, Lcom/sec/android/widgetapp/calculator/Panel$3;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v8}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2100(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_221
.end method
