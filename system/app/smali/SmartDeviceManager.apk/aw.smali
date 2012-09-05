.class public Law;
.super Ljava/lang/Object;
.source "a"


# static fields
.field private static a:Law;

.field private static c:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "com.locationlabs.v3client.STORAGE"

    sput-object v0, Law;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Law;->b:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;)Law;
    .registers 3
    .parameter

    .prologue
    .line 45
    sget-object v0, Law;->a:Law;

    if-eqz v0, :cond_7

    sget-object v0, Law;->a:Law;

    .line 51
    :goto_6
    return-object v0

    .line 47
    :cond_7
    const-class v0, Law;

    monitor-enter v0

    .line 48
    :try_start_a
    sget-object v1, Law;->a:Law;

    if-nez v1, :cond_15

    new-instance v1, Law;

    invoke-direct {v1, p0}, Law;-><init>(Landroid/content/Context;)V

    sput-object v1, Law;->a:Law;

    .line 49
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 51
    sget-object v0, Law;->a:Law;

    goto :goto_6

    .line 49
    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a()J
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Law;->b:Landroid/content/SharedPreferences;

    const-string v1, "lock.lockedUntil"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ldg;Ljava/lang/Integer;JLjava/util/List;ZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldg;",
            "Ljava/lang/Integer;",
            "J",
            "Ljava/util/List",
            "<",
            "Lbm;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lhn;

    invoke-direct {v0}, Lhn;-><init>()V

    .line 150
    const/4 v1, 0x0

    .line 152
    :try_start_6
    invoke-virtual {v0, p5}, Lhn;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_3e

    move-result-object v0

    .line 159
    :goto_a
    iget-object v1, p0, Law;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 160
    if-eqz p1, :cond_41

    .line 161
    const-string v2, "lock.lockByFeature"

    invoke-virtual {p1}, Ldg;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    :goto_1b
    if-eqz p2, :cond_47

    .line 166
    const-string v2, "lock.lockByAppId"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    :goto_26
    const-string v2, "lock.lockedUntil"

    invoke-interface {v1, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v2, "lock.activityList"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v0, "lock.enableOverride"

    invoke-interface {v1, v0, p6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v0, "lock.smsIncomingWhitelist"

    invoke-interface {v1, v0, p7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void

    :catch_3e
    move-exception v0

    move-object v0, v1

    goto :goto_a

    .line 163
    :cond_41
    const-string v2, "lock.lockByFeature"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1b

    .line 168
    :cond_47
    const-string v2, "lock.lockByAppId"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_26
.end method

.method public final b()Ljava/lang/Integer;
    .registers 5

    .prologue
    .line 86
    iget-object v0, p0, Law;->b:Landroid/content/SharedPreferences;

    const-string v1, "lock.lockByAppId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 87
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Law;->b:Landroid/content/SharedPreferences;

    const-string v2, "lock.lockByAppId"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 89
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final c()Ldg;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Law;->b:Landroid/content/SharedPreferences;

    const-string v1, "lock.lockByFeature"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 95
    const-class v0, Ldg;

    iget-object v1, p0, Law;->b:Landroid/content/SharedPreferences;

    const-string v2, "lock.lockByFeature"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldg;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldg;

    move-object v0, p0

    .line 97
    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, v3

    goto :goto_1c
.end method

.method public final d()Z
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Law;->b:Landroid/content/SharedPreferences;

    const-string v1, "lock.enableOverride"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Law;->b:Landroid/content/SharedPreferences;

    const-string v1, "lock.smsIncomingWhitelist"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    iget-object v1, p0, Law;->b:Landroid/content/SharedPreferences;

    const-string v2, "lock.activityList"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    if-nez v1, :cond_12

    .line 136
    :cond_11
    :goto_11
    return-object v0

    .line 120
    :cond_12
    :try_start_12
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v1, Lhn;

    invoke-direct {v1}, Lhn;-><init>()V

    .line 122
    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_20} :catch_37

    move-result v4

    if-ge v3, v4, :cond_11

    .line 124
    :try_start_23
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lbm;

    invoke-virtual {v1, v4, v5}, Lhn;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_34} :catch_39
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_34} :catch_37

    .line 122
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 132
    :catch_37
    move-exception v1

    goto :goto_11

    :catch_39
    move-exception v4

    goto :goto_34
.end method
