.class public Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ToolBarScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ToolBarScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FontSizeForRichAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/activity/ToolBarScrollView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/ToolBarScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    .line 417
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 418
    #setter for: Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/email/activity/ToolBarScrollView;->access$502(Lcom/android/email/activity/ToolBarScrollView;Landroid/content/Context;)Landroid/content/Context;

    .line 419
    iput-object p4, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->items:Ljava/util/ArrayList;

    .line 420
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 29
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 424
    move-object/from16 v19, p2

    .line 425
    .local v19, v:Landroid/view/View;
    const/4 v3, 0x0

    .line 426
    .local v3, ViewHeight:I
    const/4 v4, 0x0

    .line 427
    .local v4, ViewHeightPX:I
    if-nez v19, :cond_27

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/ToolBarScrollView;->access$500(Lcom/android/email/activity/ToolBarScrollView;)Landroid/content/Context;

    move-result-object v22

    const-string v23, "layout_inflater"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 430
    .local v20, vi:Landroid/view/LayoutInflater;
    const v22, 0x7f040069

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 433
    .end local v20           #vi:Landroid/view/LayoutInflater;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/ToolBarScrollView;->access$500(Lcom/android/email/activity/ToolBarScrollView;)Landroid/content/Context;

    move-result-object v22

    const-string v23, "window"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/WindowManager;

    .line 434
    .local v21, wm:Landroid/view/WindowManager;
    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 435
    .local v17, metrics:Landroid/util/DisplayMetrics;
    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 436
    move-object/from16 v0, v17

    iget v6, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 438
    .local v6, density:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->items:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;

    .line 439
    .local v18, ti:Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/ToolBarScrollView;->access$500(Lcom/android/email/activity/ToolBarScrollView;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "font_size"

    const/16 v24, 0x2

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 440
    .local v16, mValue:I
    packed-switch v16, :pswitch_data_21e

    .line 451
    :goto_76
    int-to-float v0, v3

    move/from16 v22, v0

    int-to-float v0, v6

    move/from16 v23, v0

    const/high16 v24, 0x4320

    div-float v23, v23, v24

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v4, v0

    .line 453
    if-eqz v18, :cond_16f

    .line 454
    const v22, 0x7f100145

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 455
    .local v5, check:Landroid/widget/RadioButton;
    const v22, 0x7f10013c

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 456
    .local v15, fontSize9:Landroid/widget/TextView;
    const v22, 0x7f10013d

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 458
    .local v7, fontSize10:Landroid/widget/TextView;
    const v22, 0x7f10013e

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 460
    .local v8, fontSize12:Landroid/widget/TextView;
    const v22, 0x7f10013f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 462
    .local v9, fontSize14:Landroid/widget/TextView;
    const v22, 0x7f100140

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 464
    .local v10, fontSize16:Landroid/widget/TextView;
    const v22, 0x7f100141

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 466
    .local v11, fontSize20:Landroid/widget/TextView;
    const v22, 0x7f100142

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 468
    .local v12, fontSize24:Landroid/widget/TextView;
    const v22, 0x7f100143

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 470
    .local v13, fontSize28:Landroid/widget/TextView;
    const v22, 0x7f100144

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 472
    .local v14, fontSize36:Landroid/widget/TextView;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    if-nez p1, :cond_178

    .line 483
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 511
    :cond_154
    :goto_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mList:Landroid/widget/ListView;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/ToolBarScrollView;->access$600(Lcom/android/email/activity/ToolBarScrollView;)Landroid/widget/ListView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v22

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_214

    .line 512
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 517
    .end local v5           #check:Landroid/widget/RadioButton;
    .end local v7           #fontSize10:Landroid/widget/TextView;
    .end local v8           #fontSize12:Landroid/widget/TextView;
    .end local v9           #fontSize14:Landroid/widget/TextView;
    .end local v10           #fontSize16:Landroid/widget/TextView;
    .end local v11           #fontSize20:Landroid/widget/TextView;
    .end local v12           #fontSize24:Landroid/widget/TextView;
    .end local v13           #fontSize28:Landroid/widget/TextView;
    .end local v14           #fontSize36:Landroid/widget/TextView;
    .end local v15           #fontSize9:Landroid/widget/TextView;
    :cond_16f
    :goto_16f
    return-object v19

    .line 444
    :pswitch_170
    const/16 v3, 0x38

    .line 445
    goto/16 :goto_76

    .line 448
    :pswitch_174
    const/16 v3, 0x49

    goto/16 :goto_76

    .line 485
    .restart local v5       #check:Landroid/widget/RadioButton;
    .restart local v7       #fontSize10:Landroid/widget/TextView;
    .restart local v8       #fontSize12:Landroid/widget/TextView;
    .restart local v9       #fontSize14:Landroid/widget/TextView;
    .restart local v10       #fontSize16:Landroid/widget/TextView;
    .restart local v11       #fontSize20:Landroid/widget/TextView;
    .restart local v12       #fontSize24:Landroid/widget/TextView;
    .restart local v13       #fontSize28:Landroid/widget/TextView;
    .restart local v14       #fontSize36:Landroid/widget/TextView;
    .restart local v15       #fontSize9:Landroid/widget/TextView;
    :cond_178
    const/16 v22, 0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_18b

    .line 486
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_154

    .line 488
    :cond_18b
    const/16 v22, 0x2

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_19e

    .line 489
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_154

    .line 491
    :cond_19e
    const/16 v22, 0x3

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b1

    .line 492
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_154

    .line 494
    :cond_1b1
    const/16 v22, 0x4

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c4

    .line 495
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_154

    .line 497
    :cond_1c4
    const/16 v22, 0x5

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d8

    .line 498
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_154

    .line 500
    :cond_1d8
    const/16 v22, 0x6

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_1ec

    .line 501
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_154

    .line 503
    :cond_1ec
    const/16 v22, 0x7

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_200

    .line 504
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_154

    .line 506
    :cond_200
    const/16 v22, 0x8

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_154

    .line 507
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_154

    .line 514
    :cond_214
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_16f

    .line 440
    nop

    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_174
        :pswitch_174
    .end packed-switch
.end method
