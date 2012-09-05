.class public Lcom/sec/android/widgetapp/dualclock/SharedPreference;
.super Ljava/lang/Object;
.source "SharedPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public getPOPUPFlag()Z
    .registers 5

    .prologue
    .line 32
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->mContext:Landroid/content/Context;

    const-string v2, "dualclock_sp"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, common:Landroid/content/SharedPreferences;
    const-string v1, "dualclock_home_popup_set"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUserSettingFlag()Z
    .registers 5

    .prologue
    .line 16
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->mContext:Landroid/content/Context;

    const-string v2, "dualclock_sp"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    .local v0, common:Landroid/content/SharedPreferences;
    const-string v1, "dualclock_home_init_set"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setPOPUPFlag(Z)V
    .registers 7
    .parameter "bInit"

    .prologue
    .line 39
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->mContext:Landroid/content/Context;

    const-string v3, "dualclock_sp"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    .local v0, common:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 43
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dualclock_home_popup_set"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public setUserSettingFlag(Z)V
    .registers 7
    .parameter "bInit"

    .prologue
    .line 23
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->mContext:Landroid/content/Context;

    const-string v3, "dualclock_sp"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    .local v0, common:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 27
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dualclock_home_init_set"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    return-void
.end method
