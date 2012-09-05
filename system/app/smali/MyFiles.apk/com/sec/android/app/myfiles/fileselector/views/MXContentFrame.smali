.class public abstract Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;
.super Landroid/widget/FrameLayout;
.source "MXContentFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;,
        Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentViewMode:Ljava/lang/String;

.field protected mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

.field protected mViewModeChangedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mViewModeChangedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;

    .line 37
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mViewModeChangedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mViewModeChangedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public changeViewMode(I)V
    .registers 6
    .parameter "id"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_7

    .line 143
    .end local v1           #view:Landroid/view/View;
    :cond_6
    :goto_6
    return-void

    .line 128
    .restart local v1       #view:Landroid/view/View;
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mCurrentViewMode:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, preview:Landroid/view/View;
    if-eqz v0, :cond_14

    .line 131
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_14
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mCurrentViewMode:Ljava/lang/String;

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    .end local v1           #view:Landroid/view/View;
    invoke-interface {v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;->refresh()V

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mViewModeChangedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;

    if-eqz v2, :cond_6

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mViewModeChangedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mCurrentViewMode:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;->onViewModeChanged(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public changeViewMode(Ljava/lang/String;)V
    .registers 6
    .parameter "viewmode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_3

    .line 119
    :cond_2
    :goto_2
    return-void

    .line 98
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_f

    .line 101
    new-instance v2, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;)V

    throw v2

    .line 102
    :cond_f
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mCurrentViewMode:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, preview:Landroid/view/View;
    if-eqz v0, :cond_22

    .line 108
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_22
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mCurrentViewMode:Ljava/lang/String;

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    .end local v1           #view:Landroid/view/View;
    invoke-interface {v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;->refresh()V

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mViewModeChangedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mViewModeChangedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mCurrentViewMode:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;->onViewModeChanged(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getCurrentContentView()Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mCurrentViewMode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_e

    .line 190
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;)V

    throw v1

    .line 192
    :cond_e
    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    .end local v0           #view:Landroid/view/View;
    return-object v0
.end method

.method public rotate(I)V
    .registers 5
    .parameter "orientation"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, index:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 252
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, view:Landroid/view/View;
    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    .end local v1           #view:Landroid/view/View;
    invoke-interface {v1, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;->rotate(I)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 255
    goto :goto_1

    .line 256
    :cond_13
    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;)V
    .registers 5
    .parameter "adapter"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mAdapter:Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;

    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, index:I
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 264
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 265
    .local v1, view:Landroid/view/View;
    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    .end local v1           #view:Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mAdapter:Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;

    invoke-interface {v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;->setViewAdapter(Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    .line 267
    goto :goto_3

    .line 268
    :cond_17
    return-void
.end method

.method public setFirstSelection()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 204
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_12

    .line 207
    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    .end local v1           #view:Landroid/view/View;
    invoke-interface {v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;->setFirstSelection()V

    .line 203
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    :cond_15
    return-void
.end method

.method public setIcon(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    .registers 10
    .parameter "path"
    .parameter "b"
    .parameter "scaleType"

    .prologue
    .line 222
    move-object v0, p2

    .line 223
    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v2, p1

    .line 226
    .local v2, itemPath:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getCurrentContentView()Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    move-result-object v3

    .line 227
    .local v3, view:Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;
    invoke-interface {v3, v2, v0, p3}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;->setIcon(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    :try_end_9
    .catch Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException; {:try_start_2 .. :try_end_9} :catch_a

    .line 233
    .end local v3           #view:Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;
    :goto_9
    return-void

    .line 228
    :catch_a
    move-exception v1

    .line 230
    .local v1, e:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;
    const-string v4, "[MyFiles]"

    const-string v5, "ViewModeNotExistException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setMXView(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mMXView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 54
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    invoke-interface {v1, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;->setMXView(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 56
    :cond_15
    return-void
.end method

.method public setOnViewModeChangedListener(Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mViewModeChangedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;

    .line 237
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9
    .parameter "path"
    .parameter "b"

    .prologue
    .line 285
    move-object v0, p2

    .line 286
    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v2, p1

    .line 289
    .local v2, itemPath:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getCurrentContentView()Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    move-result-object v3

    .line 290
    .local v3, view:Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;
    invoke-interface {v3, v2, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;->setThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_9
    .catch Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException; {:try_start_2 .. :try_end_9} :catch_a

    .line 296
    .end local v3           #view:Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;
    :goto_9
    return-void

    .line 291
    :catch_a
    move-exception v1

    .line 293
    .local v1, e:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;
    const-string v4, "[MyFiles]"

    const-string v5, "ViewModeNotExistException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
