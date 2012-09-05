.class public Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;
.super Landroid/widget/RemoteViewsService;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field private a:Lcom/google/android/youtube/app/c/b;

.field private b:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private c:Lcom/google/android/youtube/app/honeycomb/widget/b;

.field private d:Ljava/util/List;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/widget/b;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/widget/b;-><init>(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->c:Lcom/google/android/youtube/app/honeycomb/widget/b;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d:Ljava/util/List;

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 11

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->e:Z

    if-nez v1, :cond_42

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->e:Z

    .line 59
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v3, v0

    .line 60
    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v8

    .line 61
    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v9

    .line 62
    new-instance v2, Lcom/google/android/youtube/app/v;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v9, v1}, Lcom/google/android/youtube/app/v;-><init>(Lcom/google/android/youtube/core/client/ad;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/google/android/youtube/app/c/b;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/youtube/app/v;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    const/16 v5, 0x8

    const/16 v6, 0x18

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/app/c/b;-><init>(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Ljava/util/concurrent/ConcurrentMap;IIZ)V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a:Lcom/google/android/youtube/app/c/b;

    .line 65
    invoke-interface {v9}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->b:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 68
    invoke-virtual {v8, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_4c

    .line 75
    :cond_42
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4c
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_47

    .line 79
    :goto_45
    monitor-exit p0

    return-void

    .line 76
    :catch_47
    move-exception v1

    .line 77
    :try_start_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_45

    .line 54
    :catchall_4c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)V
    .registers 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->b()V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 99
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a:Lcom/google/android/youtube/app/c/b;

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->e:Z

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 107
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 109
    new-instance v3, Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-class v6, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-direct {v3, v4, v5, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 111
    :goto_2b
    array-length v4, v1

    if-ge v0, v4, :cond_42

    .line 112
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/c;->b(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 114
    aget v5, v1, v0

    const v6, 0x7f0900bd

    invoke-virtual {v4, v5, v6, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 115
    aget v5, v1, v0

    invoke-virtual {v2, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 117
    :cond_42
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/a;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5f

    .line 119
    :cond_5d
    monitor-exit p0

    return-void

    .line 99
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 139
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a:Lcom/google/android/youtube/app/c/b;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->b:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/app/c/b;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/g;)V

    .line 141
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 122
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a:Lcom/google/android/youtube/app/c/b;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->b:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/app/c/b;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/g;)V

    .line 123
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d()V

    .line 131
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {}, Lcom/google/android/youtube/core/L;->c()V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->c()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 37
    check-cast p2, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->c()V

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d()V

    .line 127
    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 3
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->c:Lcom/google/android/youtube/app/honeycomb/widget/b;

    return-object v0
.end method
