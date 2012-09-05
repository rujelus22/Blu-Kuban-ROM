.class public Lcom/android/email/widget/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# static fields
.field private static final mWidgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/widget/EmailWidget;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstance:Lcom/android/email/widget/WidgetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/email/widget/WidgetManager;

    invoke-direct {v0}, Lcom/android/email/widget/WidgetManager;-><init>()V

    sput-object v0, Lcom/android/email/widget/WidgetManager;->sInstance:Lcom/android/email/widget/WidgetManager;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/android/email/widget/WidgetManager;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/email/widget/WidgetManager;->sInstance:Lcom/android/email/widget/WidgetManager;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, n:I
    sget-object v3, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/widget/EmailWidget;

    .line 97
    .local v2, widget:Lcom/android/email/widget/EmailWidget;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    View="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 100
    .end local v2           #widget:Lcom/android/email/widget/EmailWidget;
    :cond_48
    return-void
.end method

.method public get(I)Lcom/android/email/widget/EmailWidget;
    .registers 4
    .parameter "widgetId"

    .prologue
    .line 77
    sget-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/widget/EmailWidget;

    return-object v0
.end method

.method public getCreatedWidgetSize()I
    .registers 2

    .prologue
    .line 81
    sget-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOrCreateWidget(Landroid/content/Context;I)Lcom/android/email/widget/EmailWidget;
    .registers 7
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 64
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v0

    .line 65
    .local v0, widget:Lcom/android/email/widget/EmailWidget;
    if-nez v0, :cond_35

    .line 66
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_26

    .line 67
    const-string v1, "EmailWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating EmailWidget for id #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_26
    new-instance v0, Lcom/android/email/widget/EmailWidget;

    .end local v0           #widget:Lcom/android/email/widget/EmailWidget;
    invoke-direct {v0, p1, p2}, Lcom/android/email/widget/EmailWidget;-><init>(Landroid/content/Context;I)V

    .line 70
    .restart local v0       #widget:Lcom/android/email/widget/EmailWidget;
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/email/widget/WidgetManager;->put(ILcom/android/email/widget/EmailWidget;)V

    .line 71
    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidget;->start()V

    .line 73
    :cond_35
    return-object v0
.end method

.method public declared-synchronized getOrCreateWidgets(Landroid/content/Context;[I)V
    .registers 10
    .parameter "context"
    .parameter "widgetIds"

    .prologue
    .line 57
    monitor-enter p0

    move-object v0, p2

    .local v0, arr$:[I
    :try_start_2
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_30

    aget v3, v0, v1

    .line 58
    .local v3, widgetId:I
    const-string v4, "EmailWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refresh id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " widget"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0, p1, v3}, Lcom/android/email/widget/WidgetManager;->getOrCreateWidget(Landroid/content/Context;I)Lcom/android/email/widget/EmailWidget;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/widget/EmailWidget;->validateAndUpdate()V
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_32

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 61
    .end local v3           #widgetId:I
    :cond_30
    monitor-exit p0

    return-void

    .line 57
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_32
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method put(ILcom/android/email/widget/EmailWidget;)V
    .registers 6
    .parameter "widgetId"
    .parameter "widget"

    .prologue
    .line 85
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Email Widget, id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been created : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method remove(I)V
    .registers 5
    .parameter "widgetId"

    .prologue
    .line 90
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Email Widget, id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public declared-synchronized updateAllWidgets()V
    .registers 4

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/widget/EmailWidget;

    .line 52
    .local v1, widget:Lcom/android/email/widget/EmailWidget;
    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidget;->validateAndUpdate()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 49
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #widget:Lcom/android/email/widget/EmailWidget;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 54
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1e
    monitor-exit p0

    return-void
.end method
