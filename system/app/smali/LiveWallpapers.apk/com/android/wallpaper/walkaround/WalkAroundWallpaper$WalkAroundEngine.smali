.class Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "WalkAroundWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WalkAroundEngine"
.end annotation


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 106
    return-void
.end method

.method private startPreview()V
    .registers 13

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 162
    iget-object v10, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    invoke-virtual {v10}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 163
    .local v6, resources:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v5, :cond_58

    .line 166
    .local v5, portrait:Z
    :goto_10
    iget-object v10, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #getter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v10}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 168
    .local v4, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 169
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    .line 172
    .local v8, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 173
    .local v1, found:Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 174
    .local v7, size:Landroid/hardware/Camera$Size;
    if-eqz v5, :cond_41

    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iget v11, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v10, v11, :cond_41

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iget v11, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v10, v11, :cond_4f

    :cond_41
    if-nez v5, :cond_27

    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iget v11, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v10, v11, :cond_27

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iget v11, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v10, v11, :cond_27

    .line 178
    :cond_4f
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v10, v11}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 179
    const/4 v1, 0x1

    goto :goto_27

    .end local v1           #found:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #params:Landroid/hardware/Camera$Parameters;
    .end local v5           #portrait:Z
    .end local v7           #size:Landroid/hardware/Camera$Size;
    .end local v8           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_58
    move v5, v9

    .line 163
    goto :goto_10

    .line 184
    .restart local v1       #found:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    .restart local v4       #params:Landroid/hardware/Camera$Parameters;
    .restart local v5       #portrait:Z
    .restart local v8       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_5a
    if-nez v1, :cond_81

    .line 185
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_60
    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 186
    .restart local v7       #size:Landroid/hardware/Camera$Size;
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iget v11, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v10, v11, :cond_60

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iget v11, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v10, v11, :cond_60

    .line 187
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v10, v11}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 188
    const/4 v1, 0x1

    goto :goto_60

    .line 194
    .end local v7           #size:Landroid/hardware/Camera$Size;
    :cond_81
    if-nez v1, :cond_a4

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, canvas:Landroid/graphics/Canvas;
    :try_start_84
    iget-object v10, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_90

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_90
    .catchall {:try_start_84 .. :try_end_90} :catchall_c0

    .line 201
    :cond_90
    if-eqz v0, :cond_97

    iget-object v10, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v10, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 205
    :cond_97
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 206
    .restart local v7       #size:Landroid/hardware/Camera$Size;
    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 209
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v7           #size:Landroid/hardware/Camera$Size;
    :cond_a4
    const-string v10, "orientation"

    if-eqz v5, :cond_c9

    const-string v9, "portrait"

    :goto_aa
    invoke-virtual {v4, v10, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v9, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #getter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 212
    iget-object v9, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #getter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera;->startPreview()V

    .line 213
    return-void

    .line 201
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    :catchall_c0
    move-exception v9

    if-eqz v0, :cond_c8

    iget-object v10, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v10, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_c8
    throw v9

    .line 209
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :cond_c9
    const-string v9, "landscape"

    goto :goto_aa
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "surfaceHolder"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 112
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 113
    iput-object p1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->mHolder:Landroid/view/SurfaceHolder;

    .line 114
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 140
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 142
    :try_start_9
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #getter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->previewEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #getter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 143
    :cond_1e
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #getter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_27} :catch_31

    .line 152
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-direct {p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->startPreview()V

    .line 153
    :cond_30
    return-void

    .line 144
    :catch_31
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #getter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 146
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    const/4 v2, 0x0

    #setter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$302(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 148
    const-string v1, "WalkAround"

    const-string v2, "Error opening the camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 158
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #calls: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->startCamera()V
    invoke-static {v0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$200(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)V

    .line 159
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    .line 118
    if-nez p1, :cond_10

    .line 119
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #getter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mOwner:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;
    invoke-static {v1}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$000(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;

    move-result-object v1

    if-ne v1, p0, :cond_f

    .line 120
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #calls: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->stopCamera()V
    invoke-static {v1}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$100(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)V

    .line 134
    :cond_f
    :goto_f
    return-void

    .line 124
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #calls: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->startCamera()V
    invoke-static {v1}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$200(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)V

    .line 125
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #getter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 126
    invoke-direct {p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->startPreview()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_23} :catch_24

    goto :goto_f

    .line 127
    :catch_24
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    #getter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 129
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;->this$0:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    const/4 v2, 0x0

    #setter for: Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->access$302(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 131
    const-string v1, "WalkAround"

    const-string v2, "Error opening the camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
