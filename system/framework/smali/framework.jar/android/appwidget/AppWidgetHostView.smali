.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    }
.end annotation


# static fields
.field static final CROSSFADE:Z = false

.field static final FADE_DURATION:I = 0x3e8

.field static final LOGD:Z = false

.field static final TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final VIEW_MODE_CONTENT:I = 0x1

.field static final VIEW_MODE_DEFAULT:I = 0x3

.field static final VIEW_MODE_ERROR:I = 0x2

.field static final VIEW_MODE_NOINIT:I

.field static final sInflaterFilter:Landroid/view/LayoutInflater$Filter;


# instance fields
.field mAppWidgetId:I

.field mContext:Landroid/content/Context;

.field mFadeStartTime:J

.field mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field mLayoutId:I

.field mOld:Landroid/graphics/Bitmap;

.field mOldPaint:Landroid/graphics/Paint;

.field mRemoteContext:Landroid/content/Context;

.field mView:Landroid/view/View;

.field mViewMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Landroid/appwidget/AppWidgetHostView$1;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$1;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 89
    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .parameter "context"
    .parameter "animationIn"
    .parameter "animationOut"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mFadeStartTime:J

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOldPaint:Landroid/graphics/Paint;

    .line 102
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    .line 107
    return-void
.end method

.method private generateId()I
    .registers 3

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    move-result v0

    .line 207
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .end local v0           #id:I
    :cond_9
    return v0
.end method

.method public static getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .parameter "context"
    .parameter "component"
    .parameter "padding"

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 162
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-nez p2, :cond_44

    .line 163
    new-instance p2, Landroid/graphics/Rect;

    .end local p2
    invoke-direct {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 169
    .restart local p2
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_14} :catch_48

    move-result-object v0

    .line 175
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_43

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 177
    .local v3, r:Landroid/content/res/Resources;
    const v4, 0x1050049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 179
    const v4, 0x105004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 181
    const v4, 0x105004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 183
    const v4, 0x105004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 186
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_43
    :goto_43
    return-object p2

    .line 165
    :cond_44
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c

    .line 170
    :catch_48
    move-exception v1

    .line 172
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_43
.end method

.method private getRemoteContext(Landroid/widget/RemoteViews;)Landroid/content/Context;
    .registers 7
    .parameter "views"

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, packageName:Ljava/lang/String;
    if-nez v1, :cond_9

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 381
    :goto_8
    return-object v2

    .line 378
    :cond_9
    :try_start_9
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_f} :catch_11

    move-result-object v2

    goto :goto_8

    .line 379
    :catch_11
    move-exception v0

    .line 380
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppWidgetHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_8
.end method


# virtual methods
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
    .line 212
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 214
    .local v1, parcelable:Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 215
    .local v0, jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    if-eqz v1, :cond_14

    instance-of v2, v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    if-eqz v2, :cond_14

    move-object v0, v1

    .line 216
    check-cast v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    .line 219
    :cond_14
    if-nez v0, :cond_1c

    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    .end local v0           #jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$1;)V

    .line 221
    .restart local v0       #jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    :cond_1c
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 222
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 4
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
    .line 200
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$1;)V

    .line 201
    .local v0, jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 202
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 420
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 230
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    if-eqz v1, :cond_c

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 231
    .local v0, context:Landroid/content/Context;
    :goto_6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1

    .line 230
    .end local v0           #context:Landroid/content/Context;
    :cond_c
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_6
.end method

.method public getAppWidgetId()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .registers 9

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, defaultView:Landroid/view/View;
    const/4 v2, 0x0

    .line 451
    .local v2, exception:Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v5, :cond_63

    .line 452
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 454
    .local v4, theirContext:Landroid/content/Context;
    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 455
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 457
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 458
    sget-object v5, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v3, v5}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 459
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_31} :catch_6b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_31} :catch_6e

    move-result-object v0

    .line 469
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #theirContext:Landroid/content/Context;
    :goto_32
    if-eqz v2, :cond_5c

    .line 470
    const-string v5, "AppWidgetHostView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error inflating AppWidget "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_5c
    if-nez v0, :cond_62

    .line 475
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 478
    :cond_62
    return-object v0

    .line 461
    :cond_63
    :try_start_63
    const-string v5, "AppWidgetHostView"

    const-string v6, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_63 .. :try_end_6a} :catch_6b
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_6a} :catch_6e

    goto :goto_32

    .line 463
    :catch_6b
    move-exception v1

    .line 464
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v1

    .line 467
    goto :goto_32

    .line 465
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_6e
    move-exception v1

    .line 466
    .local v1, e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_32
.end method

.method protected getErrorView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 485
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 486
    .local v0, tv:Landroid/widget/TextView;
    const v1, 0x10404fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 488
    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 489
    return-object v0
.end method

.method protected prepareView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 431
    .local v0, requested:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_e

    .line 432
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0           #requested:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 436
    .restart local v0       #requested:Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 437
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    return-void
.end method

.method resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 242
    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 8
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 115
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 116
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 120
    if-eqz p2, :cond_1a

    .line 122
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 123
    .local v0, padding:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 125
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_1a
    return-void
.end method

.method public setAppWidgetWithoutPadding(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 8
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 129
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 130
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 134
    if-eqz p2, :cond_13

    .line 136
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 137
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 139
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_13
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 10
    .parameter "remoteViews"

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    .line 251
    const/4 v4, 0x0

    .line 252
    .local v4, recycled:Z
    const/4 v0, 0x0

    .line 253
    .local v0, content:Landroid/view/View;
    const/4 v2, 0x0

    .line 274
    .local v2, exception:Ljava/lang/Exception;
    if-nez p1, :cond_3d

    .line 275
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-ne v5, v6, :cond_c

    .line 344
    :cond_b
    :goto_b
    return-void

    .line 279
    :cond_c
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    .line 280
    const/4 v5, -0x1

    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 281
    iput v6, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 315
    :goto_15
    if-nez v0, :cond_29

    .line 316
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-eq v5, v7, :cond_b

    .line 320
    const-string v5, "AppWidgetHostView"

    const-string/jumbo v6, "updateAppWidget couldn\'t find any view, using error view"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 322
    iput v7, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 325
    :cond_29
    if-nez v4, :cond_31

    .line 326
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 327
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 330
    :cond_31
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v5, v0, :cond_b

    .line 331
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 332
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    goto :goto_b

    .line 285
    :cond_3d
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext(Landroid/widget/RemoteViews;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 286
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    .line 290
    .local v3, layoutId:I
    if-nez v0, :cond_57

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    if-ne v3, v5, :cond_57

    .line 292
    :try_start_4d
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p1, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_56} :catch_65

    .line 294
    const/4 v4, 0x1

    .line 302
    :cond_57
    :goto_57
    if-nez v0, :cond_5f

    .line 304
    :try_start_59
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_5e} :catch_68

    move-result-object v0

    .line 311
    :cond_5f
    :goto_5f
    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 312
    const/4 v5, 0x1

    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    goto :goto_15

    .line 296
    :catch_65
    move-exception v1

    .line 297
    .local v1, e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_57

    .line 306
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_68
    move-exception v1

    .line 307
    .restart local v1       #e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_5f
.end method

.method viewDataChanged(I)V
    .registers 7
    .parameter "viewId"

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 352
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_1b

    instance-of v4, v3, Landroid/widget/AdapterView;

    if-eqz v4, :cond_1b

    move-object v1, v3

    .line 353
    check-cast v1, Landroid/widget/AdapterView;

    .line 354
    .local v1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 355
    .local v0, adapter:Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_1c

    move-object v2, v0

    .line 356
    check-cast v2, Landroid/widget/BaseAdapter;

    .line 357
    .local v2, baseAdapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 365
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v1           #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .end local v2           #baseAdapter:Landroid/widget/BaseAdapter;
    :cond_1b
    :goto_1b
    return-void

    .line 358
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v1       #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_1c
    if-nez v0, :cond_1b

    instance-of v4, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v4, :cond_1b

    .line 362
    check-cast v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .end local v1           #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-interface {v1}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_1b
.end method
