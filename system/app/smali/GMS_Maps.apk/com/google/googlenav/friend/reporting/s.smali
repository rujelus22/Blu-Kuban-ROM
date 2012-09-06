.class public Lcom/google/googlenav/friend/reporting/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/google/googlenav/friend/reporting/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/friend/reporting/s;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/googlenav/friend/reporting/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    .line 82
    iput-object p2, p0, Lcom/google/googlenav/friend/reporting/s;->c:Lcom/google/googlenav/friend/reporting/f;

    .line 83
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;)Lcom/google/googlenav/friend/reporting/s;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 72
    const/4 v0, 0x4

    .line 74
    :cond_8
    new-instance v1, Lcom/google/googlenav/friend/reporting/s;

    const-string v2, "LOCATION_REPORTING"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/googlenav/friend/reporting/s;-><init>(Landroid/content/SharedPreferences;Lcom/google/googlenav/friend/reporting/f;)V

    return-object v1
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 12

    .prologue
    const-wide v9, 0x416312d000000000L

    const/4 v1, 0x0

    .line 93
    :try_start_6
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    const-string v2, "lastPosition"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-nez v0, :cond_13

    move-object v0, v1

    .line 118
    :goto_12
    return-object v0

    .line 98
    :cond_13
    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/s;->c:Lcom/google/googlenav/friend/reporting/f;

    invoke-static {v0}, Lcom/google/googlenav/common/util/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/friend/reporting/f;->a([B)Landroid/util/Pair;

    move-result-object v3

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    const-string v2, "lastAccuracy"

    const/high16 v4, -0x4080

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    const-string v2, "lastTimestamp"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 103
    new-instance v2, Landroid/location/Location;

    const-string v0, "LocationReportingPreferences"

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v7, v9

    invoke-virtual {v2, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    .line 105
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v7, v9

    invoke-virtual {v2, v7, v8}, Landroid/location/Location;->setLongitude(D)V

    .line 106
    invoke-virtual {v2, v4}, Landroid/location/Location;->setAccuracy(F)V

    .line 107
    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setTime(J)V
    :try_end_58
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_58} :catch_5a
    .catch Lcom/google/googlenav/common/util/d; {:try_start_6 .. :try_end_58} :catch_5d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_58} :catch_60

    move-object v0, v2

    .line 109
    goto :goto_12

    .line 110
    :catch_5a
    move-exception v0

    move-object v0, v1

    .line 112
    goto :goto_12

    .line 113
    :catch_5d
    move-exception v0

    move-object v0, v1

    .line 115
    goto :goto_12

    .line 116
    :catch_60
    move-exception v0

    move-object v0, v1

    .line 118
    goto :goto_12
.end method

.method public a(J)V
    .registers 7
    .parameter

    .prologue
    .line 180
    new-instance v0, Lcom/google/googlenav/friend/reporting/t;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/reporting/t;-><init>(Lcom/google/googlenav/friend/reporting/s;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 135
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    const-string v1, "locationHistoryEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public a(Landroid/location/Location;)Z
    .registers 7
    .parameter

    .prologue
    const-wide v3, 0x416312d000000000L

    .line 154
    :try_start_5
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 158
    :cond_b
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    .line 159
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 160
    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/s;->c:Lcom/google/googlenav/friend/reporting/f;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/friend/reporting/f;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/util/c;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 163
    const-string v2, "lastPosition"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v0, "lastAccuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v0, "lastTimestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_41
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_41} :catch_43

    move-result v0

    .line 170
    :goto_42
    return v0

    .line 168
    :catch_43
    move-exception v0

    .line 170
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public b(Z)Ljava/util/List;
    .registers 8
    .parameter

    .prologue
    .line 217
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 221
    :cond_6
    const-string v0, ""

    .line 222
    sget-object v1, Lcom/google/googlenav/friend/reporting/s;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_b
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    const-string v2, "requestingGaiaIds"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    if-eqz p1, :cond_25

    .line 228
    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 229
    const-string v3, "requestingGaiaIds"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_4a

    .line 234
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 236
    array-length v3, v1

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v3, :cond_4d

    aget-object v4, v1, v0

    .line 237
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 238
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 232
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0

    .line 241
    :cond_4d
    return-object v2
.end method

.method b(J)V
    .registers 9
    .parameter

    .prologue
    .line 193
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 197
    :cond_6
    sget-object v1, Lcom/google/googlenav/friend/reporting/s;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_9
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    const-string v2, "requestingGaiaIds"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 201
    const-string v3, "requestingGaiaIds"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public b()Z
    .registers 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    const-string v1, "locationHistoryEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()J
    .registers 5

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    const-string v1, "locationReportingIntentTimstamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)Z
    .registers 5
    .parameter

    .prologue
    .line 248
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_20

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 250
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 253
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    const-string v1, "locationReportingIntentTimstamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 248
    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/s;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
