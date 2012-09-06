.class public Lcom/google/android/music/MusicPreferenceService;
.super Lcom/google/android/music/IPreferenceService$Stub;
.source "MusicPreferenceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MusicPreferenceService$MusicPreferenceServiceBinder;
    }
.end annotation


# instance fields
.field private final mChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/IPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/music/IPreferenceService$Stub;-><init>()V

    .line 29
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/google/android/music/MusicPreferenceService;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, mode:I
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 36
    or-int/lit8 v0, v0, 0x4

    .line 38
    :cond_14
    iget-object v1, p0, Lcom/google/android/music/MusicPreferenceService;->mContext:Landroid/content/Context;

    const-string v2, "MusicPreferences"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/MusicPreferenceService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 39
    return-void
.end method

.method private notifyBooleanPreferenceChanged(Ljava/lang/String;Z)V
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 122
    iget-object v3, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 123
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/IPreferenceChangeListener;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 125
    .local v1, listener:Lcom/google/android/music/IPreferenceChangeListener;
    :try_start_15
    invoke-interface {v1, p1, p2}, Lcom/google/android/music/IPreferenceChangeListener;->onBooleanChanged(Ljava/lang/String;Z)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_9

    .line 126
    :catch_19
    move-exception v2

    goto :goto_9

    .line 130
    .end local v1           #listener:Lcom/google/android/music/IPreferenceChangeListener;
    :cond_1b
    :try_start_1b
    monitor-exit v3

    .line 131
    return-void

    .line 130
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method private notifyIntPreferenceChanged(Ljava/lang/String;I)V
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 111
    iget-object v3, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 112
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/IPreferenceChangeListener;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 114
    .local v1, listener:Lcom/google/android/music/IPreferenceChangeListener;
    :try_start_15
    invoke-interface {v1, p1, p2}, Lcom/google/android/music/IPreferenceChangeListener;->onIntChanged(Ljava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_9

    .line 115
    :catch_19
    move-exception v2

    goto :goto_9

    .line 119
    .end local v1           #listener:Lcom/google/android/music/IPreferenceChangeListener;
    :cond_1b
    :try_start_1b
    monitor-exit v3

    .line 120
    return-void

    .line 119
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method private notifyLongPreferenceChanged(Ljava/lang/String;J)V
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 133
    iget-object v3, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 134
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/IPreferenceChangeListener;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 136
    .local v1, listener:Lcom/google/android/music/IPreferenceChangeListener;
    :try_start_15
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/music/IPreferenceChangeListener;->onLongChanged(Ljava/lang/String;J)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_9

    .line 137
    :catch_19
    move-exception v2

    goto :goto_9

    .line 141
    .end local v1           #listener:Lcom/google/android/music/IPreferenceChangeListener;
    :cond_1b
    :try_start_1b
    monitor-exit v3

    .line 142
    return-void

    .line 141
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method private notifyPreferenceRemoved(Ljava/lang/String;)V
    .registers 6
    .parameter "key"

    .prologue
    .line 100
    iget-object v3, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 101
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/IPreferenceChangeListener;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 103
    .local v1, listener:Lcom/google/android/music/IPreferenceChangeListener;
    :try_start_15
    invoke-interface {v1, p1}, Lcom/google/android/music/IPreferenceChangeListener;->onPreferenceRemoved(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_9

    .line 104
    :catch_19
    move-exception v2

    goto :goto_9

    .line 108
    .end local v1           #listener:Lcom/google/android/music/IPreferenceChangeListener;
    :cond_1b
    :try_start_1b
    monitor-exit v3

    .line 109
    return-void

    .line 108
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method private notifyStringPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 144
    iget-object v3, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 145
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/IPreferenceChangeListener;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 147
    .local v1, listener:Lcom/google/android/music/IPreferenceChangeListener;
    :try_start_15
    invoke-interface {v1, p1, p2}, Lcom/google/android/music/IPreferenceChangeListener;->onStringChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_9

    .line 148
    :catch_19
    move-exception v2

    goto :goto_9

    .line 152
    .end local v1           #listener:Lcom/google/android/music/IPreferenceChangeListener;
    :cond_1b
    :try_start_1b
    monitor-exit v3

    .line 153
    return-void

    .line 152
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method private setPreference(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/android/music/MusicPreferenceService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_f

    .line 71
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    .end local p2
    :goto_b
    invoke-static {v0}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 84
    return-void

    .line 72
    .restart local p2
    :cond_f
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    .line 73
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_b

    .line 74
    .restart local p2
    :cond_1d
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_2b

    .line 75
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_b

    .line 76
    .restart local p2
    :cond_2b
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_35

    .line 77
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_b

    .line 78
    .restart local p2
    :cond_35
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_43

    .line 79
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_b

    .line 81
    .restart local p2
    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown value type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCurrentPreferences()Ljava/util/Map;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/MusicPreferenceService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public registerPreferenceChangeListener(Lcom/google/android/music/IPreferenceChangeListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 88
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/MusicPreferenceService;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPreferenceService;->notifyPreferenceRemoved(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setBooleanPreference(Ljava/lang/String;Z)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 47
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/MusicPreferenceService;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MusicPreferenceService;->notifyBooleanPreferenceChanged(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method public setIntPreference(Ljava/lang/String;I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/MusicPreferenceService;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MusicPreferenceService;->notifyIntPreferenceChanged(Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public setLongPreference(Ljava/lang/String;J)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 55
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/MusicPreferenceService;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/MusicPreferenceService;->notifyLongPreferenceChanged(Ljava/lang/String;J)V

    .line 57
    return-void
.end method

.method public setStringPreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MusicPreferenceService;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MusicPreferenceService;->notifyStringPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public unregisterPreferenceChangeListener(Lcom/google/android/music/IPreferenceChangeListener;)V
    .registers 4
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 95
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/MusicPreferenceService;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
