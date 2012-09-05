.class public Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;
.super Ljava/lang/Object;
.source "SharedManager.java"


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->mCtx:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method public getPrefDBLocale()Ljava/lang/String;
    .registers 5

    .prologue
    .line 115
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->mCtx:Landroid/content/Context;

    const-string v2, "DBLocale"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, p:Landroid/content/SharedPreferences;
    const-string v1, "DBLocale"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrefDefault()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->mCtx:Landroid/content/Context;

    const-string v4, "isSetDefault"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v3, "isSetDefault"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_1a

    const-string v3, "isSetDefault"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 95
    :cond_1a
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method public getPrefLastActivity()Ljava/lang/String;
    .registers 5

    .prologue
    .line 149
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->mCtx:Landroid/content/Context;

    const-string v2, "AddLastActivity"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    .local v0, p:Landroid/content/SharedPreferences;
    const-string v1, "AddLastActivity"

    const-string v2, "AddLastActivity"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrefLastZoomLevel()I
    .registers 5

    .prologue
    .line 171
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->mCtx:Landroid/content/Context;

    const-string v2, "LastZoomLevel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    .local v0, p:Landroid/content/SharedPreferences;
    const-string v1, "LastZoomLevel"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setPrefDBLocale(Ljava/lang/String;)V
    .registers 7
    .parameter "locale"

    .prologue
    .line 103
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->mCtx:Landroid/content/Context;

    const-string v3, "DBLocale"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 105
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DBLocale"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return-void
.end method

.method public setPrefDefault()V
    .registers 6

    .prologue
    .line 73
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->mCtx:Landroid/content/Context;

    const-string v3, "isSetDefault"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "isSetDefault"

    const-string v3, "isSetDefault"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method

.method public setPrefLastActivityCity()V
    .registers 6

    .prologue
    .line 125
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->mCtx:Landroid/content/Context;

    const-string v3, "AddLastActivity"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 127
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AddLastActivity"

    const-string v3, "CityList"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    return-void
.end method

.method public setPrefLastActivityMap()V
    .registers 6

    .prologue
    .line 137
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->mCtx:Landroid/content/Context;

    const-string v3, "AddLastActivity"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 139
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AddLastActivity"

    const-string v3, "Map"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public setPrefLastZoomLevel(I)V
    .registers 7
    .parameter "level"

    .prologue
    .line 159
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->mCtx:Landroid/content/Context;

    const-string v3, "LastZoomLevel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 161
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LastZoomLevel"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method
