.class public final Lcom/twitter/android/client/i;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field private e:[I

.field private f:[I

.field private g:[I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twitter/android/client/i;->a:I

    iput p2, p0, Lcom/twitter/android/client/i;->b:I

    iput p3, p0, Lcom/twitter/android/client/i;->c:I

    iput-object p4, p0, Lcom/twitter/android/client/i;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;[I)V
    .registers 12

    const/4 v8, 0x0

    monitor-enter p0

    if-eqz p2, :cond_7

    :try_start_4
    array-length v0, p2

    if-nez v0, :cond_12

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/client/i;->e:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/client/i;->f:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/client/i;->g:[I
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_86

    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    iget v0, p0, Lcom/twitter/android/client/i;->a:I

    const v1, 0x7f050002

    if-ne v0, v1, :cond_7b

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_1f
    invoke-static {p1}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/provider/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "widget_settings"

    sget-object v2, Lcom/twitter/android/provider/a;->b:[Ljava/lang/String;

    const-string v3, "widget_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v8

    :goto_4c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_89

    iget-object v8, p0, Lcom/twitter/android/client/i;->d:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    if-nez v7, :cond_82

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    :goto_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_7b
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1f

    :cond_82
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catchall {:try_start_12 .. :try_end_85} :catchall_86

    goto :goto_78

    :catchall_86
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_89
    :try_start_89
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_8d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_9c

    iput-object p2, p0, Lcom/twitter/android/client/i;->e:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/client/i;->f:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/client/i;->g:[I

    goto/16 :goto_10

    :cond_9c
    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/i;->e:[I

    invoke-static {v3}, Lcom/twitter/android/util/x;->a(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/i;->f:[I

    invoke-static {v4}, Lcom/twitter/android/util/x;->a(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/i;->g:[I
    :try_end_ae
    .catchall {:try_start_89 .. :try_end_ae} :catchall_86

    goto/16 :goto_10
.end method

.method public final declared-synchronized a()[I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/twitter/android/client/i;->e:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;)[I
    .registers 5

    iget v0, p0, Lcom/twitter/android/client/i;->a:I

    const v1, 0x7f050002

    if-ne v0, v1, :cond_17

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/twitter/android/client/WidgetLargeProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/twitter/android/client/WidgetSmallProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    goto :goto_16
.end method

.method public final declared-synchronized b()[I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/twitter/android/client/i;->f:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()[I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/twitter/android/client/i;->g:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
