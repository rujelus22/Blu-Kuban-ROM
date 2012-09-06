.class public Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;
.super Ljava/lang/Object;
.source "PreferenceStoreGingerbreadAndLater.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/PreferenceStore;


# instance fields
.field private final apply:Ljava/lang/reflect/Method;

.field private final reflect:Lcom/google/android/apps/common/reflect/ReflectionHelper;

.field public final resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;Landroid/content/SharedPreferences;Lcom/google/android/apps/common/reflect/ReflectionHelper;)V
    .registers 8
    .parameter "resources"
    .parameter "sharedPreferences"
    .parameter "reflect"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    .line 39
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 40
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->reflect:Lcom/google/android/apps/common/reflect/ReflectionHelper;

    .line 43
    :try_start_9
    const-class v1, Landroid/content/SharedPreferences$Editor;

    const-string v2, "apply"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p3, v1, v2, v3}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->apply:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Lcom/google/android/apps/common/reflect/ReflectionException; {:try_start_9 .. :try_end_16} :catch_17

    .line 47
    return-void

    .line 44
    :catch_17
    move-exception v0

    .line 45
    .local v0, e:Lcom/google/android/apps/common/reflect/ReflectionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot use unless the apply method is available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private commit(Landroid/content/SharedPreferences$Editor;)V
    .registers 6
    .parameter "editor"

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->reflect:Lcom/google/android/apps/common/reflect/ReflectionHelper;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->apply:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Lcom/google/android/apps/common/reflect/ReflectionException; {:try_start_0 .. :try_end_a} :catch_b

    .line 140
    return-void

    .line 137
    :catch_b
    move-exception v0

    .line 138
    .local v0, e:Lcom/google/android/apps/common/reflect/ReflectionException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "method"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, value:Ljava/lang/Object;,"TT;"
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 127
    return-void
.end method

.method public clearPreference(I)V
    .registers 5
    .parameter "resId"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v2, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 117
    return-void
.end method

.method public contains(I)Z
    .registers 4
    .parameter "resId"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(IZ)Z
    .registers 5
    .parameter "resId"
    .parameter "defaultValue"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .registers 7
    .parameter "resId"
    .parameter "defaultValue"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v2, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, value:I
    const-string v2, "getInt"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return v1
.end method

.method public getLong(IJ)J
    .registers 9
    .parameter "resId"
    .parameter "defaultValue"

    .prologue
    .line 82
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v3, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 84
    .local v1, value:J
    const-string v3, "getLong"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-wide v1
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "resId"
    .parameter "defaultValue"

    .prologue
    .line 97
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v2, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, value:Ljava/lang/String;
    const-string v2, "getString"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-object v1
.end method

.method public setBoolean(IZ)V
    .registers 5
    .parameter "resId"
    .parameter "value"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 57
    return-void
.end method

.method public setInt(II)V
    .registers 6
    .parameter "resId"
    .parameter "value"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, key:Ljava/lang/String;
    const-string v1, "setInt"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 78
    return-void
.end method

.method public setLong(IJ)V
    .registers 7
    .parameter "resId"
    .parameter "value"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, key:Ljava/lang/String;
    const-string v1, "setLong"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 93
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .registers 5
    .parameter "resId"
    .parameter "value"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, key:Ljava/lang/String;
    const-string v1, "setString"

    invoke-direct {p0, v1, v0, p2}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 108
    return-void
.end method
