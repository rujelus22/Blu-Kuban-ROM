.class public Lcom/sec/android/socialhub/split/HubFragmentResizer;
.super Ljava/lang/Object;
.source "HubFragmentResizer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawSplitArrow(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 6
    .parameter "type"
    .parameter "wrapper"

    .prologue
    const/16 v3, 0x8

    .line 124
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 126
    invoke-static {p0}, Lcom/sec/android/socialhub/split/HubSplitSetting;->getSelectedAccount(I)Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 128
    .local v0, selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    if-eqz p1, :cond_1d

    .line 130
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Arrow:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1d

    .line 132
    const-string v1, "HubFragmentResizer"

    const-string v2, "drawSplitArrow"

    const-string v3, "wrapper is null"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0           #selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :cond_1c
    :goto_1c
    return-void

    .line 137
    .restart local v0       #selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :cond_1d
    if-eqz v0, :cond_39

    .line 140
    if-eqz p1, :cond_33

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->isEqual(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 142
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Arrow:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Split_Arrow:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/sec/android/socialhub/split/HubSplitSetting;->registerSplitArrowImage(Landroid/widget/ImageView;)V

    goto :goto_1c

    .line 147
    :cond_33
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Arrow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1c

    .line 152
    :cond_39
    if-eqz p1, :cond_1c

    .line 154
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Arrow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1c
.end method

.method public static isSplitSelected(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "context"
    .parameter "gw"
    .parameter "splitbar"
    .parameter "dest"
    .parameter "event"

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, bSelected:Z
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_76

    .line 62
    :goto_8
    return v0

    .line 36
    :pswitch_9
    const/4 v1, 0x0

    .line 37
    .local v1, left:I
    const/4 v4, 0x0

    .line 38
    .local v4, top:I
    move-object v3, p1

    .line 40
    .local v3, temp_view:Landroid/view/View;
    :goto_c
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v1, v5

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    if-ne v5, v6, :cond_6f

    .line 51
    :cond_26
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    sub-float v2, v5, v6

    .line 53
    .local v2, posX:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41f0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_54

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_54

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_54

    .line 55
    const/4 v0, 0x1

    .line 58
    :cond_54
    const-string v5, "HubFragmentResizer"

    const-string v6, "isSplitSelected()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bSelected - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 48
    .end local v2           #posX:F
    :cond_6f
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .end local v3           #temp_view:Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3       #temp_view:Landroid/view/View;
    goto :goto_c

    .line 33
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public static moveSplitBar(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "context"
    .parameter "gw"
    .parameter "splitbar"
    .parameter "dest"
    .parameter "event"

    .prologue
    .line 76
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 83
    :goto_7
    return-void

    .line 79
    :pswitch_8
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 80
    .local v0, delta:I
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p0, p1, p3, v0, v1}, Lcom/sec/android/socialhub/split/HubFragmentResizer;->updateLayout(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    goto :goto_7

    .line 76
    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method

.method private static updateLayout(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
    .registers 10
    .parameter "context"
    .parameter "gw"
    .parameter "dest"
    .parameter "delta"
    .parameter "position"

    .prologue
    const/16 v4, 0x14

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 95
    .local v1, gw_param:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 97
    .local v0, dest_param:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->getDestMinWidth()I

    move-result v3

    if-gt v2, v3, :cond_2e

    .line 102
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->getDestMinWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 105
    :cond_2e
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ge v2, v4, :cond_41

    .line 107
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x14

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    :cond_41
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method
