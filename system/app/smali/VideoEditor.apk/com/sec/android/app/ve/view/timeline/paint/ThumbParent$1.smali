.class Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent$1;
.super Ljava/lang/Object;
.source "ThumbParent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent$1;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 61
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent$1;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent$1;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->access$0(Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 64
    :try_start_17
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v9

    iget-object v3, v9, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    .line 65
    .local v3, element:Lcom/samsung/app/video/editor/external/Element;
    if-nez v3, :cond_23

    .line 66
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 96
    .end local v3           #element:Lcom/samsung/app/video/editor/external/Element;
    :goto_22
    return-void

    .line 70
    .restart local v3       #element:Lcom/samsung/app/video/editor/external/Element;
    :cond_23
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v9

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v10

    sub-float v7, v9, v10

    .line 71
    .local v7, time:F
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent$1;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getChildCount()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v7, v9

    .line 72
    .local v1, d:F
    const/4 v8, 0x0

    .line 73
    .local v8, timeslap:F
    const/4 v6, 0x1

    .line 74
    .local v6, ret:I
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v9

    if-ne v9, v11, :cond_4a

    .line 75
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v9

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchInit(Ljava/lang/String;)I

    move-result v6

    .line 78
    :cond_4a
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4b
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent$1;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getChildCount()I

    move-result v9

    if-lt v4, v9, :cond_68

    .line 88
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v9

    if-ne v9, v11, :cond_64

    .line 89
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v9

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchDeInit(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_64} :catch_86

    .line 95
    .end local v1           #d:F
    .end local v3           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v4           #i:I
    .end local v6           #ret:I
    .end local v7           #time:F
    .end local v8           #timeslap:F
    :cond_64
    :goto_64
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    goto :goto_22

    .line 79
    .restart local v1       #d:F
    .restart local v3       #element:Lcom/samsung/app/video/editor/external/Element;
    .restart local v4       #i:I
    .restart local v6       #ret:I
    .restart local v7       #time:F
    .restart local v8       #timeslap:F
    :cond_68
    if-ne v6, v11, :cond_83

    .line 80
    :try_start_6a
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getBitmapFromEngine(Ljava/lang/String;FLcom/samsung/app/video/editor/external/Element;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent$1;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 82
    .local v5, imgView:Landroid/widget/ImageView;
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_82} :catch_86

    .line 84
    add-float/2addr v8, v1

    .line 78
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v5           #imgView:Landroid/widget/ImageView;
    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 91
    .end local v1           #d:F
    .end local v3           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v4           #i:I
    .end local v6           #ret:I
    .end local v7           #time:F
    .end local v8           #timeslap:F
    :catch_86
    move-exception v2

    .line 92
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64
.end method
