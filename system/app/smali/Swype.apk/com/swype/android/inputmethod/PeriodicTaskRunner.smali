.class public Lcom/swype/android/inputmethod/PeriodicTaskRunner;
.super Ljava/lang/Object;
.source "PeriodicTaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;,
        Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;
    }
.end annotation


# static fields
.field private static final PREFERENCE_PREFIX:Ljava/lang/String; = "REPEATING_TASK_"


# instance fields
.field private final taskTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/swype/android/inputmethod/PeriodicTaskRunner;->taskTable:Ljava/util/Hashtable;

    .line 105
    return-void
.end method

.method private startTask(Landroid/content/Context;Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    return-void
.end method


# virtual methods
.method public declared-synchronized check(Landroid/content/Context;)V
    .registers 13
    .parameter

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 136
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 138
    iget-object v0, p0, Lcom/swype/android/inputmethod/PeriodicTaskRunner;->taskTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "REPEATING_TASK_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    iget-wide v7, v0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;->lastRunTs:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5d

    iget-wide v7, v0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;->lastRunTs:J

    sub-long v7, v2, v7

    iget-object v9, v0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;->runnableTask:Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;

    invoke-virtual {v9}, Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;->getRunPeriodMsec()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_1c

    .line 145
    :cond_5d
    iput-wide v2, v0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;->lastRunTs:J

    .line 147
    invoke-interface {v4, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    const-string v6, "Swype"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "starting background task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, v0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;->runnableTask:Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;

    invoke-direct {p0, p1, v0}, Lcom/swype/android/inputmethod/PeriodicTaskRunner;->startTask(Landroid/content/Context;Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;)V
    :try_end_82
    .catchall {:try_start_1 .. :try_end_82} :catchall_83

    goto :goto_1c

    .line 135
    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0

    .line 154
    :cond_86
    monitor-exit p0

    return-void
.end method

.method public registerTask(Landroid/content/Context;Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;->getTaskName()Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lcom/swype/android/inputmethod/PeriodicTaskRunner;->taskTable:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;

    .line 117
    if-nez v0, :cond_13

    .line 118
    new-instance v0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;

    invoke-direct {v0, p2}, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;-><init>(Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;)V

    .line 121
    :cond_13
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REPEATING_TASK_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;->lastRunTs:J

    .line 123
    monitor-enter p0

    .line 124
    :try_start_33
    iget-object v2, p0, Lcom/swype/android/inputmethod/PeriodicTaskRunner;->taskTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    monitor-exit p0

    .line 126
    const/4 v0, 0x1

    return v0

    .line 125
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    throw v0
.end method
