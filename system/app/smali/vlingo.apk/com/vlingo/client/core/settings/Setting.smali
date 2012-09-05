.class public abstract Lcom/vlingo/client/core/settings/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# static fields
.field public static final SETTING_RESOURCE_DOMAIN:Ljava/lang/String; = "vlingoVoiceSettingRD"

.field public static final TYPE_BOOLEAN:I = 0x0

.field public static final TYPE_DATA:I = 0x6

.field public static final TYPE_ENUM:I = 0x3

.field public static final TYPE_INT:I = 0x2

.field public static final TYPE_LONG:I = 0x4

.field public static final TYPE_SERIALIZABLE:I = 0x5

.field public static final TYPE_STRING:I = 0x1


# instance fields
.field private final changeHandler:Lcom/vlingo/client/core/settings/SettingChangeHandler;

.field private changeListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public defaultValue:Ljava/lang/Object;

.field public description:Ljava/lang/String;

.field protected isDirty:Z

.field public key:Ljava/lang/String;

.field protected mirrorInResourceManager:Z

.field public type:I

.field public value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "type"
    .parameter "defaultValue"
    .parameter "description"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/settings/Setting;->type:I

    .line 24
    iput-object v1, p0, Lcom/vlingo/client/core/settings/Setting;->key:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/vlingo/client/core/settings/Setting;->description:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    .line 27
    iput-object v1, p0, Lcom/vlingo/client/core/settings/Setting;->defaultValue:Ljava/lang/Object;

    .line 28
    iput-boolean v2, p0, Lcom/vlingo/client/core/settings/Setting;->isDirty:Z

    .line 30
    iput-object v1, p0, Lcom/vlingo/client/core/settings/Setting;->changeListeners:Ljava/util/Vector;

    .line 36
    iput-boolean v2, p0, Lcom/vlingo/client/core/settings/Setting;->mirrorInResourceManager:Z

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->key:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/vlingo/client/core/settings/Setting;->type:I

    .line 42
    iput-object p3, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lcom/vlingo/client/core/settings/Setting;->defaultValue:Ljava/lang/Object;

    .line 44
    iput-object p4, p0, Lcom/vlingo/client/core/settings/Setting;->description:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingChangeHandler;->getInstance()Lcom/vlingo/client/core/settings/SettingChangeHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->changeHandler:Lcom/vlingo/client/core/settings/SettingChangeHandler;

    .line 46
    return-void
.end method


# virtual methods
.method declared-synchronized addChangeListener(Lcom/vlingo/client/core/settings/SettingChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->changeListeners:Ljava/util/Vector;

    if-eqz v0, :cond_7

    if-nez p1, :cond_e

    .line 121
    :cond_7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->changeListeners:Ljava/util/Vector;

    .line 123
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->changeHandler:Lcom/vlingo/client/core/settings/SettingChangeHandler;

    iget-object v1, p0, Lcom/vlingo/client/core/settings/Setting;->changeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0, p1, v1}, Lcom/vlingo/client/core/settings/SettingChangeHandler;->addChangeListener(Lcom/vlingo/client/core/settings/Setting;Lcom/vlingo/client/core/settings/SettingChangeListener;Ljava/util/Vector;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 124
    monitor-exit p0

    return-void

    .line 120
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearDirty()V
    .registers 2

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/vlingo/client/core/settings/Setting;->isDirty:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/vlingo/client/core/settings/Setting;->type:I

    return v0
.end method

.method public declared-synchronized isDirty()Z
    .registers 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/settings/Setting;->isDirty:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSetToDefault()Z
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->defaultValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized migrate(Lcom/vlingo/client/core/settings/Setting;)V
    .registers 4
    .parameter "newSetting"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->description:Ljava/lang/String;

    iget-object v1, p1, Lcom/vlingo/client/core/settings/Setting;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 98
    iget-object v0, p1, Lcom/vlingo/client/core/settings/Setting;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->description:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/Setting;->setDirty()V

    .line 101
    :cond_12
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->defaultValue:Ljava/lang/Object;

    iget-object v1, p1, Lcom/vlingo/client/core/settings/Setting;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 102
    iget-object v0, p1, Lcom/vlingo/client/core/settings/Setting;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->defaultValue:Ljava/lang/Object;

    .line 103
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/Setting;->setDirty()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 105
    :cond_23
    monitor-exit p0

    return-void

    .line 97
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSavedValue(Ljava/lang/Object;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onSettingSaved()V
    .registers 6

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/settings/Setting;->mirrorInResourceManager:Z

    if-eqz v0, :cond_1c

    .line 138
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 139
    new-instance v1, Lcom/vlingo/client/core/recordstore/Resource;

    const-string v2, "vlingoVoiceSettingRD"

    iget-object v3, p0, Lcom/vlingo/client/core/settings/Setting;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/vlingo/client/core/recordstore/Resource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-static {v1}, Lcom/vlingo/client/core/recordstore/ResourceManager;->saveResource(Lcom/vlingo/client/core/recordstore/Resource;)V

    .line 143
    :cond_1c
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->changeListeners:Ljava/util/Vector;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2a

    if-nez v0, :cond_22

    .line 147
    :goto_20
    monitor-exit p0

    return-void

    .line 146
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->changeHandler:Lcom/vlingo/client/core/settings/SettingChangeHandler;

    iget-object v1, p0, Lcom/vlingo/client/core/settings/Setting;->changeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0, v1}, Lcom/vlingo/client/core/settings/SettingChangeHandler;->onSettingSaved(Lcom/vlingo/client/core/settings/Setting;Ljava/util/Vector;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_20

    .line 135
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeChangeListener(Lcom/vlingo/client/core/settings/SettingChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->changeListeners:Ljava/util/Vector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    if-nez p1, :cond_9

    .line 131
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 130
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->changeHandler:Lcom/vlingo/client/core/settings/SettingChangeHandler;

    iget-object v1, p0, Lcom/vlingo/client/core/settings/Setting;->changeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0, p1, v1}, Lcom/vlingo/client/core/settings/SettingChangeHandler;->removeChangeListener(Lcom/vlingo/client/core/settings/Setting;Lcom/vlingo/client/core/settings/SettingChangeListener;Ljava/util/Vector;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_7

    .line 127
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->defaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/settings/Setting;->setValueInternal(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefault()V
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->defaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/settings/Setting;->setValueInternal(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method protected setDefaultValue(Ljava/lang/Object;)V
    .registers 2
    .parameter "defaultValue"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/vlingo/client/core/settings/Setting;->defaultValue:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public declared-synchronized setDirty()V
    .registers 2

    .prologue
    .line 89
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/vlingo/client/core/settings/Setting;->isDirty:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMirrorInResourceManager(Z)V
    .registers 7
    .parameter "mirror"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/vlingo/client/core/settings/Setting;->mirrorInResourceManager:Z

    .line 66
    if-eqz p1, :cond_1c

    .line 68
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 69
    new-instance v1, Lcom/vlingo/client/core/recordstore/Resource;

    const-string v2, "vlingoVoiceSettingRD"

    iget-object v3, p0, Lcom/vlingo/client/core/settings/Setting;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/vlingo/client/core/recordstore/Resource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-static {v1}, Lcom/vlingo/client/core/recordstore/ResourceManager;->saveResource(Lcom/vlingo/client/core/recordstore/Resource;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 71
    :cond_1c
    monitor-exit p0

    return-void

    .line 64
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setValueInternal(Ljava/lang/Object;)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 54
    monitor-enter p0

    if-nez p1, :cond_e

    .line 55
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot assign null value to a Setting"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 54
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 57
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 58
    iput-object p1, p0, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/Setting;->setDirty()V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_b

    .line 61
    :cond_1b
    monitor-exit p0

    return-void
.end method
