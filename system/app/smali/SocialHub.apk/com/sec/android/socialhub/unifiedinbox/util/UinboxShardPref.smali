.class public Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;
.super Ljava/lang/Object;
.source "UinboxShardPref.java"


# static fields
.field public static final PREF_ACCOUNT:[Ljava/lang/String;

.field public static final PREF_ARRAY:[Ljava/lang/String;

.field static prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->prefs:Landroid/content/SharedPreferences;

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "version"

    aput-object v1, v0, v3

    const-string v1, "showFirstLaunch"

    aput-object v1, v0, v4

    const-string v1, "lastUpdateMessage"

    aput-object v1, v0, v5

    const-string v1, "lastUpdateFeed"

    aput-object v1, v0, v6

    const-string v1, "lastPage"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lastSp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lastListViewPos"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lastListViewTop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lastUpdateGroup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ARRAY:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "account_id"

    aput-object v1, v0, v3

    const-string v1, "email_addr"

    aput-object v1, v0, v4

    const-string v1, "account"

    aput-object v1, v0, v5

    const-string v1, "app"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "real_email_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "im_presense"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getIntEx(Landroid/content/Context;II)I
    .registers 9
    .parameter "ctx"
    .parameter "what"
    .parameter "return_value"

    .prologue
    .line 237
    const-class v2, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->getPrefernce(Landroid/content/Context;)V

    .line 239
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->prefs:Landroid/content/SharedPreferences;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_40

    if-nez v1, :cond_d

    .line 240
    const/4 v0, -0x1

    .line 246
    :goto_b
    monitor-exit v2

    return v0

    .line 242
    :cond_d
    :try_start_d
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->prefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, value:I
    const-string v1, "UinboxShardPref"

    const-string v3, "getInt()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ARRAY:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] value is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_40

    goto :goto_b

    .line 237
    .end local v0           #value:I
    :catchall_40
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getPrefernce(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 65
    const-class v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_10

    .line 66
    const-string v0, "com.sec.android.socialhub"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->prefs:Landroid/content/SharedPreferences;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 67
    :cond_10
    monitor-exit v1

    return-void

    .line 65
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getShowFirstLaunchValue(Landroid/content/Context;)I
    .registers 6
    .parameter "ctx"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->getPrefernce(Landroid/content/Context;)V

    .line 122
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->prefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_9

    .line 123
    const/4 v0, 0x0

    .line 129
    :goto_8
    return v0

    .line 125
    :cond_9
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ARRAY:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, value:I
    const-string v1, "UinboxShardPref"

    const-string v2, "getShowFirstLaunchValue()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static declared-synchronized setInt(Landroid/content/Context;II)Z
    .registers 9
    .parameter "ctx"
    .parameter "what"
    .parameter "value"

    .prologue
    .line 251
    const-class v2, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->getPrefernce(Landroid/content/Context;)V

    .line 253
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->prefs:Landroid/content/SharedPreferences;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_59

    if-nez v1, :cond_d

    .line 254
    const/4 v1, 0x0

    .line 263
    :goto_b
    monitor-exit v2

    return v1

    .line 256
    :cond_d
    :try_start_d
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    const-string v1, "UinboxShardPref"

    const-string v3, "setValue()"

    const-string v4, "============================================================"

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "UinboxShardPref"

    const-string v3, "setValue()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ARRAY:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] value is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "UinboxShardPref"

    const-string v3, "setValue()"

    const-string v4, "============================================================"

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_d .. :try_end_57} :catchall_59

    .line 263
    const/4 v1, 0x1

    goto :goto_b

    .line 251
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_59
    move-exception v1

    monitor-exit v2

    throw v1
.end method
