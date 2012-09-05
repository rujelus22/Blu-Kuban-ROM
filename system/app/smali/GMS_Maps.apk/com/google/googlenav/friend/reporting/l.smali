.class public Lcom/google/googlenav/friend/reporting/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/google/googlenav/friend/reporting/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/friend/reporting/l;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/googlenav/friend/reporting/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/googlenav/friend/reporting/l;->c:Lcom/google/googlenav/friend/reporting/a;

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 12

    const-wide v9, 0x416312d000000000L

    const/4 v1, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    const-string v2, "lastPosition"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    move-object v0, v1

    :goto_12
    return-object v0

    :cond_13
    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/l;->c:Lcom/google/googlenav/friend/reporting/a;

    invoke-static {v0}, Lar/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/friend/reporting/a;->a([B)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    const-string v2, "lastAccuracy"

    const/high16 v4, -0x4080

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    const-string v2, "lastTimestamp"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    new-instance v2, Landroid/location/Location;

    const-string v0, "LocationReportingPreferences"

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v7, v9

    invoke-virtual {v2, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v7, v9

    invoke-virtual {v2, v7, v8}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v2, v4}, Landroid/location/Location;->setAccuracy(F)V

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setTime(J)V
    :try_end_58
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_58} :catch_5a
    .catch Lar/c; {:try_start_6 .. :try_end_58} :catch_5d

    move-object v0, v2

    goto :goto_12

    :catch_5a
    move-exception v0

    move-object v0, v1

    goto :goto_12

    :catch_5d
    move-exception v0

    move-object v0, v1

    goto :goto_12
.end method

.method public a(J)V
    .registers 7

    new-instance v0, Lcom/google/googlenav/friend/reporting/m;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/reporting/m;-><init>(Lcom/google/googlenav/friend/reporting/l;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Z)V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locationHistoryEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Landroid/location/Location;)Z
    .registers 7

    const-wide v3, 0x416312d000000000L

    :try_start_5
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-eqz v0, :cond_b

    :cond_b
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/l;->c:Lcom/google/googlenav/friend/reporting/a;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/friend/reporting/a;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lar/b;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastPosition"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lastAccuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lastTimestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_41
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_41} :catch_43

    move-result v0

    :goto_42
    return v0

    :catch_43
    move-exception v0

    const/4 v0, 0x0

    goto :goto_42
.end method

.method public b(Z)Ljava/util/List;
    .registers 8

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_6
    const-string v0, ""

    sget-object v1, Lcom/google/googlenav/friend/reporting/l;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    const-string v2, "requestingGaiaIds"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_25

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "requestingGaiaIds"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_4a

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    array-length v3, v1

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v3, :cond_4d

    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    return-object v2
.end method

.method b(J)V
    .registers 9

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_6
    sget-object v1, Lcom/google/googlenav/friend/reporting/l;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    const-string v2, "requestingGaiaIds"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

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

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v1

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public b()Z
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    const-string v1, "locationHistoryEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()J
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    const-string v1, "locationReportingIntentTimstamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_20

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-eqz v0, :cond_10

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locationReportingIntentTimstamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
