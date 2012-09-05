.class public Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
.super Ljava/lang/Object;
.source "SharedPreferenceManager.java"


# static fields
.field private static final APPPREFS:Ljava/lang/String; = "SharedPreferenceManager"

.field public static final AUTO_PLAY:Ljava/lang/String; = "autoPlay"

.field public static final CURRENT_CURSOR:Ljava/lang/String; = "currentlist"

.field public static final CURRENT_TAB:Ljava/lang/String; = "current_tab"

.field public static final FOLDER_INDEX:Ljava/lang/String; = "folder_index"

.field public static final SORT_ORDER:Ljava/lang/String; = "sortorder"

.field public static final SPLIT_WIDTH:Ljava/lang/String; = "split_width"

.field public static final SUBTITLE_ACTIVATION:Ljava/lang/String; = "subtitle_activation"

.field public static final SUBTITLE_SIZE:Ljava/lang/String; = "subtitle_size"

.field private static final TAG:Ljava/lang/String; = "SharedPreferenceManager"

.field public static final VIEW_BY:Ljava/lang/String; = "viewBy"

.field private static mUniqueInstance:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 41
    const-class v1, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    monitor-enter v1

    .line 42
    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->mUniqueInstance:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    if-nez v0, :cond_e

    .line 43
    new-instance v0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->mUniqueInstance:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    .line 45
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 46
    sget-object v0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->mUniqueInstance:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    return-object v0

    .line 45
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public loadBooleanKey(Ljava/lang/String;Z)Z
    .registers 9
    .parameter "keyString"
    .parameter "returnValue"

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 123
    .local v2, mode:I
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->mContext:Landroid/content/Context;

    const-string v5, "SharedPreferenceManager"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 124
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v3, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 129
    .end local v3           #sharedPreferences:Landroid/content/SharedPreferences;
    .local v1, key:Z
    :goto_d
    return v1

    .line 125
    .end local v1           #key:Z
    :catch_e
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 127
    .restart local v1       #key:Z
    const-string v4, "SharedPreferenceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public loadIntKey(Ljava/lang/String;I)I
    .registers 9
    .parameter "keyString"
    .parameter "returnValue"

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, mode:I
    const/4 v1, 0x0

    .line 82
    .local v1, key:I
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->mContext:Landroid/content/Context;

    const-string v5, "SharedPreferenceManager"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 83
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v3, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_f

    move-result v1

    .line 88
    .end local v3           #sharedPreferences:Landroid/content/SharedPreferences;
    :goto_e
    return v1

    .line 84
    :catch_f
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 86
    const-string v4, "SharedPreferenceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public loadStringKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "keyString"

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, mode:I
    const/4 v1, 0x0

    .line 162
    .local v1, key:Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->mContext:Landroid/content/Context;

    const-string v5, "SharedPreferenceManager"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 163
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, ""

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-result-object v1

    .line 167
    .end local v3           #sharedPreferences:Landroid/content/SharedPreferences;
    :goto_10
    return-object v1

    .line 164
    :catch_11
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SharedPreferenceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public saveState(Ljava/lang/String;I)V
    .registers 11
    .parameter "keyString"
    .parameter "key"

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, mode:I
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->mContext:Landroid/content/Context;

    const-string v6, "SharedPreferenceManager"

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 61
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 62
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_16} :catch_22

    .line 70
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #sharedPreferences:Landroid/content/SharedPreferences;
    :goto_16
    return-void

    .line 65
    :catch_17
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SharedPreferenceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 67
    .end local v0           #e:Ljava/lang/Exception;
    :catch_22
    move-exception v3

    .line 68
    .local v3, oome:Ljava/lang/OutOfMemoryError;
    const-string v5, "SharedPreferenceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public saveState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "keyString"
    .parameter "key"

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 142
    .local v2, mode:I
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->mContext:Landroid/content/Context;

    const-string v5, "SharedPreferenceManager"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 143
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 144
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    .line 150
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #sharedPreferences:Landroid/content/SharedPreferences;
    :goto_16
    return-void

    .line 147
    :catch_17
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SharedPreferenceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public saveState(Ljava/lang/String;Z)V
    .registers 11
    .parameter "keyString"
    .parameter "key"

    .prologue
    .line 99
    const/4 v2, 0x0

    .line 101
    .local v2, mode:I
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->mContext:Landroid/content/Context;

    const-string v6, "SharedPreferenceManager"

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 102
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 103
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_16} :catch_22

    .line 111
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #sharedPreferences:Landroid/content/SharedPreferences;
    :goto_16
    return-void

    .line 106
    :catch_17
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SharedPreferenceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 108
    .end local v0           #e:Ljava/lang/Exception;
    :catch_22
    move-exception v3

    .line 109
    .local v3, oome:Ljava/lang/OutOfMemoryError;
    const-string v5, "SharedPreferenceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method
