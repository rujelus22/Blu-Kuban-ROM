.class Lcom/sec/android/app/ve/view/timeline/caption/Caption$2;
.super Ljava/lang/Object;
.source "Caption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/caption/Caption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "view"

    .prologue
    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onClick of Caption :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_39

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 99
    .local v5, time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_39

    .line 100
    invoke-static {p1}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->hideBars(Landroid/view/View;)V

    .line 101
    check-cast p1, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->onDoubleTap()V

    .line 195
    .end local v5           #time:J
    :cond_38
    :goto_38
    return-void

    .line 106
    .restart local p1
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, p1

    .line 108
    check-cast v7, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getMyWidth()I

    move-result v7

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_c8

    .line 110
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v8

    move-object v7, p1

    check-cast v7, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v7

    invoke-virtual {v8, v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementAt(F)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 113
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    const/4 v2, 0x0

    .line 114
    .local v2, elementView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    if-eqz v0, :cond_87

    .line 115
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(Lcom/samsung/app/video/editor/external/Element;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v2

    .line 117
    :cond_87
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v8

    move-object v7, p1

    check-cast v7, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v7

    invoke-virtual {v8, v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementAt(F)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 118
    .local v1, elementEnd:Lcom/samsung/app/video/editor/external/Element;
    const/4 v3, 0x0

    .line 119
    .local v3, elementViewEnd:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    if-eqz v1, :cond_a9

    .line 120
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(Lcom/samsung/app/video/editor/external/Element;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v3

    .line 122
    :cond_a9
    const/4 v4, 0x0

    .local v4, i:I
    :goto_aa
    move-object v7, p1

    .line 123
    check-cast v7, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getMyWidth()I

    move-result v7

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_b9

    const/16 v7, 0x190

    if-le v4, v7, :cond_132

    .line 139
    :cond_b9
    if-eqz v2, :cond_be

    .line 140
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->refreshThumbnail()V

    .line 142
    :cond_be
    if-eq v2, v3, :cond_c5

    if-eqz v3, :cond_c5

    .line 143
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->refreshThumbnail()V

    .line 148
    :cond_c5
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 154
    .end local v0           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v1           #elementEnd:Lcom/samsung/app/video/editor/external/Element;
    .end local v2           #elementView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .end local v3           #elementViewEnd:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .end local v4           #i:I
    :cond_c8
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/ve/view/timeline/caption/Caption$2$1;

    invoke-direct {v8, p0, p1}, Lcom/sec/android/app/ve/view/timeline/caption/Caption$2$1;-><init>(Lcom/sec/android/app/ve/view/timeline/caption/Caption$2;Landroid/view/View;)V

    .line 165
    const-wide/16 v9, 0xc8

    .line 154
    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    invoke-static {p1}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->hideBars(Landroid/view/View;)V

    .line 169
    const v7, 0x7f0b0018

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_172

    .line 170
    const v7, 0x7f0b0018

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_f3
    const v7, 0x7f0b0019

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_180

    .line 175
    const v7, 0x7f0b0019

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_10d
    move-object v7, p1

    .line 179
    check-cast v7, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getMyWidth()I

    move-result v7

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_38

    .line 180
    const v7, 0x7f0b0018

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 181
    const v7, 0x7f0b0019

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_38

    .line 124
    .restart local v0       #element:Lcom/samsung/app/video/editor/external/Element;
    .restart local v1       #elementEnd:Lcom/samsung/app/video/editor/external/Element;
    .restart local v2       #elementView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .restart local v3       #elementViewEnd:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .restart local v4       #i:I
    :cond_132
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v7, "Caption : width :"

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, p1

    check-cast v7, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getMyWidth()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " interation :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 125
    if-eqz v0, :cond_15d

    .line 126
    if-eqz v2, :cond_15d

    .line 127
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->addThumbNailImage(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_15d
    if-eq v0, v1, :cond_167

    if-eqz v1, :cond_167

    .line 131
    if-eqz v3, :cond_167

    .line 132
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->addThumbNailImage(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_167
    add-int/lit8 v4, v4, 0x1

    .line 136
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    goto/16 :goto_aa

    .line 172
    .end local v0           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v1           #elementEnd:Lcom/samsung/app/video/editor/external/Element;
    .end local v2           #elementView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .end local v3           #elementViewEnd:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .end local v4           #i:I
    :cond_172
    const v7, 0x7f0b0018

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f3

    .line 177
    :cond_180
    const v7, 0x7f0b0019

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10d
.end method
