.class public Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;
.super Landroid/widget/FrameLayout;
.source "CameraWrappingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$1;,
        Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;,
        Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;,
        Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$CameraLayoutHandler;
    }
.end annotation


# instance fields
.field alignment:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

.field private cameraLayoutHandler:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$CameraLayoutHandler;

.field private cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

.field private frameToCanvas:Landroid/graphics/Matrix;

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private rotation:I

.field private scaleType:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 56
    sget-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->TOP:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    iput-object v0, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->alignment:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    .line 58
    sget-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->FIT:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    iput-object v0, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->scaleType:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 56
    sget-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->TOP:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    iput-object v0, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->alignment:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    .line 58
    sget-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->FIT:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    iput-object v0, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->scaleType:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 56
    sget-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->TOP:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    iput-object v0, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->alignment:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    .line 58
    sget-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->FIT:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    iput-object v0, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->scaleType:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    .line 77
    return-void
.end method

.method static getDisplayedSize(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;ILcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;)Lcom/google/android/apps/unveil/env/Size;
    .registers 10
    .parameter "maxViewSize"
    .parameter "previewSize"
    .parameter "rotation"
    .parameter "scaleType"

    .prologue
    .line 109
    sget-object v4, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;->FILL:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    if-ne p3, v4, :cond_5

    .line 129
    .end local p0
    :goto_4
    return-object p0

    .line 113
    .restart local p0
    :cond_5
    const/16 v4, 0x5a

    if-eq p2, v4, :cond_d

    const/16 v4, 0x10e

    if-ne p2, v4, :cond_2e

    :cond_d
    iget v4, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v4, v4

    iget v5, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 117
    .local v0, frameAspectRatio:F
    :goto_15
    iget v4, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 121
    .local v3, viewAspectRatio:F
    cmpl-float v4, v0, v3

    if-lez v4, :cond_37

    .line 122
    iget v2, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    .line 123
    .local v2, newWidth:I
    iget v4, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v1, v4

    .line 129
    .local v1, newHeight:I
    :goto_28
    new-instance p0, Lcom/google/android/apps/unveil/env/Size;

    .end local p0
    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    goto :goto_4

    .line 113
    .end local v0           #frameAspectRatio:F
    .end local v1           #newHeight:I
    .end local v2           #newWidth:I
    .end local v3           #viewAspectRatio:F
    .restart local p0
    :cond_2e
    iget v4, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v4, v4

    iget v5, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v5, v5

    div-float v0, v4, v5

    goto :goto_15

    .line 125
    .restart local v0       #frameAspectRatio:F
    .restart local v3       #viewAspectRatio:F
    :cond_37
    iget v4, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v2, v4

    .line 126
    .restart local v2       #newWidth:I
    iget v1, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    .restart local v1       #newHeight:I
    goto :goto_28
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 141
    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "onLayout: %b, %d, %d, %d, %d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    if-nez p1, :cond_41

    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isPreviewing()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 145
    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Already previewing or no layout needed, but recursing anyway."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_41
    new-instance v4, Lcom/google/android/apps/unveil/env/Size;

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    invoke-direct {v4, v7, v8}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    .line 150
    .local v4, fullViewSize:Lcom/google/android/apps/unveil/env/Size;
    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Full view size: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    const/4 v6, 0x0

    .line 153
    .local v6, previewSize:Lcom/google/android/apps/unveil/env/Size;
    iget-object v8, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    monitor-enter v8

    .line 156
    :try_start_5b
    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v7, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setFullScreenDisplaySize(Lcom/google/android/apps/unveil/env/Size;)V

    .line 157
    iget v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->rotation:I

    const/16 v9, 0x5a

    if-eq v7, v9, :cond_6c

    iget v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->rotation:I

    const/16 v9, 0x10e

    if-ne v7, v9, :cond_87

    .line 158
    :cond_6c
    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    iget v9, v4, Lcom/google/android/apps/unveil/env/Size;->height:I

    iget v10, v4, Lcom/google/android/apps/unveil/env/Size;->width:I

    invoke-virtual {v7, v9, v10}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getOptimalPreviewSize(II)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v6

    .line 162
    :goto_76
    monitor-exit v8
    :try_end_77
    .catchall {:try_start_5b .. :try_end_77} :catchall_92

    .line 164
    if-nez v6, :cond_95

    .line 165
    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Preview size was null!"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 198
    :cond_86
    :goto_86
    return-void

    .line 160
    :cond_87
    :try_start_87
    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    iget v9, v4, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v10, v4, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-virtual {v7, v9, v10}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getOptimalPreviewSize(II)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v6

    goto :goto_76

    .line 162
    :catchall_92
    move-exception v7

    monitor-exit v8
    :try_end_94
    .catchall {:try_start_87 .. :try_end_94} :catchall_92

    throw v7

    .line 170
    :cond_95
    iget v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->rotation:I

    iget-object v8, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->scaleType:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    invoke-static {v4, v6, v7, v8}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->getDisplayedSize(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;ILcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v3

    .line 171
    .local v3, embeddedViewSize:Lcom/google/android/apps/unveil/env/Size;
    iget v7, v4, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v8, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    sub-int/2addr v7, v8

    div-int/lit8 v0, v7, 0x2

    .line 172
    .local v0, bufferX:I
    iget v7, v4, Lcom/google/android/apps/unveil/env/Size;->height:I

    iget v8, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    sub-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x2

    .line 174
    .local v1, bufferY:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_ac
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_fa

    .line 175
    invoke-virtual {p0, v5}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 176
    .local v2, child:Landroid/view/View;
    sget-object v7, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$1;->$SwitchMap$com$google$android$apps$unveil$ui$CameraWrappingLayout$Alignment:[I

    iget-object v8, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->alignment:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    invoke-virtual {v8}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_110

    .line 185
    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Error: unsupported alignment %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->alignment:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    invoke-virtual {v11}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :pswitch_d6
    iget v7, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    add-int/2addr v7, v0

    iget v8, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    add-int/2addr v8, v1

    invoke-virtual {v2, v0, v1, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 174
    :goto_df
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    .line 178
    :pswitch_e2
    const/4 v7, 0x0

    iget v8, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    add-int/2addr v8, v0

    iget v9, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-virtual {v2, v0, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_df

    .line 181
    :pswitch_ec
    mul-int/lit8 v7, v1, 0x2

    iget v8, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    add-int/2addr v8, v0

    mul-int/lit8 v9, v1, 0x2

    iget v10, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    add-int/2addr v9, v10

    invoke-virtual {v2, v0, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_df

    .line 194
    .end local v2           #child:Landroid/view/View;
    :cond_fa
    iget v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->rotation:I

    invoke-static {v6, v3, v7}, Lcom/google/android/apps/unveil/env/ImageUtils;->getTransformationMatrix(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;I)Landroid/graphics/Matrix;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->frameToCanvas:Landroid/graphics/Matrix;

    .line 195
    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->cameraLayoutHandler:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$CameraLayoutHandler;

    if-eqz v7, :cond_86

    .line 196
    iget-object v7, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->cameraLayoutHandler:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$CameraLayoutHandler;

    iget-object v8, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->frameToCanvas:Landroid/graphics/Matrix;

    invoke-interface {v7, v3, v8}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$CameraLayoutHandler;->onCameraLayoutFinished(Lcom/google/android/apps/unveil/env/Size;Landroid/graphics/Matrix;)V

    goto/16 :goto_86

    .line 176
    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_ec
        :pswitch_d6
    .end packed-switch
.end method

.method public setAlignment(Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;)V
    .registers 2
    .parameter "alignment"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->alignment:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    .line 101
    return-void
.end method

.method public setCameraLayoutHandler(Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$CameraLayoutHandler;)V
    .registers 2
    .parameter "cameraLayoutHandler"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->cameraLayoutHandler:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$CameraLayoutHandler;

    .line 93
    return-void
.end method

.method public setCameraManager(Lcom/google/android/apps/unveil/sensors/CameraManager;)V
    .registers 2
    .parameter "manager"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    .line 89
    return-void
.end method

.method public setRotation(I)V
    .registers 2
    .parameter "rotation"

    .prologue
    .line 96
    iput p1, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->rotation:I

    .line 97
    return-void
.end method

.method public setScaleType(Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;)V
    .registers 2
    .parameter "scaleType"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->scaleType:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$ScaleType;

    .line 105
    return-void
.end method
