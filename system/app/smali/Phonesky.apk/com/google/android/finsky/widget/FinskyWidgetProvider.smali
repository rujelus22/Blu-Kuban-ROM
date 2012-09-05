.class public abstract Lcom/google/android/finsky/widget/FinskyWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "FinskyWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mWidgetInfo:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 42
    new-instance v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getValidDocumentTypes()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;-><init>([I)V

    iput-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mWidgetInfo:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mAccountName:Ljava/lang/String;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showError(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->rebindWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method private clearList(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mWidgetInfo:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->reset()V

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->rebindWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 148
    return-void
.end method

.method protected static getLaunchMarketIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private isSameAccount(Lcom/google/android/finsky/api/DfeApi;)Z
    .registers 4
    .parameter "dfeApi"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private rebindWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 15
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const v10, 0x7f08019e

    .line 152
    move-object v1, p3

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_7
    if-ge v3, v4, :cond_6f

    aget v0, v1, v3

    .line 153
    .local v0, appWidgetId:I
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0400c0

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 155
    .local v7, widget:Landroid/widget/RemoteViews;
    iget-object v8, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mWidgetInfo:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

    invoke-virtual {v8}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->getItems()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    if-nez v8, :cond_2d

    .line 156
    invoke-direct {p0, p1, v7}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showEmptyState(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 170
    .end local v3           #i$:I
    :cond_26
    invoke-virtual {p2, v0, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 152
    add-int/lit8 v2, v3, 0x1

    .restart local v2       #i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_7

    .line 158
    :cond_2d
    invoke-virtual {v7, v10}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 159
    const v8, 0x7f08019c

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 160
    const/4 v8, 0x0

    invoke-virtual {v7, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 161
    iget-object v8, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mWidgetInfo:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

    invoke-virtual {v8}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->getItems()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;

    .line 162
    .local v5, promo:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;
    invoke-virtual {p0, p1, v5}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->buildView(Landroid/content/Context;Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 163
    .local v6, promoView:Landroid/widget/RemoteViews;
    const v8, 0x7f080197

    iget-object v9, v5, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;->doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, p1, v9}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->buildViewIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 165
    const v8, 0x7f080199

    const v9, 0x7f030001

    invoke-virtual {v6, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 167
    invoke-virtual {v7, v10, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_46

    .line 172
    .end local v0           #appWidgetId:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #promo:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;
    .end local v6           #promoView:Landroid/widget/RemoteViews;
    .end local v7           #widget:Landroid/widget/RemoteViews;
    .restart local v3       #i$:I
    :cond_6f
    return-void
.end method

.method private refreshList(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 111
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 112
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mWidgetInfo:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getDfeUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;-><init>(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->refresh(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$RefreshListener;)V

    .line 125
    return-void
.end method

.method private showEmptyState(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 7
    .parameter "context"
    .parameter "remoteViews"

    .prologue
    const v3, 0x7f08019e

    const v2, 0x7f08019c

    .line 128
    const v0, 0x7f08019d

    const v1, 0x7f030001

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 129
    invoke-virtual {p2, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 131
    const/16 v0, 0x8

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    invoke-static {p1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getLaunchMarketIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 134
    return-void
.end method

.method private showError(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 11
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 137
    move-object v1, p3

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_1c

    aget v0, v1, v2

    .line 138
    .local v0, appWidgetId:I
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0400c0

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 140
    .local v4, remoteViews:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v4}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showEmptyState(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 141
    invoke-virtual {p2, v0, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 143
    .end local v0           #appWidgetId:I
    .end local v4           #remoteViews:Landroid/widget/RemoteViews;
    :cond_1c
    return-void
.end method


# virtual methods
.method protected buildView(Landroid/content/Context;Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;)Landroid/widget/RemoteViews;
    .registers 6
    .parameter "context"
    .parameter "promo"

    .prologue
    .line 88
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400bf

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 89
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    const v1, 0x7f08019a

    iget-object v2, p2, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 90
    const v1, 0x7f08019b

    iget-object v2, p2, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;->developer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 91
    const v1, 0x7f080198

    iget-object v2, p2, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 92
    return-object v0
.end method

.method protected buildViewIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/app/PendingIntent;
    .registers 8
    .parameter "context"
    .parameter "doc"

    .prologue
    .line 96
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 99
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "http"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    const-string v3, "market.android.com"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, detailsUrl:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 104
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 105
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3
.end method

.method protected abstract getDfeUrl()Ljava/lang/String;
.end method

.method protected abstract getValidDocumentTypes()[I
.end method

.method protected getWidgetClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 53
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getWidgetClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 55
    .local v1, appWidgetIds:[I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v3

    .line 57
    .local v3, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    array-length v4, v1

    if-nez v4, :cond_2a

    .line 58
    iput-object v6, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mAccountName:Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->clearList(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 77
    :cond_29
    :goto_29
    return-void

    .line 63
    :cond_2a
    if-nez v3, :cond_35

    .line 65
    iput-object v6, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mAccountName:Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->clearList(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 67
    invoke-static {p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountFromPreferences(Landroid/content/Context;)Z

    goto :goto_29

    .line 68
    :cond_35
    const-string v4, "com.google.android.finsky.action.DFE_API_CONTEXT_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-direct {p0, v3}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->isSameAccount(Lcom/google/android/finsky/api/DfeApi;)Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_43
    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 71
    :cond_4b
    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mAccountName:Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->clearList(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 73
    iget-object v4, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mAccountName:Ljava/lang/String;

    if-eqz v4, :cond_29

    .line 74
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->refreshList(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_29
.end method
