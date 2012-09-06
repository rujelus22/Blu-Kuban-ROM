.class public Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;
.super Ljava/lang/Object;
.source "RecommendationsViewFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field private final mAppWidgetId:I

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

.field private final mLibrary:Lcom/google/android/finsky/library/Library;

.field private final mMaxImageHeight:I

.field private final mTypeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    .line 65
    iput p2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    .line 66
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 67
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mLibrary:Lcom/google/android/finsky/library/Library;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mMaxImageHeight:I

    .line 70
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 71
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mTypeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;)Lcom/google/android/finsky/widget/WidgetTypeMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mTypeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;

    return-object v0
.end method

.method private getLastMeasuredWidth()I
    .registers 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "appWidgetMinWidth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getLayoutRes(Landroid/content/Context;IIII)I
    .registers 11
    .parameter "context"
    .parameter "imageType"
    .parameter "widgetBackend"
    .parameter "itemBackend"
    .parameter "widthInDips"

    .prologue
    const v2, 0x7f0400ed

    const v4, 0x7f0400ec

    const v1, 0x7f0400e8

    const v3, 0x7f0400ee

    .line 236
    const v5, 0x7f0b0098

    invoke-static {p0, v5}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v0

    .line 238
    .local v0, promoBreakpointDips:I
    packed-switch p2, :pswitch_data_4e

    .line 280
    :pswitch_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid backend: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :pswitch_2f
    const/4 v4, 0x2

    if-ne p1, v4, :cond_37

    .line 241
    if-ge p4, v0, :cond_35

    .line 278
    :cond_34
    :goto_34
    return v1

    :cond_35
    move v1, v2

    .line 244
    goto :goto_34

    :cond_37
    move v1, v3

    .line 247
    goto :goto_34

    .line 251
    :pswitch_39
    packed-switch p3, :pswitch_data_60

    .line 259
    :pswitch_3c
    packed-switch p1, :pswitch_data_70

    move v1, v3

    .line 267
    goto :goto_34

    :pswitch_41
    move v1, v3

    .line 253
    goto :goto_34

    :pswitch_43
    move v1, v4

    .line 257
    goto :goto_34

    .line 261
    :pswitch_45
    if-lt p4, v0, :cond_34

    move v1, v2

    .line 264
    goto :goto_34

    :pswitch_49
    move v1, v3

    .line 273
    goto :goto_34

    :pswitch_4b
    move v1, v4

    .line 278
    goto :goto_34

    .line 238
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_4b
        :pswitch_49
        :pswitch_2f
        :pswitch_4b
        :pswitch_16
        :pswitch_4b
    .end packed-switch

    .line 251
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_43
        :pswitch_41
        :pswitch_3c
        :pswitch_43
        :pswitch_3c
        :pswitch_43
    .end packed-switch

    .line 259
    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_45
    .end packed-switch
.end method

.method private getRecommendationItems()Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .registers 6

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    iget-object v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mLibrary:Lcom/google/android/finsky/library/Library;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecommendationsOrShowError(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;IILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method private static getStripRes(I)I
    .registers 3
    .parameter "backend"

    .prologue
    .line 218
    packed-switch p0, :pswitch_data_20

    .line 231
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid backend"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :pswitch_b
    const v0, 0x7f0200db

    .line 229
    :goto_e
    return v0

    .line 222
    :pswitch_f
    const v0, 0x7f0200df

    goto :goto_e

    .line 224
    :pswitch_13
    const v0, 0x7f0200de

    goto :goto_e

    .line 226
    :pswitch_17
    const v0, 0x7f0200dd

    goto :goto_e

    .line 229
    :pswitch_1b
    const v0, 0x7f0200da

    goto :goto_e

    .line 218
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_b
        :pswitch_f
        :pswitch_1b
        :pswitch_13
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method private getWidgetBackend()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 166
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 168
    .local v1, lock:Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 169
    .local v0, backend:[I
    new-instance v2, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;-><init>(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;[ILjava/util/concurrent/Semaphore;)V

    .line 182
    .local v2, runnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_27

    .line 185
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 189
    :cond_27
    aget v3, v0, v5

    return v3
.end method

.method public static varargs notifyDataSetChanged(Landroid/content/Context;[I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 289
    if-eqz p1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_14

    .line 290
    :cond_9
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    .line 294
    :cond_14
    const v1, 0x7f0801cc

    invoke-virtual {v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 295
    return-void
.end method

.method private static populateItem(Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "views"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 195
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    const v1, 0x7f080197

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 196
    const v1, 0x7f0801d5

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 197
    const v1, 0x7f0801d6

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getRecommendationReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 198
    const v1, 0x7f0801d3

    invoke-virtual {p0, v1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 199
    const v1, 0x7f0801d1

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getStripRes(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 200
    return-void
.end method

.method private static setIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;III)V
    .registers 10
    .parameter "context"
    .parameter "views"
    .parameter "item"
    .parameter "itemIndex"
    .parameter "appWidgetId"
    .parameter "widgetBackendId"

    .prologue
    .line 204
    invoke-virtual {p2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-static {p0, v3, p5, p4}, Lcom/google/android/finsky/widget/recommendation/OpenRecommendationReceiver;->getIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 206
    .local v2, pendingView:Landroid/app/PendingIntent;
    const v3, 0x7f0801da

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 208
    invoke-static {p0, p4}, Lcom/google/android/finsky/widget/AdvanceFlipperReceiver;->getIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 209
    .local v0, advance:Landroid/app/PendingIntent;
    const v3, 0x7f0801db

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 211
    invoke-virtual {p2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-static {p0, p4, v3, p5, p3}, Lcom/google/android/finsky/services/DismissRecommendationService;->getDismissPendingIntent(Landroid/content/Context;ILcom/google/android/finsky/api/model/Document;II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 214
    .local v1, pendingDismiss:Landroid/app/PendingIntent;
    const v3, 0x7f0801d4

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 215
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 147
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 4

    .prologue
    .line 137
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400e9

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    new-array v3, v4, [I

    iget v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    aput v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->update(Landroid/content/Context;Ljava/lang/Class;[I)V

    .line 132
    :cond_17
    :goto_17
    return-object v1

    .line 104
    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    if-nez v0, :cond_26

    .line 105
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getRecommendationItems()Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    if-eqz v0, :cond_17

    .line 112
    :cond_26
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v0

    if-lt p1, v0, :cond_49

    .line 115
    const-string v0, "Item out of bounds (pos = %d, size = %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 119
    :cond_49
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->get(I)Lcom/google/android/finsky/widget/recommendation/Recommendation;

    move-result-object v2

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mMaxImageHeight:I

    invoke-static {v0, v2, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getBitmap(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/widget/recommendation/Recommendation;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getImageType()I

    move-result v1

    .line 123
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getLastMeasuredWidth()I

    move-result v3

    .line 125
    iget-object v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getBackend()I

    move-result v6

    invoke-static {v4, v1, v5, v6, v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getLayoutRes(Landroid/content/Context;IIII)I

    move-result v3

    .line 128
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 130
    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->populateItem(Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;Landroid/graphics/Bitmap;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v5

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->setIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;III)V

    goto :goto_17
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method public onDataSetChanged()V
    .registers 6

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    const-class v1, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->update(Landroid/content/Context;Ljava/lang/Class;[I)V

    .line 86
    :goto_16
    return-void

    .line 85
    :cond_17
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getRecommendationItems()Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    goto :goto_16
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 90
    return-void
.end method
