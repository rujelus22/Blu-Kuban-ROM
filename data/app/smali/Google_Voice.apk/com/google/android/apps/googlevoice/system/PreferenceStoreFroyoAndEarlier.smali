.class public Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;
.super Ljava/lang/Object;
.source "PreferenceStoreFroyoAndEarlier.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/PreferenceStore;


# instance fields
.field public final resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "resources"
    .parameter "sharedPreferences"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    .line 23
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    return-void
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
    .line 40
    .local p3, value:Ljava/lang/Object;,"TT;"
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public clearPreference(I)V
    .registers 5
    .parameter "resId"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v2, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method

.method public contains(I)Z
    .registers 4
    .parameter "resId"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

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
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

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
    .line 44
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v2, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 46
    .local v1, value:I
    const-string v2, "getInt"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    return v1
.end method

.method public getLong(IJ)J
    .registers 9
    .parameter "resId"
    .parameter "defaultValue"

    .prologue
    .line 59
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v3, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 61
    .local v1, value:J
    const-string v3, "getLong"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-wide v1
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "resId"
    .parameter "defaultValue"

    .prologue
    .line 74
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v2, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, value:Ljava/lang/String;
    const-string v2, "getString"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-object v1
.end method

.method public setBoolean(IZ)V
    .registers 5
    .parameter "resId"
    .parameter "value"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    return-void
.end method

.method public setInt(II)V
    .registers 6
    .parameter "resId"
    .parameter "value"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, key:Ljava/lang/String;
    const-string v1, "setInt"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

.method public setLong(IJ)V
    .registers 7
    .parameter "resId"
    .parameter "value"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, key:Ljava/lang/String;
    const-string v1, "setLong"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .registers 5
    .parameter "resId"
    .parameter "value"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, key:Ljava/lang/String;
    const-string v1, "setString"

    invoke-direct {p0, v1, v0, p2}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->logSetOrGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method
