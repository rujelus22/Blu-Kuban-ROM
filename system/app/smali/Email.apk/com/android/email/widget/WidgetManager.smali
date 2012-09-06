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
    .line 41
    new-instance v0, Lcom/android/email/widget/WidgetManager;

    invoke-direct {v0}, Lcom/android/email/widget/WidgetManager;-><init>()V

    sput-object v0, Lcom/android/email/widget/WidgetManager;->sInstance:Lcom/android/email/widget/WidgetManager;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private get(I)Lcom/android/email/widget/EmailWidget;
    .registers 4
    .parameter "widgetId"

    .prologue
    .line 98
    sget-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/widget/EmailWidget;

    return-object v0
.end method

.method public static getInstance()Lcom/android/email/widget/WidgetManager;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/email/widget/WidgetManager;->sInstance:Lcom/android/email/widget/WidgetManager;

    return-object v0
.end method

.method static loadAccountIdPref(Landroid/content/Context;I)J
    .registers 8
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 144
    const-string v3, "com.android.email.widget.WidgetManager"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 145
    .local v2, prefs:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 146
    .local v0, accountId:J
    return-wide v0
.end method

.method static loadMailboxIdPref(Landroid/content/Context;I)J
    .registers 8
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 154
    const-string v3, "com.android.email.widget.WidgetManager"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 155
    .local v2, prefs:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailboxId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 156
    .local v0, mailboxId:J
    return-wide v0
.end method

.method private put(ILcom/android/email/widget/EmailWidget;)V
    .registers 5
    .parameter "widgetId"
    .parameter "widget"

    .prologue
    .line 102
    sget-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private remove(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 106
    sget-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {p1, p2}, Lcom/android/email/widget/WidgetManager;->removeWidgetPrefs(Landroid/content/Context;I)V

    .line 108
    return-void
.end method

.method static removeWidgetPrefs(Landroid/content/Context;I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 129
    const-string v4, "com.android.email.widget.WidgetManager"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 130
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    .local v2, key:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 133
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    .line 136
    .end local v2           #key:Ljava/lang/String;
    :cond_40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method

.method static saveWidgetPrefs(Landroid/content/Context;IJJ)V
    .registers 10
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 120
    const-string v1, "com.android.email.widget.WidgetManager"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteWidgets(Landroid/content/Context;[I)V
    .registers 9
    .parameter "context"
    .parameter "widgetIds"

    .prologue
    .line 61
    monitor-enter p0

    move-object v0, p2

    .local v0, arr$:[I
    :try_start_2
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_1b

    aget v4, v0, v1

    .line 63
    .local v4, widgetId:I
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v5

    invoke-direct {v5, v4}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v3

    .line 64
    .local v3, widget:Lcom/android/email/widget/EmailWidget;
    if-eqz v3, :cond_15

    .line 66
    invoke-virtual {v3}, Lcom/android/email/widget/EmailWidget;->onDeleted()V

    .line 68
    :cond_15
    invoke-direct {p0, p1, v4}, Lcom/android/email/widget/WidgetManager;->remove(Landroid/content/Context;I)V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1d

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 70
    .end local v3           #widget:Lcom/android/email/widget/EmailWidget;
    .end local v4           #widgetId:I
    :cond_1b
    monitor-exit p0

    return-void

    .line 61
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_1d
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
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

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/widget/EmailWidget;

    .line 113
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

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/email/widget/EmailWidget;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 116
    .end local v2           #widget:Lcom/android/email/widget/EmailWidget;
    :cond_4a
    return-void
.end method

.method public declared-synchronized getOrCreateWidget(Landroid/content/Context;I)Lcom/android/email/widget/EmailWidget;
    .registers 7
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v1

    invoke-direct {v1, p2}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v0

    .line 86
    .local v0, widget:Lcom/android/email/widget/EmailWidget;
    if-nez v0, :cond_36

    .line 87
    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_2b

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_2b

    .line 88
    const-string v1, "EmailWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create email widget; ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2b
    new-instance v0, Lcom/android/email/widget/EmailWidget;

    .end local v0           #widget:Lcom/android/email/widget/EmailWidget;
    invoke-direct {v0, p1, p2}, Lcom/android/email/widget/EmailWidget;-><init>(Landroid/content/Context;I)V

    .line 91
    .restart local v0       #widget:Lcom/android/email/widget/EmailWidget;
    invoke-direct {p0, p2, v0}, Lcom/android/email/widget/WidgetManager;->put(ILcom/android/email/widget/EmailWidget;)V

    .line 92
    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidget;->start()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 94
    :cond_36
    monitor-exit p0

    return-object v0

    .line 85
    .end local v0           #widget:Lcom/android/email/widget/EmailWidget;
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateWidgets(Landroid/content/Context;[I)V
    .registers 9
    .parameter "context"
    .parameter "widgetIds"

    .prologue
    .line 73
    monitor-enter p0

    move-object v0, p2

    .local v0, arr$:[I
    :try_start_2
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_1f

    aget v4, v0, v1

    .line 75
    .local v4, widgetId:I
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v5

    invoke-direct {v5, v4}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v3

    .line 76
    .local v3, widget:Lcom/android/email/widget/EmailWidget;
    if-eqz v3, :cond_18

    .line 77
    invoke-virtual {v3}, Lcom/android/email/widget/EmailWidget;->reset()V

    .line 73
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 79
    :cond_18
    invoke-virtual {p0, p1, v4}, Lcom/android/email/widget/WidgetManager;->getOrCreateWidget(Landroid/content/Context;I)Lcom/android/email/widget/EmailWidget;
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1c

    goto :goto_15

    .line 73
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #widget:Lcom/android/email/widget/EmailWidget;
    .end local v4           #widgetId:I
    :catchall_1c
    move-exception v5

    monitor-exit p0

    throw v5

    .line 82
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_1f
    monitor-exit p0

    return-void
.end method
