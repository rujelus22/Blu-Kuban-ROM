.class public abstract Lcom/vlingo/client/core/settings/EnumSetting;
.super Lcom/vlingo/client/core/settings/Setting;
.source "EnumSetting.java"


# instance fields
.field protected enumeration:[[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "enumeration"
    .parameter "defaultValue"
    .parameter "description"

    .prologue
    .line 17
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/vlingo/client/core/settings/Setting;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    .line 19
    return-void
.end method

.method private cloneEnum([[Ljava/lang/String;)[[Ljava/lang/String;
    .registers 9
    .parameter "old"

    .prologue
    const/4 v6, 0x2

    .line 105
    array-length v3, p1

    filled-new-array {v3, v6}, [I

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 106
    .local v2, newEnum:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    array-length v3, p1

    if-ge v0, v3, :cond_28

    .line 107
    const/4 v1, 0x0

    .local v1, j:I
    :goto_13
    if-ge v1, v6, :cond_25

    .line 108
    aget-object v3, v2, v0

    new-instance v4, Ljava/lang/String;

    aget-object v5, p1, v0

    aget-object v5, v5, v1

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 106
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 111
    .end local v1           #j:I
    :cond_28
    return-object v2
.end method

.method private equal([[Ljava/lang/String;[[Ljava/lang/String;)Z
    .registers 8
    .parameter "oldEnum"
    .parameter "newEnum"

    .prologue
    const/4 v2, 0x0

    .line 115
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_6

    .line 123
    :cond_5
    :goto_5
    return v2

    .line 117
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v3, p2

    if-ge v0, v3, :cond_22

    .line 118
    const/4 v1, 0x0

    .local v1, j:I
    :goto_b
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1f

    .line 119
    aget-object v3, p1, v0

    aget-object v3, v3, v1

    aget-object v4, p2, v0

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 117
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 123
    .end local v1           #j:I
    :cond_22
    const/4 v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method public getEnumerationLength()I
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getIndexOfValue(Ljava/lang/String;)I
    .registers 4
    .parameter "value"

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 70
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/settings/EnumSetting;->getValueOfIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 73
    .end local v0           #i:I
    :goto_10
    return v0

    .line 69
    .restart local v0       #i:I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public getNameForValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/settings/EnumSetting;->getIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 79
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/settings/EnumSetting;->getNameOfIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getNameOfIndex(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 60
    .local v0, e:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vlingo/client/core/settings/EnumSetting;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValueOfIndex(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 65
    .local v0, e:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public hasValue(Ljava/lang/String;)Z
    .registers 6
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 37
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v3, p0, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_17

    .line 38
    iget-object v3, p0, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 39
    .local v0, enumType:[Ljava/lang/String;
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 42
    .end local v0           #enumType:[Ljava/lang/String;
    :goto_13
    return v2

    .line 37
    .restart local v0       #enumType:[Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 42
    .end local v0           #enumType:[Ljava/lang/String;
    :cond_17
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public migrate(Lcom/vlingo/client/core/settings/Setting;)V
    .registers 3
    .parameter "newSetting"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/vlingo/client/core/settings/Setting;->migrate(Lcom/vlingo/client/core/settings/Setting;)V

    .line 97
    check-cast p1, Lcom/vlingo/client/core/settings/EnumSetting;

    .end local p1
    iget-object v0, p1, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/settings/EnumSetting;->setEnumeration([[Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public declared-synchronized onSavedValue(Ljava/lang/Object;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 23
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 24
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/settings/EnumSetting;->getValueOfIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 25
    invoke-super {p0, p1}, Lcom/vlingo/client/core/settings/Setting;->onSavedValue(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_1d

    .line 30
    :goto_14
    monitor-exit p0

    return-void

    .line 23
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/EnumSetting;->setDirty()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_14

    .line 23
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setEnumeration([[Ljava/lang/String;)V
    .registers 3
    .parameter "newEnumeration"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/vlingo/client/core/settings/EnumSetting;->equal([[Ljava/lang/String;[[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 87
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/settings/EnumSetting;->cloneEnum([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/settings/EnumSetting;->enumeration:[[Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/EnumSetting;->setDirty()V

    .line 90
    :cond_11
    iget-object v0, p0, Lcom/vlingo/client/core/settings/EnumSetting;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/settings/EnumSetting;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 91
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/EnumSetting;->setDefault()V

    .line 93
    :cond_1e
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vlingo/client/core/settings/EnumSetting;->setValue(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public setValue(Ljava/lang/String;Z)V
    .registers 4
    .parameter "value"
    .parameter "setDefaultIfValueNotInEnum"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/settings/EnumSetting;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/settings/EnumSetting;->setValueInternal(Ljava/lang/Object;)V

    .line 56
    :cond_9
    :goto_9
    return-void

    .line 53
    :cond_a
    if-eqz p2, :cond_9

    .line 54
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/EnumSetting;->setDefault()V

    goto :goto_9
.end method
