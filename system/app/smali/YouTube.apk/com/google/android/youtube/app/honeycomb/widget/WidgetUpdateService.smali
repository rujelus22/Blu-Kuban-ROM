.class public Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;
.super Landroid/widget/RemoteViewsService;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private a:Lcom/google/android/youtube/app/d/b;

.field private b:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private c:Lcom/google/android/youtube/app/honeycomb/widget/b;

.field private d:Ljava/util/List;

.field private e:Z

.field private final f:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/widget/b;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/widget/b;-><init>(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->c:Lcom/google/android/youtube/app/honeycomb/widget/b;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->f:Ljava/util/concurrent/Semaphore;

    .line 168
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

.method private b()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 101
    iput-object v5, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a:Lcom/google/android/youtube/app/d/b;

    .line 102
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->e:Z

    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 107
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 109
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 111
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-direct {v3, v5, v5, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 113
    :goto_29
    array-length v4, v1

    if-ge v0, v4, :cond_40

    .line 114
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/c;->b(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 116
    aget v5, v1, v0

    const v6, 0x7f080131

    invoke-virtual {v4, v5, v6, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 117
    aget v5, v1, v0

    invoke-virtual {v2, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 119
    :cond_40
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

    .line 121
    :cond_5b
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)V
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 37
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->e:Z

    if-nez v0, :cond_3b

    iput-boolean v6, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->e:Z

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->y()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/b;

    invoke-direct {v1, v8, v0}, Lcom/google/android/youtube/app/b;-><init>(Lcom/google/android/youtube/core/b/ae;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/youtube/app/d/b;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/youtube/app/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    const/16 v4, 0x8

    const/16 v5, 0x18

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/d/b;-><init>(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Ljava/util/concurrent/ConcurrentMap;IIZ)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a:Lcom/google/android/youtube/app/d/b;

    invoke-interface {v8}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->b:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-virtual {v7, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method

.method private c()V
    .registers 3

    .prologue
    .line 141
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a:Lcom/google/android/youtube/app/d/b;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->b:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/app/d/b;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/l;)V

    .line 143
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 124
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->a:Lcom/google/android/youtube/app/d/b;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->b:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/app/d/b;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/l;)V

    .line 125
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->c()V

    .line 133
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

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->b()V

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

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->b()V

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->c()V

    .line 129
    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 3
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->c:Lcom/google/android/youtube/app/honeycomb/widget/b;

    return-object v0
.end method
