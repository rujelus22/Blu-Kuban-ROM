.class Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;
.super Ljava/lang/Object;
.source "ShadowedChildManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/ShadowedChildManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Child"
.end annotation


# instance fields
.field mCurrentlyDrawingView:Z

.field mHaveUploadedOnce:Z

.field mInvalidated:Z

.field mShadow:Lcom/sec/android/app/twlauncher/ShadowSurface;

.field mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/ShadowedChildManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/ShadowedChildManager;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 106
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->this$0:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mInvalidated:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mHaveUploadedOnce:Z

    .line 91
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mCurrentlyDrawingView:Z

    .line 95
    new-instance v0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child$1;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->this$0:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    #getter for: Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->access$000(Lcom/sec/android/app/twlauncher/ShadowedChildManager;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child$1;-><init>(Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 104
    new-instance v0, Lcom/sec/android/app/twlauncher/ShadowSurface;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ShadowSurface;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mShadow:Lcom/sec/android/app/twlauncher/ShadowSurface;

    .line 107
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    .line 108
    return-void
.end method


# virtual methods
.method public drawShadow(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->this$0:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    #getter for: Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mSuspendUpdates:Z
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->access$100(Lcom/sec/android/app/twlauncher/ShadowedChildManager;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mHaveUploadedOnce:Z

    if-nez v0, :cond_f

    .line 151
    :cond_c
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->updateIfNeeded(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 152
    :cond_f
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mHaveUploadedOnce:Z

    if-eqz v0, :cond_26

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mShadow:Lcom/sec/android/app/twlauncher/ShadowSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/twlauncher/ShadowSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;FF)V

    .line 154
    :cond_26
    return-void
.end method

.method public drawView(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 8
    .parameter "canvas"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->this$0:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    #getter for: Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mSuspendUpdates:Z
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->access$100(Lcom/sec/android/app/twlauncher/ShadowedChildManager;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mHaveUploadedOnce:Z

    if-nez v0, :cond_f

    .line 142
    :cond_c
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->updateIfNeeded(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 143
    :cond_f
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mHaveUploadedOnce:Z

    if-eqz v0, :cond_35

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 146
    :cond_35
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mInvalidated:Z

    return v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mInvalidated:Z

    .line 136
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mCurrentlyDrawingView:Z

    if-nez v0, :cond_10

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 138
    :cond_10
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->updateIfNeeded(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 158
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mHaveUploadedOnce:Z

    if-eqz v0, :cond_11

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mShadow:Lcom/sec/android/app/twlauncher/ShadowSurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ShadowSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 162
    :cond_11
    return-void
.end method

.method public updateIfNeeded(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 10
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mInvalidated:Z

    if-eqz v4, :cond_4d

    .line 112
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 113
    .local v3, width:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 114
    .local v2, height:I
    if-lez v3, :cond_4e

    if-lez v2, :cond_4e

    .line 115
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mInvalidated:Z

    .line 117
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mCurrentlyDrawingView:Z

    .line 122
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 123
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mCurrentlyDrawingView:Z

    .line 124
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 125
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mShadow:Lcom/sec/android/app/twlauncher/ShadowSurface;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v4, p1, v5}, Lcom/sec/android/app/twlauncher/ShadowSurface;->update(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 126
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mHaveUploadedOnce:Z

    .line 132
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v3           #width:I
    :cond_4d
    :goto_4d
    return-void

    .line 128
    .restart local v2       #height:I
    .restart local v3       #width:I
    :cond_4e
    const-string v4, "ShadowedChildManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to create texture for view with dimensions "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method
