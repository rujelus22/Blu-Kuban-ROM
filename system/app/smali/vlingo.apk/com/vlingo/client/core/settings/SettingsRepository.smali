.class public abstract Lcom/vlingo/client/core/settings/SettingsRepository;
.super Ljava/lang/Object;
.source "SettingsRepository.java"


# instance fields
.field protected settingObjects:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/vlingo/client/core/settings/Setting;",
            ">;"
        }
    .end annotation
.end field

.field protected settingValues:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/vlingo/client/core/settings/SettingsRepository;->settingObjects:Ljava/util/Hashtable;

    .line 33
    iput-object v0, p0, Lcom/vlingo/client/core/settings/SettingsRepository;->settingValues:Ljava/util/Hashtable;

    return-void
.end method

.method public static enumEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "enumSettingKey"
    .parameter "enumValue"

    .prologue
    .line 251
    invoke-static {p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getEnumValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .registers 3
    .parameter "booleanSettingKey"

    .prologue
    .line 148
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/BooleanSetting;

    .line 151
    .local v0, s:Lcom/vlingo/client/core/settings/BooleanSetting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/BooleanSetting;->getValue()Z

    move-result v1

    return v1
.end method

.method public static getData(Ljava/lang/String;)[B
    .registers 3
    .parameter "dataSettingKey"

    .prologue
    .line 170
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/DataSetting;

    .line 171
    .local v0, s:Lcom/vlingo/client/core/settings/DataSetting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/DataSetting;->getValue()[B

    move-result-object v1

    return-object v1
.end method

.method public static getEnumName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "enumSettingKey"

    .prologue
    .line 180
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/EnumSetting;

    .line 181
    .local v0, s:Lcom/vlingo/client/core/settings/EnumSetting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/EnumSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/settings/EnumSetting;->getNameForValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnumNameForValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "enumSettingKey"
    .parameter "value"

    .prologue
    .line 190
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/EnumSetting;

    .line 191
    .local v0, s:Lcom/vlingo/client/core/settings/EnumSetting;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/settings/EnumSetting;->getNameForValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnumValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "enumSettingKey"

    .prologue
    .line 175
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/EnumSetting;

    .line 176
    .local v0, s:Lcom/vlingo/client/core/settings/EnumSetting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/EnumSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnumValueForIndex(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "enumSettingsKey"
    .parameter "index"

    .prologue
    .line 185
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/EnumSetting;

    .line 186
    .local v0, s:Lcom/vlingo/client/core/settings/EnumSetting;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/settings/EnumSetting;->getValueOfIndex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIndexForEnum(Ljava/lang/String;)I
    .registers 3
    .parameter "enumSettingKey"

    .prologue
    .line 195
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/EnumSetting;

    .line 196
    .local v0, s:Lcom/vlingo/client/core/settings/EnumSetting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/EnumSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/settings/EnumSetting;->getIndexOfValue(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getIndexForEnumWithValue(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "enumSettingKey"
    .parameter "value"

    .prologue
    .line 200
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/EnumSetting;

    .line 201
    .local v0, s:Lcom/vlingo/client/core/settings/EnumSetting;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/settings/EnumSetting;->getIndexOfValue(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;
    .registers 2

    .prologue
    .line 36
    const-class v1, Lcom/vlingo/client/core/settings/SettingsRepository;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/vlingo/client/core/common/SharedInstanceManager;->getInstance()Lcom/vlingo/client/core/common/SharedInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/common/SharedInstanceManager;->settingsSharedInstance_get()Lcom/vlingo/client/core/settings/SettingsRepository;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInt(Ljava/lang/String;)I
    .registers 3
    .parameter "stringSettingKey"

    .prologue
    .line 205
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/IntSetting;

    .line 206
    .local v0, s:Lcom/vlingo/client/core/settings/IntSetting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/IntSetting;->getValue()I

    move-result v1

    return v1
.end method

.method public static getLong(Ljava/lang/String;)J
    .registers 4
    .parameter "stringSettingKey"

    .prologue
    .line 210
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/LongSetting;

    .line 211
    .local v0, s:Lcom/vlingo/client/core/settings/LongSetting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/LongSetting;->getValue()J

    move-result-wide v1

    return-wide v1
.end method

.method private declared-synchronized getSettingValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "key"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/settings/SettingsRepository;->settingValues:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "stringSettingKey"

    .prologue
    .line 155
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/StringSetting;

    .line 156
    .local v0, s:Lcom/vlingo/client/core/settings/StringSetting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/StringSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getURL(Ljava/lang/String;)Lcom/vlingo/client/core/http/URL;
    .registers 3
    .parameter "urlSettingKey"

    .prologue
    .line 165
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/URLSetting;

    .line 166
    .local v0, s:Lcom/vlingo/client/core/settings/URLSetting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/URLSetting;->getURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v1

    return-object v1
.end method

.method public static getURLString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "urlSettingKey"

    .prologue
    .line 160
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/URLSetting;

    .line 161
    .local v0, s:Lcom/vlingo/client/core/settings/URLSetting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/URLSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isSetToDefault(Ljava/lang/String;)Z
    .registers 3
    .parameter "settingKey"

    .prologue
    .line 255
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    .line 256
    .local v0, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/Setting;->isSetToDefault()Z

    move-result v1

    return v1
.end method

.method public static reset(Ljava/lang/String;)V
    .registers 3
    .parameter "settingKey"

    .prologue
    .line 140
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    .line 141
    .local v0, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v0}, Lcom/vlingo/client/core/settings/Setting;->reset()V

    .line 142
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 143
    return-void
.end method

.method public static resetAllSettings()V
    .registers 4

    .prologue
    .line 268
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/settings/SettingsRepository;->getAllKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 269
    .local v1, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 270
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    .local v0, key:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v2

    .line 272
    .local v2, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v2}, Lcom/vlingo/client/core/settings/Setting;->reset()V

    goto :goto_8

    .line 274
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #s:Lcom/vlingo/client/core/settings/Setting;
    :cond_20
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 275
    return-void
.end method

.method public static resetAllSettingsWithFilter([Ljava/lang/String;)V
    .registers 7
    .parameter "keyFilters"

    .prologue
    .line 278
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/settings/SettingsRepository;->getAllKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 281
    .local v2, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 282
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    .local v1, key:Ljava/lang/String;
    if-eqz p0, :cond_26

    .line 284
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    array-length v4, p0

    if-ge v0, v4, :cond_26

    .line 285
    aget-object v4, p0, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 290
    .end local v0           #i:I
    :cond_26
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v3

    .line 291
    .local v3, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v3}, Lcom/vlingo/client/core/settings/Setting;->reset()V

    goto :goto_8

    .line 293
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #s:Lcom/vlingo/client/core/settings/Setting;
    :cond_32
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 294
    return-void
.end method

.method public static resetSettingsInFilter([Ljava/lang/String;)V
    .registers 7
    .parameter "keyFilters"

    .prologue
    .line 297
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/settings/SettingsRepository;->getAllKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 300
    .local v2, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 301
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, key:Ljava/lang/String;
    if-eqz p0, :cond_26

    .line 303
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    array-length v4, p0

    if-ge v0, v4, :cond_26

    .line 304
    aget-object v4, p0, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 309
    .end local v0           #i:I
    :cond_26
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v3

    .line 310
    .local v3, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v3}, Lcom/vlingo/client/core/settings/Setting;->reset()V

    goto :goto_8

    .line 312
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #s:Lcom/vlingo/client/core/settings/Setting;
    :cond_32
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 313
    return-void
.end method

.method public static resetSettingsWithKeys([Ljava/lang/String;)V
    .registers 5
    .parameter "settingKeys"

    .prologue
    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_14

    .line 261
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v1

    .line 262
    .local v1, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/Setting;->reset()V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    .end local v1           #s:Lcom/vlingo/client/core/settings/Setting;
    :cond_14
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 265
    return-void
.end method

.method public static setBoolean(Ljava/lang/String;Z)V
    .registers 4
    .parameter "booleanSettingKey"
    .parameter "value"

    .prologue
    .line 215
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/BooleanSetting;

    .line 216
    .local v0, s:Lcom/vlingo/client/core/settings/BooleanSetting;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/settings/BooleanSetting;->setValue(Z)V

    .line 217
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 218
    return-void
.end method

.method public static setData(Ljava/lang/String;[B)V
    .registers 4
    .parameter "dataSettingKey"
    .parameter "data"

    .prologue
    .line 245
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/DataSetting;

    .line 246
    .local v0, s:Lcom/vlingo/client/core/settings/DataSetting;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/settings/DataSetting;->setValue([B)V

    .line 247
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 248
    return-void
.end method

.method public static setEnumValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "enumSettingKey"
    .parameter "value"

    .prologue
    .line 227
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/EnumSetting;

    .line 228
    .local v0, s:Lcom/vlingo/client/core/settings/EnumSetting;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/settings/EnumSetting;->setValue(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 230
    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .registers 4
    .parameter "stringSettingKey"
    .parameter "value"

    .prologue
    .line 233
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/IntSetting;

    .line 234
    .local v0, s:Lcom/vlingo/client/core/settings/IntSetting;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/settings/IntSetting;->setValue(I)V

    .line 235
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 236
    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .registers 5
    .parameter "stringSettingKey"
    .parameter "value"

    .prologue
    .line 239
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/LongSetting;

    .line 240
    .local v0, s:Lcom/vlingo/client/core/settings/LongSetting;
    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/core/settings/LongSetting;->setValue(J)V

    .line 241
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 242
    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "stringSettingKey"
    .parameter "value"

    .prologue
    .line 221
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/StringSetting;

    .line 222
    .local v0, s:Lcom/vlingo/client/core/settings/StringSetting;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/settings/StringSetting;->setValue(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V

    .line 224
    return-void
.end method


# virtual methods
.method public declared-synchronized addSettingChangeListener(Ljava/lang/String;Lcom/vlingo/client/core/settings/SettingChangeListener;)V
    .registers 5
    .parameter "settingKey"
    .parameter "listener"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    .line 41
    .local v0, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v0, p2}, Lcom/vlingo/client/core/settings/Setting;->addChangeListener(Lcom/vlingo/client/core/settings/SettingChangeListener;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 42
    monitor-exit p0

    return-void

    .line 40
    .end local v0           #s:Lcom/vlingo/client/core/settings/Setting;
    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAllKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/settings/SettingsRepository;->settingObjects:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;
    .registers 4
    .parameter "key"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/settings/SettingsRepository;->settingObjects:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/settings/Setting;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDirty()Z
    .registers 4

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getAllKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 69
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 70
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v1

    .line 71
    .local v1, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/Setting;->isDirty()Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_20

    move-result v2

    if-eqz v2, :cond_5

    .line 72
    const/4 v2, 0x1

    .line 74
    .end local v1           #s:Lcom/vlingo/client/core/settings/Setting;
    :goto_1c
    monitor-exit p0

    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1c

    .line 68
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected abstract load()V
.end method

.method public declared-synchronized registerSetting(Lcom/vlingo/client/core/settings/Setting;)V
    .registers 6
    .parameter "newSetting"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    iget-object v1, p1, Lcom/vlingo/client/core/settings/Setting;->key:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, savedValue:Ljava/lang/Object;
    if-nez v0, :cond_1e

    .line 58
    invoke-virtual {p1}, Lcom/vlingo/client/core/settings/Setting;->setDirty()V

    .line 63
    :goto_c
    iget-object v1, p0, Lcom/vlingo/client/core/settings/SettingsRepository;->settingValues:Ljava/util/Hashtable;

    iget-object v2, p1, Lcom/vlingo/client/core/settings/Setting;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/vlingo/client/core/settings/SettingsRepository;->settingObjects:Ljava/util/Hashtable;

    iget-object v2, p1, Lcom/vlingo/client/core/settings/Setting;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_22

    .line 65
    monitor-exit p0

    return-void

    .line 60
    :cond_1e
    :try_start_1e
    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/settings/Setting;->onSavedValue(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_c

    .line 56
    .end local v0           #savedValue:Ljava/lang/Object;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSettingChangeListener(Ljava/lang/String;Lcom/vlingo/client/core/settings/SettingChangeListener;)V
    .registers 5
    .parameter "settingKey"
    .parameter "listener"

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v0

    .line 46
    .local v0, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v0, p2}, Lcom/vlingo/client/core/settings/Setting;->removeChangeListener(Lcom/vlingo/client/core/settings/SettingChangeListener;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 47
    monitor-exit p0

    return-void

    .line 45
    .end local v0           #s:Lcom/vlingo/client/core/settings/Setting;
    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .registers 4

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/vlingo/client/core/settings/SettingsRepository;->settingObjects:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 83
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 84
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v1

    .line 85
    .local v1, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/Setting;->reset()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_7

    .line 82
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v1           #s:Lcom/vlingo/client/core/settings/Setting;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 87
    .restart local v0       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->save()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1b

    .line 88
    monitor-exit p0

    return-void
.end method

.method public abstract save()V
.end method

.method public declared-synchronized serialize()Ljava/lang/String;
    .registers 5

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getAllKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 119
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    const-string v3, "<settings>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 121
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/vlingo/client/core/settings/SettingsRepository;->getSetting(Ljava/lang/String;)Lcom/vlingo/client/core/settings/Setting;

    move-result-object v1

    .line 122
    .local v1, s:Lcom/vlingo/client/core/settings/Setting;
    const-string v3, "<setting n=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v3, v1, Lcom/vlingo/client/core/settings/Setting;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v3, v1, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    if-eqz v3, :cond_50

    iget-object v3, v1, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_50

    .line 125
    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v3, v1, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v3, "</setting>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4d

    goto :goto_f

    .line 117
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v1           #s:Lcom/vlingo/client/core/settings/Setting;
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :catchall_4d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 130
    .restart local v0       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v1       #s:Lcom/vlingo/client/core/settings/Setting;
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    :cond_50
    :try_start_50
    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 133
    .end local v1           #s:Lcom/vlingo/client/core/settings/Setting;
    :cond_56
    const-string v3, "</settings>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_4d

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method

.method protected declared-synchronized syncDirtySettings()V
    .registers 6

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->getAllKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 98
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 99
    iget-object v3, p0, Lcom/vlingo/client/core/settings/SettingsRepository;->settingObjects:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/settings/Setting;

    .line 100
    .local v1, s:Lcom/vlingo/client/core/settings/Setting;
    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/Setting;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/Setting;->clearDirty()V

    .line 102
    iget-object v2, p0, Lcom/vlingo/client/core/settings/SettingsRepository;->settingValues:Ljava/util/Hashtable;

    iget-object v3, v1, Lcom/vlingo/client/core/settings/Setting;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/vlingo/client/core/settings/Setting;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v1}, Lcom/vlingo/client/core/settings/Setting;->onSettingSaved()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    goto :goto_5

    .line 97
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v1           #s:Lcom/vlingo/client/core/settings/Setting;
    :catchall_2f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 106
    .restart local v0       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_32
    monitor-exit p0

    return-void
.end method
