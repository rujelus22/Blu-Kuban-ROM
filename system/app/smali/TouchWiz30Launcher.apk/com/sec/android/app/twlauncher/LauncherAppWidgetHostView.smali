.class public Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;,
        Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;
    }
.end annotation


# static fields
.field private static mTransparent:Landroid/graphics/Bitmap;


# instance fields
.field private customDrawLock:Ljava/lang/Object;

.field private mCustomCache:Landroid/graphics/Bitmap;

.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCustomDrawing:Z

.field private mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

.field private mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

.field private mUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 62
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    .line 51
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 55
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    .line 63
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setDrawingCacheEnabled(Z)V

    .line 65
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    if-nez v0, :cond_30

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    .line 70
    :cond_30
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setDrawingCacheEnabled(Z)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setChildrenDrawingCacheEnabled(Z)V

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setPersistentDrawingCache(I)V

    .line 73
    return-void

    .line 66
    nop

    :array_3c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private buildCustomCache()V
    .registers 6

    .prologue
    .line 220
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    .line 224
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_25

    .line 225
    const-string v2, "LauncherAppWidgetHostView"

    const-string v3, "Fail to create custom cache bitmap!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_24
    return-void

    .line 228
    :cond_25
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v3

    .line 231
    :try_start_3e
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 232
    .local v1, flag:Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 233
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    .line 234
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 235
    monitor-exit v3

    goto :goto_24

    .end local v1           #flag:Z
    :catchall_4a
    move-exception v2

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method private postCheckForLongClick()V
    .registers 4

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_e

    .line 130
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    .line 132
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method


# virtual methods
.method public buildDrawingCache(Z)V
    .registers 4
    .parameter "autoScale"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_3
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    if-nez v0, :cond_a

    .line 198
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->buildDrawingCache(Z)V

    .line 200
    :cond_a
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_f

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    :cond_f
    return-void
.end method

.method destroyLauncherReferences()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V

    .line 291
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 292
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const-string v0, "LauncherAppWidgetHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchRestoreInstanceState: widgetid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 278
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const-string v0, "LauncherAppWidgetHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSaveInstanceState: widgetid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 286
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_3
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    if-nez v0, :cond_a

    .line 183
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    .line 185
    :cond_a
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    if-eqz v0, :cond_1a

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

    if-eqz v0, :cond_1a

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;->onWidgetUpdated(Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;)V

    .line 191
    :cond_1a
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public declared-synchronized getCustomCache()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 240
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 242
    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->buildCustomCache()V

    .line 244
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    .line 240
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "autoScale"

    .prologue
    .line 205
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v2

    .line 206
    :try_start_3
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .local v0, b:Landroid/graphics/Bitmap;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    if-nez v1, :cond_d

    .line 208
    monitor-exit v2

    .line 210
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_c
    return-object v0

    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_d
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v0           #b:Landroid/graphics/Bitmap;
    monitor-exit v2

    goto :goto_c

    .line 211
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method protected getErrorView()Landroid/view/View;
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCustomFlipEnd()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    .line 263
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 264
    return-void
.end method

.method public onCustomFlipStart()V
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 250
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_9

    .line 83
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 84
    const/4 v0, 0x1

    .line 105
    :cond_8
    :goto_8
    return v0

    .line 89
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    :pswitch_10
    goto :goto_8

    .line 91
    :pswitch_11
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_8

    .line 97
    :pswitch_15
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v1, :cond_8

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 89
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_11
        :pswitch_15
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method

.method public setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

    .line 148
    return-void
.end method

.method public declared-synchronized updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter "remoteViews"

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->isRestricted()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_28
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_23

    .line 163
    :try_start_8
    sget-object v2, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_28

    .line 164
    :try_start_b
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 165
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_25

    .line 167
    :try_start_f
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1b

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    .line 171
    :cond_1b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->invalidate()V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_28

    .line 173
    :goto_21
    monitor-exit p0

    return-void

    .line 156
    :catch_23
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_21

    .line 165
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 155
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method
