.class public final Lz;
.super Ljava/lang/Object;
.source "a"


# static fields
.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lz;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lz;->a(Ljava/lang/String;)V

    .line 31
    :cond_8
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ATTEMPTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Exception;)J
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const-string v5, "FAILURES"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 86
    invoke-direct/range {p0 .. p0}, Lz;->c()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 87
    const-string v8, "NETWORKING_MAX_RETRIES"

    invoke-static {v8}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v8

    .line 89
    cmp-long v8, v6, v8

    if-lez v8, :cond_39

    .line 90
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lz;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lz;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    const-wide/16 v5, -0x1

    .line 174
    :goto_38
    return-wide v5

    .line 98
    :cond_39
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lz;->c()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x1

    add-long/2addr v9, v6

    invoke-interface {v5, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lz;->b()Ljava/lang/String;

    move-result-object v8

    move-object v0, v5

    move-object v1, v8

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORKING_RETRY_TIME_MILLIS."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lz;->b:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "NETWORKING_RETRY_TIME_MILLIS"

    invoke-static {v8}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Ln;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 111
    move-object/from16 v0, p4

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    move v5, v0

    if-eqz v5, :cond_f6

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORKING_SOCKET_TIMEOUT_RETRY_TIME_MILLIS."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lz;->b:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "NETWORKING_SOCKET_TIMEOUT_RETRY_TIME_MILLIS"

    invoke-static {v8}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Ln;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 117
    const-wide/16 v10, 0x1

    add-long v5, v6, v10

    move-wide v7, v8

    .line 133
    :goto_a7
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_157

    .line 136
    neg-long v5, v7

    .line 139
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    rem-long/2addr v7, v5

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 145
    rem-long v11, v9, v5

    sub-long v11, v9, v11

    .line 147
    add-long/2addr v7, v11

    .line 150
    cmp-long v11, v7, v9

    if-gez v11, :cond_179

    add-long/2addr v5, v7

    .line 152
    :goto_d9
    sub-long/2addr v5, v9

    .line 172
    :goto_da
    const-string v7, "alarm"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const/4 v7, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v5

    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v8

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_38

    .line 118
    :cond_f6
    move-object/from16 v0, p4

    instance-of v0, v0, Ldl;

    move v5, v0

    if-eqz v5, :cond_17c

    .line 119
    check-cast p4, Ldl;

    move-object/from16 v0, p4

    iget v0, v0, Ldl;->a:I

    move v5, v0

    .line 120
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NETWORKING_HTTP_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_RETRY_TIME_MILLIS."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lz;->b:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-static {v10}, Ln;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_184

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NETWORKING_HTTP_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_RETRY_TIME_MILLIS"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    :goto_145
    invoke-static {v5}, Ln;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17c

    .line 123
    invoke-static {v5}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v14, v6

    move-wide v5, v14

    move-wide/from16 v16, v8

    move-wide/from16 v7, v16

    .line 125
    goto/16 :goto_a7

    .line 159
    :cond_157
    const/4 v9, 0x1

    long-to-int v10, v5

    shl-int/2addr v9, v10

    int-to-long v9, v9

    mul-long/2addr v9, v7

    .line 161
    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-nez v11, :cond_16f

    .line 162
    const-wide/16 v5, 0x0

    .line 167
    :goto_164
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    sub-long/2addr v9, v5

    long-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-long v7, v7

    add-long/2addr v5, v7

    goto/16 :goto_da

    .line 164
    :cond_16f
    const/4 v11, 0x1

    const-wide/16 v12, 0x1

    sub-long/2addr v5, v12

    long-to-int v5, v5

    shl-int v5, v11, v5

    int-to-long v5, v5

    mul-long/2addr v5, v7

    goto :goto_164

    :cond_179
    move-wide v5, v7

    goto/16 :goto_d9

    :cond_17c
    move-wide v14, v6

    move-wide v5, v14

    move-wide/from16 v16, v8

    move-wide/from16 v7, v16

    goto/16 :goto_a7

    :cond_184
    move-object v5, v10

    goto :goto_145
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 186
    const-string v0, "FAILURES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    invoke-direct {p0}, Lz;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 41
    iget-object v0, p0, Lz;->a:Ljava/lang/String;

    if-nez v0, :cond_3b

    move v0, v3

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FailureHandler.setName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") called when name is already set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lz;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj;->a(ZLjava/lang/String;)V

    .line 43
    iput-object p1, p0, Lz;->a:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lz;->a:Ljava/lang/String;

    const-string v1, "."

    invoke-static {v0, v1}, Ls;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eqz v2, :cond_38

    array-length v2, v1

    if-ne v2, v3, :cond_3d

    :cond_38
    :goto_38
    iput-object v0, p0, Lz;->b:Ljava/lang/String;

    .line 48
    return-void

    .line 41
    :cond_3b
    const/4 v0, 0x0

    goto :goto_6

    .line 46
    :cond_3d
    array-length v0, v1

    sub-int/2addr v0, v3

    aget-object v0, v1, v0

    goto :goto_38
.end method

.method public final b(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 191
    const-string v0, "FAILURES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    return-void
.end method
