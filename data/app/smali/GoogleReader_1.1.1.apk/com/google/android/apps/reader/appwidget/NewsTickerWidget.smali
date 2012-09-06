.class public final Lcom/google/android/apps/reader/appwidget/NewsTickerWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "NewsTickerWidget.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final REMOTE_VIEWS_SERVICE:Ljava/lang/String; = "com.google.android.apps.reader.appwidget.NewsTickerWidgetRemoteViewsService"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/android/apps/reader/appwidget/NewsTickerWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/appwidget/NewsTickerWidget;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static bindViews(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0b0010

    .line 78
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    packed-switch v0, :pswitch_data_ac

    .line 116
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_27
    invoke-static {p3}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/res/ReaderResources;->getShortcutIconResource(Ljava/lang/String;I)I

    move-result v0

    .line 82
    const v1, 0x7f0b0017

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 83
    const v0, 0x7f0b0018

    invoke-virtual {p1, v0, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 85
    invoke-static {p3, p4}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createViewIntent(Landroid/net/Uri;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    const v1, 0x7f0b0016

    invoke-static {p0, v0}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.reader.intent.action.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    const-class v1, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    invoke-static {p0, p3}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->autoRefresh(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 92
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v1, "com.google.reader.intent.extra.LABEL"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "com.google.reader.intent.extra.REMOTE_VIEWS"

    invoke-static {p1}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->clone(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    :goto_70
    return-object v0

    .line 99
    :pswitch_71
    const v0, 0x7f0b0011

    invoke-static {p1, v2, v0}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidget;->setEmptyView(Landroid/widget/RemoteViews;II)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    const-string v1, "com.google.android.apps.reader.appwidget.NewsTickerWidgetRemoteViewsService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    invoke-static {p1, p2, v2, v0}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidget;->setRemoteAdapter(Landroid/widget/RemoteViews;IILandroid/content/Intent;)V

    .line 106
    invoke-static {p3, p4}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createViewItemIntentTemplate(Landroid/net/Uri;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    invoke-static {p0, v0}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 108
    invoke-static {p1, v2, v0}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidget;->setPendingIntentTemplate(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.reader.intent.action.QUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-class v1, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    invoke-static {p0, p3}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->autoRefresh(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_70

    .line 78
    nop

    :pswitch_data_ac
    .packed-switch 0x7f030003
        :pswitch_71
        :pswitch_a
        :pswitch_27
    .end packed-switch
.end method

.method private static setEmptyView(Landroid/widget/RemoteViews;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    sget-boolean v0, Lcom/google/android/apps/reader/appwidget/NewsTickerWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_10
    :try_start_10
    const-string v0, "setEmptyView"

    .line 141
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 144
    const-class v2, Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 148
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_39} :catch_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_39} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_39} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_39} :catch_49
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_39} :catch_4e

    .line 160
    :goto_39
    return-void

    .line 149
    :catch_3a
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_39

    .line 151
    :catch_3f
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_39

    .line 153
    :catch_44
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_39

    .line 155
    :catch_49
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_39

    .line 157
    :catch_4e
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_39
.end method

.method private static setPendingIntentTemplate(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    sget-boolean v0, Lcom/google/android/apps/reader/appwidget/NewsTickerWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_10
    :try_start_10
    const-string v0, "setPendingIntentTemplate"

    .line 201
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/app/PendingIntent;

    aput-object v3, v1, v2

    .line 204
    const-class v2, Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 205
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 208
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_35} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_35} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_35} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_35} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_35} :catch_4a

    .line 220
    :goto_35
    return-void

    .line 209
    :catch_36
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_35

    .line 211
    :catch_3b
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_35

    .line 213
    :catch_40
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_35

    .line 215
    :catch_45
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_35

    .line 217
    :catch_4a
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_35
.end method

.method private static setRemoteAdapter(Landroid/widget/RemoteViews;IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    sget-boolean v0, Lcom/google/android/apps/reader/appwidget/NewsTickerWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_10
    :try_start_10
    const-string v0, "setRemoteAdapter"

    .line 171
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Landroid/content/Intent;

    aput-object v3, v1, v2

    .line 174
    const-class v2, Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 175
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    .line 178
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_41} :catch_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_41} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_41} :catch_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_41} :catch_51
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_41} :catch_56

    .line 190
    :goto_41
    return-void

    .line 179
    :catch_42
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_41

    .line 181
    :catch_47
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_41

    .line 183
    :catch_4c
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_41

    .line 185
    :catch_51
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_41

    .line 187
    :catch_56
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_41
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 123
    const-string v4, "com.google.reader.intent.action.CONTENT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 124
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 125
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v2, componentName:Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 127
    .local v0, appWidgetIds:[I
    const v3, 0x7f0b0010

    .line 128
    .local v3, viewId:I
    invoke-static {v1, v0, v3}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->notifyAppWidgetViewDataChanged(Landroid/appwidget/AppWidgetManager;[II)V

    .line 132
    .end local v0           #appWidgetIds:[I
    .end local v1           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v3           #viewId:I
    :goto_23
    return-void

    .line 130
    :cond_24
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_23
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 51
    array-length v1, p3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_3d

    aget v3, p3, v2

    .line 52
    invoke-static {p1, v3}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getAccount(Landroid/content/Context;I)Lcom/google/android/accounts/Account;

    move-result-object v4

    .line 53
    invoke-static {p1, v3}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getStreamId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-static {p1, v3}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 55
    if-eqz v4, :cond_36

    if-eqz v5, :cond_36

    .line 57
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-ge v7, v8, :cond_39

    const v7, 0x7f030005

    .line 59
    :goto_23
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-direct {v8, v0, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createItemsUri(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 61
    invoke-static {p1, v8, v3, v4, v6}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidget;->bindViews(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 62
    invoke-virtual {p2, v3, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 63
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 57
    :cond_39
    const v7, 0x7f030003

    goto :goto_23

    .line 68
    :cond_3d
    return-void
.end method
